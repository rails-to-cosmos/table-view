#!/usr/bin/env node
/*
 * perf-driver.js — headless benchmark and smoke test for table-view.js.
 *
 *   node web/perf-driver.js [renderer.js] [rows]     (make web-perf)
 *
 * Mounts a synthetic glance-shaped view (6 columns, Org links in the headline
 * cells) into a DOM shim small enough to live in this file, then times mount,
 * filter keystrokes, upsert, delete and a scroll re-window.
 *
 * The shim never lays out or paints and its parser is not a browser's, so the
 * times only rank the operations against each other. The honest cross-version
 * numbers are the two counters beside them — bytes of HTML written and event
 * listeners attached per operation, which a browser has to parse and bind
 * either way.
 *
 * The smoke checks after the table are the point of keeping this in the repo:
 * clicks, links, sorting, filtering, streaming ops and `select(id)' all run
 * here, and a failure exits non-zero.
 */
"use strict";

const path = require("path");

// ---- metrics ---------------------------------------------------------------

const now = () => Number(process.hrtime.bigint()) / 1e6;
let bytes = 0, listeners = 0, work = 0;

// Time whatever the renderer schedules for itself, so `work' is renderer CPU
// and nothing else.  The driver's own waits use the real timers.
const realTimeout = setTimeout, realClear = clearTimeout;
const timed = (fn) => () => { const t = now(); try { fn(); } finally { work += now() - t; } };
const sleep = (ms) => new Promise((done) => realTimeout(done, ms));
const sync = (fn) => { const t = now(); try { return fn(); } finally { work += now() - t; } };
global.setTimeout = (fn, ms) => realTimeout(timed(fn), ms);
global.clearTimeout = (id) => realClear(id);
global.requestAnimationFrame = (fn) => realTimeout(timed(fn), 0);

// ---- DOM shim --------------------------------------------------------------

const VOID = new Set(["input", "br", "img", "col", "hr", "meta", "link"]);
const ENTITY = { amp: "&", lt: "<", gt: ">", quot: '"', "#39": "'" };
const decode = (s) =>
  s.indexOf("&") === -1 ? s : s.replace(/&(amp|lt|gt|quot|#39);/g, (_, e) => ENTITY[e]);
const dash = (k) => String(k).replace(/[A-Z]/g, (c) => "-" + c.toLowerCase());

/** One selector step: `tag.class[attr=value]'. */
function step(s) {
  const attrs = [];
  s = s.replace(/\[([\w-]+)(?:=["']?([^\]"']*)["']?)?\]/g, (_, n, v) => (attrs.push([n, v]), ""));
  const cls = [];
  s = s.replace(/\.([\w-]+)/g, (_, c) => (cls.push(c), ""));
  return { tag: s ? s.toUpperCase() : null, cls, attrs };
}
const parseSel = (sel) => sel.trim().split(/\s+/).map(step);

function fits(el, st) {
  if (st.tag && el.tagName !== st.tag) return false;
  for (const c of st.cls) if (!el.classes.has(c)) return false;
  for (const [n, v] of st.attrs) {
    if (!el.attrs.has(n)) return false;
    if (v !== undefined && el.attrs.get(n) !== v) return false;
  }
  return true;
}

/** Match EL against STEPS (descendant combinators only). */
function fitsAll(el, steps) {
  let i = steps.length - 1;
  if (!fits(el, steps[i--])) return false;
  let node = el.parentNode;
  while (i >= 0) {
    if (!node) return false;
    if (fits(node, steps[i])) i--;
    node = node.parentNode;
  }
  return true;
}

class Ev {
  constructor(type, init) {
    this.type = type;
    this.detail = init && init.detail;
    this.key = init && init.key;
    this.target = null;
    this.defaultPrevented = false;
    this.propagationStopped = false;
  }
  preventDefault() { this.defaultPrevented = true; }
  stopPropagation() { this.propagationStopped = true; }
}

class El {
  constructor(tag) {
    this.tagName = String(tag).toUpperCase();
    this.parentNode = null;
    this.childNodes = [];
    this.attrs = new Map();
    this.classes = new Set();
    this.style = {};
    this.text = "";
    this.on = new Map();
    this.value = "";
    this.disabled = false;
    this.scrollTop = 0;
    this.clientHeight = 0;
  }
  get children() { return this.childNodes; }
  get className() { return this.attrs.get("class") || ""; }
  set className(v) {
    this.attrs.set("class", v);
    this.classes = new Set(String(v).split(/\s+/).filter(Boolean));
  }
  get classList() {
    const el = this;
    return {
      contains: (c) => el.classes.has(c),
      add: (c) => { el.classes.add(c); el.attrs.set("class", [...el.classes].join(" ")); },
      remove: (c) => { el.classes.delete(c); el.attrs.set("class", [...el.classes].join(" ")); },
      toggle: (c, force) => (force ? el.classList.add(c) : el.classList.remove(c)),
    };
  }
  get dataset() {
    if (!this._ds) this._ds = new Proxy(this, {
      get: (t, k) => t.attrs.get("data-" + dash(k)),
      set: (t, k, v) => (t.attrs.set("data-" + dash(k), String(v)), true),
      has: (t, k) => t.attrs.has("data-" + dash(k)),
    });
    return this._ds;
  }
  setAttribute(n, v) { this.attrs.set(n, String(v)); if (n === "class") this.className = v; }
  getAttribute(n) { return this.attrs.has(n) ? this.attrs.get(n) : null; }
  appendChild(c) { c.parentNode = this; this.childNodes.push(c); return c; }
  removeChild(c) {
    const i = this.childNodes.indexOf(c);
    if (i !== -1) { this.childNodes.splice(i, 1); c.parentNode = null; }
  }
  remove() { if (this.parentNode) this.parentNode.removeChild(this); }
  get textContent() { return this.text + this.childNodes.map((c) => c.textContent).join(""); }
  set textContent(t) { this.text = String(t); this.childNodes.length = 0; }
  get innerHTML() { return ""; }
  set innerHTML(html) {
    bytes += String(html).length;
    this.childNodes.length = 0;
    this.text = "";
    parseInto(String(html), this);
  }
  addEventListener(type, fn) {
    listeners++;
    if (!this.on.has(type)) this.on.set(type, []);
    this.on.get(type).push(fn);
  }
  dispatchEvent(ev) {
    if (!ev.target) ev.target = this;
    for (let n = this; n; n = n.parentNode) {
      for (const fn of (n.on.get(ev.type) || []).slice()) fn.call(n, ev);
      if (ev.propagationStopped) break;
    }
    return !ev.defaultPrevented;
  }
  click() { this.dispatchEvent(new Ev("click")); }
  focus() { this.focused = true; }
  blur() { this.focused = false; this.blurs = (this.blurs || 0) + 1; }
  select() {} scrollIntoView() {}
  getBoundingClientRect() { return { height: this.tagName === "THEAD" ? 30 : 30, width: 0 }; }
  matches(sel) { return fitsAll(this, parseSel(sel)); }
  closest(sel) {
    const steps = parseSel(sel);
    for (let n = this; n; n = n.parentNode) if (fitsAll(n, steps)) return n;
    return null;
  }
  querySelectorAll(sel) {
    const steps = parseSel(sel), out = [];
    const walk = (n) => {
      for (const c of n.childNodes) { if (fitsAll(c, steps)) out.push(c); walk(c); }
    };
    walk(this);
    return out;
  }
  querySelector(sel) { return this.querySelectorAll(sel)[0] || null; }
}

const TAG = /<(\/?)([a-zA-Z][\w-]*)((?:\s+[^\s"'>\/=]+(?:\s*=\s*(?:"[^"]*"|'[^']*'|[^\s"'>]+))?)*)\s*(\/?)>/g;
const ATTR = /([^\s"'>\/=]+)(?:\s*=\s*(?:"([^"]*)"|'([^']*)'|([^\s"'>]+)))?/g;

/** Parse HTML into PARENT (enough of a parser for what this renderer writes). */
function parseInto(html, parent) {
  const stack = [parent];
  let last = 0, m;
  TAG.lastIndex = 0;
  while ((m = TAG.exec(html))) {
    const text = html.slice(last, m.index);
    if (text.trim()) stack[stack.length - 1].text += decode(text);
    last = TAG.lastIndex;
    const tag = m[2].toLowerCase();
    if (m[1]) { if (stack.length > 1) stack.pop(); continue; }
    const el = new El(tag);
    let a;
    ATTR.lastIndex = 0;
    while ((a = ATTR.exec(m[3]))) {
      const name = a[1], val = decode(a[2] ?? a[3] ?? a[4] ?? "");
      if (name === "class") el.className = val;
      else el.attrs.set(name, val);
      if (name === "value") el.value = val;
      if (name === "disabled") el.disabled = true;
    }
    stack[stack.length - 1].appendChild(el);
    if (!VOID.has(tag) && !m[4]) stack.push(el);
  }
  const tail = html.slice(last);
  if (tail.trim()) stack[stack.length - 1].text += decode(tail);
}

global.CustomEvent = Ev;
global.window = { open() {} };
global.document = {
  head: new El("head"),
  createElement: (tag) => new El(tag),
};

// ---- the view --------------------------------------------------------------

const file = process.argv[2] || path.join(__dirname, "table-view.js");
const COUNT = Number(process.argv[3] || 13344);
const TableView = require(path.resolve(file));

const STATES = ["NEXT", "TODO", "WAITING", "CANCELLED", "DONE"];
const PRI = ["A", "B", "C"];
const WORDS = ["ship", "the", "system", "review", "index", "rewrite", "org", "cache",
               "parser", "daemon", "window", "headline", "sync", "queue", "digest"];
const TAGS = [":web:glance:", ":emacs:", ":ops:system:", ":read:", ":web:", ":glance:daemon:"];

const columns = [
  { key: "state", header: "State", type: "badge", sortable: true,
    badges: STATES.map((v, i) => ({ value: v, color: ["#e0af68", "#ff9e64", "#f7768e", "#9ece6a", "#73daca"][i] })) },
  { key: "priority", header: "Pri", type: "text", sortable: true, values: PRI },
  { key: "title", header: "Headline", type: "text" },
  { key: "tags", header: "Tags", type: "text" },
  { key: "scheduled", header: "Scheduled", type: "text", sortable: true },
  { key: "deadline", header: "Deadline", type: "text", sortable: true },
];

/** A row shaped like a glance headline: an Org link in the title cell. */
function makeRow(i) {
  const words = [0, 1, 2, 3].map((k) => WORDS[(i * 7 + k * 3) % WORDS.length]).join(" ");
  const day = 1 + (i % 28), month = 1 + (i % 12);
  const pad = (n) => String(n).padStart(2, "0");
  return { id: "h-" + i, cells: {
    state: STATES[i % STATES.length],
    priority: PRI[i % PRI.length],
    title: `[[org-glance:h-${i}][${words} ${i}]]`,
    tags: TAGS[i % TAGS.length],
    scheduled: `2026-${pad(month)}-${pad(day)} ${pad(i % 24)}:00`,
    deadline: i % 4 ? "" : `2026-${pad(month)}-${pad(day)}`,
  } };
}

const view = (n) => ({
  title: "Inbox — glance",
  columns,
  actions: [{ key: "RET", command: "materialize", label: "Materialize" },
            { key: "t", command: "cycle", label: "Cycle TODO" }],
  sort: { column: "scheduled", ascending: true },
  rows: Array.from({ length: n }, (_, i) => makeRow(i)),
});

// ---- benchmark -------------------------------------------------------------

const results = [];
async function bench(name, run, settle = 200) {
  bytes = 0; listeners = 0; work = 0;
  const t0 = now();
  await run();
  await sleep(settle);
  results.push({ name, work, wall: now() - t0, bytes, listeners });
}

const app = new El("div");
let tv = null;
/** The filter box under EL (a fresh element every render, before the fix). */
const filterOf = (el) => el.querySelector(".tv-filter");
const type = (text) => {
  const box = filterOf(app);
  box.value = text;
  box.dispatchEvent(new Ev("input"));
};

async function measure() {
  const v = view(COUNT);
  await bench(`mount ${COUNT} rows`, () => { tv = sync(() => TableView.mount(app, v)); });
  app.querySelector(".tv-scroll").clientHeight = 600;   // 20 rows on screen

  await bench("filter: 1 keystroke", () => sync(() => type("s")));
  await bench("filter: clear", () => sync(() => type("")));

  await bench("filter: 5 keystrokes @80ms", async () => {
    for (const q of ["s", "sy", "sys", "syst", "syste"]) {
      sync(() => type(q));
      await sleep(80);
    }
  });
  await bench("filter: clear", () => sync(() => type("")));

  const hot = makeRow(7);
  hot.cells.state = "DONE";
  await bench("upsertRow (existing)", () => sync(() => tv.upsertRow(hot)));
  await bench("deleteRow", () => sync(() => tv.deleteRow("h-11")));

  await bench("scroll re-window", () => sync(() => {
    const sc = app.querySelector(".tv-scroll");
    sc.scrollTop = 4000;
    sc.dispatchEvent(new Ev("scroll"));
  }));

  const w = [26, 9, 9, 12, 11];
  const line = (c) => c.map((s, i) => String(s).padEnd(w[i])).join(" ");
  console.log(line(["operation", "work ms", "wall ms", "html bytes", "listeners"]));
  console.log(w.map((n) => "-".repeat(n)).join(" "));
  for (const r of results)
    console.log(line([r.name, r.work.toFixed(1), r.wall.toFixed(1),
                      r.bytes.toLocaleString("en-US"), r.listeners.toLocaleString("en-US")]));
}

// ---- smoke -----------------------------------------------------------------

let fails = 0;
const check = (what, got, want) => {
  const ok = JSON.stringify(got) === JSON.stringify(want);
  if (!ok) fails++;
  console.log((ok ? "ok  " : "FAIL") + "  " + what + "  → " + JSON.stringify(got)
              + (ok ? "" : "  want " + JSON.stringify(want)));
};

/**
 * SCHEMA.md's filter micro-syntax: the tokenizer, the local semantics it
 * drives, and the suggestion list that helps type it.
 */
async function filterQuery() {
  console.log("\n== the filter query");
  const KEYS = columns.map((c) => c.key);
  const parse = (q) => TableView.parseQuery(q, KEYS);
  /** A token as `[negated, key, value, quoted]' — what the grammar decided. */
  const shape = (q) => parse(q).map((t) => [t.negated, t.key, t.value, t.quoted]);

  check("key:value is a predicate when the key names a column",
        shape("state:DONE"), [[false, "state", "DONE", false]]);
  check("= is an alias for :", shape("state=DONE"), [[false, "state", "DONE", false]]);
  check("an unknown key is free text", shape("nope:x"), [[false, null, "nope:x", false]]);
  // The org-text traps: a predicate must never happen by accident.
  check("org tag text stays free text", shape(":work:"), [[false, null, ":work:", false]]);
  check("org verbatim text stays free text", shape("=code="), [[false, null, "=code=", false]]);
  check("a quoted token is free text, spaces and all",
        shape('"two words"'), [[false, null, "two words", true]]);
  check("a quoted token never becomes a predicate",
        shape('"state:DONE"'), [[false, null, "state:DONE", true]]);
  check("- negates a predicate", shape("-state:DONE"), [[true, "state", "DONE", false]]);
  check("- negates quoted free text", shape('-"two words"'), [[true, null, "two words", true]]);
  check("& separates like whitespace",
        shape("a&b"), [[false, null, "a", false], [false, null, "b", false]]);
  check("a predicate value may be quoted",
        shape('state:"a b"'), [[false, "state", "a b", false]]);
  check("tokens collapse runs of separators", shape("  a   b  ").length, 2);
  check("an empty query is no tokens", shape(""), []);
  const off = parse("ab state:DONE")[1];
  check("offsets cover the whole token, separator and all",
        [off.start, off.end, "ab state:DONE".slice(off.start, off.end)],
        [3, 13, "state:DONE"]);

  // Local semantics, by column type.
  const box = new El("div");
  const q = TableView.mount(box, view(40));
  const shown = (query) => {
    const b = filterOf(box);
    // An empty box offers nothing, so this shuts any list a previous check
    // left open — an open list would take the Enter below for itself.
    b.value = "";
    b.dispatchEvent(new Ev("input"));
    b.value = query;
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));    // applies at once
    return q.getVisible().length;
  };
  const all = shown("");
  check("the fixture is 40 rows", all, 40);
  check("badge predicates match a value exactly", shown("state:DONE"), 8);
  check("and only exactly — no substring", shown("state:DON"), 0);
  check("text predicates are substrings", shown("title:system") > 0, true);
  check("date cells match by prefix", shown("scheduled:2026-03"), 4);
  check("and not by substring", shown("scheduled:03"), 0);
  check("none matches an empty cell", shown("deadline:none"), 30);
  // The half-typed state the suggestion list serves: it must not narrow, and
  // must not narrow differently per column type.
  check("a key with nothing typed after it narrows nothing",
        [shown("state:"), shown("title:"), shown("deadline:")], [40, 40, 40]);
  check("negation excludes", shown("-state:DONE"), 32);
  check("tokens AND together", shown("state:DONE tags:web"), 3);
  // SCHEMA: predicates sharing one key OR, distinct keys AND, negations AND.
  const done = shown("state:DONE"), next = shown("state:NEXT");
  check("predicates sharing a key OR together", shown("state:DONE state:NEXT"), done + next);
  check("three of them too", shown("state:DONE state:NEXT state:TODO"), done + next + 8);
  check("distinct keys still AND across the OR groups",
        shown("state:DONE state:NEXT tags:web"), 6);
  check("free text ANDs with an OR group",
        shown("state:DONE state:NEXT system") < done + next, true);
  check("a negation ANDs rather than joining its key's group",
        shown("-state:DONE state:NEXT"), next);
  check("and a negated key is not an OR group of its own",
        shown("-state:DONE -state:NEXT"), 40 - done - next);
  check("free text still searches every cell", shown("system") > 0, true);
  check("free text and a predicate AND too",
        shown("system state:DONE") <= shown("state:DONE"), true);
  check("an unknown key filters as the free text it is", shown("nope:x"), 0);
  shown("");

  // The suggestion list.
  const items = () => Array.from(box.querySelectorAll(".tv-ac-label")).map((e) => e.text);
  const counts = () => Array.from(box.querySelectorAll(".tv-ac-n")).map((e) => Number(e.text));
  const type = (query) => {
    const b = filterOf(box);
    b.value = query;
    b.dispatchEvent(new Ev("input"));
    return items();
  };
  check("a bare word suggests the column keys it opens", type("sta"), ["state:"]);
  check("the prefix narrows them", type("s"), ["state:", "scheduled:"]);
  check("a key with no match offers nothing", type("zzz"), []);
  check("an empty box offers nothing", type(""), []);
  check("a quoted token offers nothing", type('"sta'), []);
  check("free text carrying punctuation offers nothing", type(":work"), []);
  check("key: offers the badge palette", type("state:"), STATES);
  check("and the prefix narrows it", type("state:d"), ["DONE"]);
  check("a declared values list wins", type("priority:"), PRI);
  check("a column with neither is the distinct cell values",
        type("tags:").sort(), TAGS.slice().sort());
  check("the list is capped", type("title:").length <= 12, true);

  // Value counts: how many rows stand behind each suggestion.
  type("state:");
  check("each value carries its row count", counts(), [8, 8, 8, 8, 8]);
  check("and the count is what the predicate actually matches",
        counts()[items().indexOf("DONE")], shown("state:DONE"));
  type("sta");
  check("the key stage carries no counts", counts(), []);
  type("deadline:");
  check("counts are over every row, not the filtered ones",
        counts().reduce((a, b) => a + b, 0), 10);
  // The cache is thrown away with the text cache, so an edit is reflected.
  q.upsertRow({ id: "h-0", cells: { state: "DONE", priority: "A", title: "moved",
                                    tags: ":web:", scheduled: "2026-01-01 00:00",
                                    deadline: "" } });
  type("state:");
  check("an upsert invalidates the counts", counts(), [7, 8, 8, 8, 9]);
  q.upsertRow(makeRow(0));
  type("state:");
  check("and putting it back restores them", counts(), [8, 8, 8, 8, 8]);

  // Accept mechanics.
  const b = filterOf(box);
  type("sta");
  const held = b.blurs || 0;
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("Enter on a key suggestion completes to key:", b.value, "state:");
  check("and stays in the box for the value", (b.blurs || 0) - held, 0);
  check("and the list moves to the value stage", items(), STATES);
  b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("Tab accepts the highlighted value, with a trailing space",
        b.value, "state:TODO ");
  check("and the list closes once the token is finished", items(), []);

  type("state:DONE tit");
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("accepting replaces the caret's token and keeps the rest",
        b.value, "state:DONE title:");
  type("-sta");
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("a negated token keeps its -", b.value, "-state:");

  // Precedence: the list gets Enter and Esc first.
  type("sta");
  b.dispatchEvent(new Ev("keydown", { key: "Escape" }));
  check("the first Escape closes the list", items(), []);
  check("and leaves the text alone", b.value, "sta");
  b.dispatchEvent(new Ev("keydown", { key: "Escape" }));
  check("the second Escape clears the box", b.value, "");

  type("sta");
  const blurs = b.blurs || 0;
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("Enter with the list open accepts rather than handing over focus",
        [(b.blurs || 0) - blurs, b.value], [0, "state:"]);
  b.dispatchEvent(new Ev("keydown", { key: "Escape" }));
  b.dispatchEvent(new Ev("keydown", { key: "Escape" }));
  b.value = "system";
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("Enter with the list closed still hands the table over",
        [(b.blurs || 0) - blurs > 0,
         !!box.querySelector(".tv-table tbody tr.tv-sel")], [true, true]);
}

async function smoke() {
  const seen = [];
  const box = new El("div");
  const t = TableView.mount(box, view(40), {
    onAction: (command, id) => seen.push(command + " " + id),
    onLink: (target) => seen.push("link " + target),
  });
  const scroller = box.querySelector(".tv-scroll");
  scroller.clientHeight = 600;
  const rows = () => box.querySelectorAll(".tv-table tbody tr[data-id]");
  const hint = () => box.querySelector(".tv-hint").textContent;
  const settle = () => sleep(200);

  console.log("\n== smoke");
  check("rows render", rows().length, 40);
  check("hint counts and sorts", hint(), "40 rows · sort scheduled asc");
  check("links become anchors", box.querySelectorAll(".tv-link").length, 40);

  const before = filterOf(box);
  before.value = "system";
  before.dispatchEvent(new Ev("input"));
  await settle();
  check("filter narrows", hint().split(" ")[0].split("/")[1], "40");
  check("the filter input survives a keystroke", filterOf(box) === before, true);

  before.value = "no-such-headline";
  before.dispatchEvent(new Ev("input"));
  await settle();
  check("a filter that matches nothing", rows().length, 0);
  check("and says so", box.querySelector(".tv-empty").style.display, "");

  before.value = "";
  before.dispatchEvent(new Ev("input"));
  await settle();
  check("clearing restores every row", rows().length, 40);

  const tr = rows()[3], id = tr.dataset.id;
  tr.click();
  check("a click selects", tr.classes.has("tv-sel"), true);
  check("and enables the actions", box.querySelector(".tv-btn[data-cmd]").disabled, false);
  tr.dispatchEvent(new Ev("dblclick"));
  check("a double click runs the RET action", seen.pop(), "materialize " + id);
  rows()[3].querySelector(".tv-link").click();
  check("a link click follows it", seen.pop(), "link org-glance:" + id);

  box.querySelector("th[data-key=state]").click();
  check("a header click sorts", hint(), "40 rows · sort state asc");
  box.querySelector("th[data-key=state]").click();
  check("and toggles direction", hint(), "40 rows · sort state desc");

  t.upsertRow({ id: "h-0", cells: { state: "DONE", priority: "A", title: "changed" } });
  check("upsert of a known id keeps the count", hint(), "40 rows · sort state desc");
  t.upsertRow({ id: "fresh", cells: { state: "TODO", priority: "A", title: "brand new" } });
  check("upsert appends an unknown id", t.getRows().length, 41);
  t.deleteRow("fresh");
  check("delete drops it", t.getRows().length, 40);
  t.deleteRow(id);
  check("deleting the selection disables the actions",
        box.querySelector(".tv-btn[data-cmd]").disabled, true);
  t.upsertRow(makeRow(Number(id.slice(2))));
  t.applyDelta([{ op: "delete", index: 0 }, { op: "insert", index: 0, row: makeRow(999) }]);
  check("apply-delta keeps the count", t.getRows().length, 40);

  if (typeof t.select === "function") {
    check("select() finds a visible row", t.select("h-39"), true);
    check("and marks it", box.querySelector(".tv-table tbody tr.tv-sel").dataset.id, "h-39");
    check("select() ignores an unknown id", t.select("nope"), false);
    check("getVisible() is the display order", t.getVisible().length, 40);
  }

  {
    // onFilter: the producer narrows, the renderer shows what it is given.
    const asked = [];
    const remote = new El("div");
    const rt = TableView.mount(remote, view(10), { onFilter: (q) => asked.push(q) });
    const rbox = filterOf(remote);
    rbox.value = "system";
    rbox.dispatchEvent(new Ev("input"));
    await settle();
    check("onFilter takes the query", asked, ["system"]);
    check("and the rows stay as given", rt.getVisible().length, 10);

    // Enter flushes the pending debounce: one call, with the text as it stands.
    asked.length = 0;
    rbox.value = "sys";
    rbox.dispatchEvent(new Ev("input"));          // debounce armed, not yet due
    rbox.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("Enter flushes onFilter at once", asked, ["sys"]);
    check("and blurs the box", rbox.focused, false);
    check("with no selection yet — the producer has not answered",
          remote.querySelector(".tv-table tbody tr.tv-sel"), null);
    await settle();
    check("and the pending debounce does not fire a second time", asked, ["sys"]);
    rt.setRows([makeRow(3), makeRow(4)]);          // the producer's answer
    check("the answer hands the table the first row",
          remote.querySelector(".tv-table tbody tr.tv-sel").dataset.id, "h-3");
    rt.setRows([makeRow(5), makeRow(6)]);          // a later, unasked-for setRows
    check("a later setRows does not move the selection again",
          remote.querySelector(".tv-table tbody tr.tv-sel"), null);
  }

  {
    // Enter and Escape, filtering locally.
    const keyed = new El("div");
    const seenUp = [];
    keyed.addEventListener("keydown", (e) => seenUp.push(e.key));
    const kt = TableView.mount(keyed, view(40));
    const kbox = filterOf(keyed);
    const kHint = () => keyed.querySelector(".tv-hint").textContent;
    const kSel = () => keyed.querySelector(".tv-table tbody tr.tv-sel");

    kbox.value = "system";
    kbox.dispatchEvent(new Ev("input"));           // debounce armed, not yet due
    kbox.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    const narrowed = kt.getVisible();
    check("Enter filters without waiting for the debounce",
          narrowed.length > 0 && narrowed.length < 40, true);
    check("and the hint counts the narrowed set",
          kHint(), `${narrowed.length}/40 rows · sort scheduled asc`);
    check("Enter blurs the filter box", kbox.focused, false);
    check("and hands the table the first visible row",
          kSel().dataset.id, narrowed[0].id);
    check("the key stops at the input", seenUp, []);

    const held = kSel().dataset.id;
    kbox.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("a second Enter keeps a selection that is still visible",
          kSel().dataset.id, held);

    // A row that survives the query, so "the selection stayed put" is visible
    // below rather than vacuously true.
    const survivor = narrowed[narrowed.length - 1].id;

    kbox.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    check("Escape clears a filled box", kbox.value, "");
    check("and applies the clear", kt.getVisible().length, 40);
    const blurs = kbox.blurs;
    kbox.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    check("Escape on an empty box just blurs", [kbox.value, kbox.blurs - blurs], ["", 1]);

    kbox.value = "no-such-headline";
    kbox.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("Enter with nothing matching selects nothing", kSel(), null);
    kbox.dispatchEvent(new Ev("keydown", { key: "Escape" }));

    // Only Enter touches focus or the selection.
    kt.select(survivor);
    const quiet = kbox.blurs;
    kbox.value = "system";
    kbox.dispatchEvent(new Ev("input"));
    await settle();                                 // the debounce fires on its own
    check("a debounce firing on its own leaves the selection where it was",
          kSel() && kSel().dataset.id, survivor);
    check("and does not blur anything", kbox.blurs - quiet, 0);
  }

  t.setRows([]);
  check("no rows says so", box.querySelector(".tv-empty").style.display, "");
  t.setView(view(5));
  check("setView reloads", hint(), "5 rows · sort scheduled asc");

  if (typeof TableView.parseQuery === "function") await filterQuery();

  if (typeof t.select !== "function") return;

  console.log("\n== the window");
  const far = new El("div");
  const big = TableView.mount(far, view(500));
  const sc = far.querySelector(".tv-scroll");
  sc.clientHeight = 300;                      // 10 rows on screen
  sc.scrollTop = 3000;
  sc.dispatchEvent(new Ev("scroll"));
  await sleep(50);
  const shown = () => far.querySelectorAll(".tv-table tbody tr[data-id]");
  check("only a window has DOM", shown().length, 10 + 2 * 15);
  check("spacers stand in for the rest", far.querySelectorAll("tbody tr.tv-pad").length, 2);

  const at = big.getVisible().findIndex((r) => r.id === shown()[0].dataset.id);
  check("the window sits at the scroll position", at, Math.floor((3000 - 30) / 30) - 15);
  check("striping follows the global index",
        [shown()[0], shown()[1]].map((tr) => tr.classes.has("tv-alt")),
        [at % 2 === 1, at % 2 === 0]);

  const last = big.getVisible()[499].id;
  check("select() reaches a row with no element", big.select(last), true);
  check("and scrolls to it", far.querySelector("tbody tr.tv-sel").dataset.id, last);
}

measure()
  .then(smoke)
  .then(() => {
    console.log(fails ? "\n" + fails + " FAILED" : "\nall ok");
    process.exit(fails ? 1 : 0);
  })
  .catch((e) => { console.error(e); process.exit(2); });

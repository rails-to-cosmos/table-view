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
/** Wait out a coalesced selection paint (one rAF). */
const painted = () => sleep(20);
const sync = (fn) => { const t = now(); try { return fn(); } finally { work += now() - t; } };
global.setTimeout = (fn, ms) => realTimeout(timed(fn), ms);
global.clearTimeout = (id) => realClear(id);
global.requestAnimationFrame = (fn) => realTimeout(timed(fn), 0);

// ---- DOM shim --------------------------------------------------------------

/** The shim's line height; the driver moves it to stand in for a zoom. */
let ROW_PX = 30;
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

/** A text node: ordered among its siblings, invisible to selectors. */
class TextNode {
  constructor(t) { this.textContent = String(t); this.tagName = null; this.parentNode = null; }
}

class El {
  constructor(tag) {
    this.tagName = String(tag).toUpperCase();
    this.parentNode = null;
    this.childNodes = [];
    this.attrs = new Map();
    this.classes = new Set();
    this.style = {};
    this.on = new Map();
    this.value = "";
    this.disabled = false;
    this.scrollTop = 0;
    this.clientHeight = 0;
  }
  /** Elements only, the way a browser's `children' is — text nodes excluded. */
  get children() { return this.childNodes.filter((c) => c.tagName); }
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
  get textContent() { return this.childNodes.map((c) => c.textContent).join(""); }
  set textContent(t) {
    this.childNodes.length = 0;
    if (String(t) !== "") this.appendChild(new TextNode(t));
  }
  // The driver reads `.text' as shorthand for the rendered text.
  get text() { return this.textContent; }
  set text(t) { this.textContent = t; }
  get innerHTML() { return ""; }
  set innerHTML(html) {
    bytes += String(html).length;
    this.childNodes.length = 0;
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
  blur() {
    this.focused = false;
    this.blurs = (this.blurs || 0) + 1;
    this.dispatchEvent(new Ev("blur"));      // a browser fires one; listeners rely on it
  }
  select() {} scrollIntoView() {}
  getBoundingClientRect() { return { height: ROW_PX, width: 0 }; }
  /** A row is one line tall; anything else is what its children add up to. */
  get offsetHeight() {
    const h = this.style.height;
    if (h && /px$/.test(String(h))) return parseFloat(String(h));
    if (this.tagName === "TR") return ROW_PX;
    let sum = 0;
    for (const c of this.children) sum += c.offsetHeight;
    return sum;
  }
  /** Distance to the nearest positioned ancestor, by stacking up what precedes. */
  get offsetTop() {
    let top = 0, node = this;
    while (node.parentNode && !node.parentNode.classes.has("tv-scroll")) {
      for (const sib of node.parentNode.children) {
        if (sib === node) break;
        top += sib.offsetHeight;
      }
      node = node.parentNode;
    }
    return top;
  }
  matches(sel) { return fitsAll(this, parseSel(sel)); }
  closest(sel) {
    const steps = parseSel(sel);
    for (let n = this; n; n = n.parentNode) if (fitsAll(n, steps)) return n;
    return null;
  }
  querySelectorAll(sel) {
    const steps = parseSel(sel), out = [];
    const walk = (n) => {
      for (const c of n.children) { if (fitsAll(c, steps)) out.push(c); walk(c); }
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
    if (text) stack[stack.length - 1].appendChild(new TextNode(decode(text)));
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
  if (tail) stack[stack.length - 1].appendChild(new TextNode(decode(tail)));
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

  // A consumer holding a movement key: ~30 select() calls inside one frame.
  const burst = tv.getVisible().slice(200, 230).map((r) => r.id);
  await bench("select burst x30 (key repeat)",
              () => sync(() => { for (const id of burst) tv.select(id); }));

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

/** The action legend the fixture's view puts on the hint line. */
const ACT = " · RET Materialize · t Cycle TODO";

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
  /** Empty the box and take every chip back off, so each case starts clean. */
  const reset = () => {
    const b = filterOf(box);
    // An empty box offers nothing, so this shuts any list a previous check
    // left open — an open list would take the keys below for itself.
    b.value = "";
    b.dispatchEvent(new Ev("input"));
    for (let i = 0; i < 40 && box.querySelectorAll(".tv-chip").length; i++)
      b.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
  };
  const shown = (query) => {
    reset();
    const b = filterOf(box);
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
    reset();
    const b = filterOf(box);
    b.value = query;
    b.dispatchEvent(new Ev("input"));
    return items();
  };
  check("a bare word suggests the column keys it opens", type("sta"), ["state:"]);
  // A bare word offers the keys it opens: the view's columns, then the tags
  // the rows imply, both spelled `key:'.
  check("the prefix narrows them",
        type("s").filter((x) => x.endsWith(":")), ["state:", "scheduled:", "system:"]);
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
  await painted();
  check("Enter with the list closed commits the token and hands the table over",
        [(b.blurs || 0) - blurs, b.value, box.querySelectorAll(".tv-chip").length,
         !!box.querySelector(".tv-table tbody tr.tv-sel")], [1, "", 1, true]);
}

/** Cell-level selection, the action legend, chips and badge pills. */
async function cellsChipsPills() {
  console.log("\n== cells, chips and pills");
  const box = new El("div");
  const seen = [];
  const settle = () => sleep(200);
  const t = TableView.mount(box, view(40), {
    onAction: (command, id) => seen.push(command + " " + id),
  });
  box.querySelector(".tv-scroll").clientHeight = 600;
  const nCols = columns.length;
  const rowOf = (id) => box.querySelector(`.tv-table tbody tr[data-id=${id}]`);
  const cellSel = () => box.querySelectorAll(".tv-table tbody td.tv-cell-sel");
  const colOfSel = () => {
    const td = cellSel()[0];
    return td ? td.parentNode.children.indexOf(td) : -1;
  };

  // --- cell selection
  const id = t.getVisible()[3].id;
  const ok = t.select(id);
  check("select answers before it paints", [ok, t.getSelection()], [true, { id, col: null }]);
  await painted();
  check("select with no column is a whole-row selection, as it always was",
        [!!rowOf(id).classes.has("tv-sel"), cellSel().length], [true, 0]);
  check("select with a column stamps that cell", t.select(id, 2), true);
  check("and reports it before the frame", t.getSelection(), { id, col: 2 });
  await painted();
  check("the cell is stamped once the frame lands", colOfSel(), 2);
  check("only one cell is ever stamped", cellSel().length, 1);
  check("the row stays selected too", rowOf(id).classes.has("tv-sel"), true);
  t.select(id, 99);
  await painted();
  check("a column past the end clamps rather than wrapping", colOfSel(), nCols - 1);
  t.select(id, -5);
  await painted();
  check("and so does one before the start", colOfSel(), 0);
  t.select(id, 2);
  await painted();

  t.upsertRow(makeRow(Number(id.slice(2))));
  check("the stamp survives an upsert", [t.getSelection().col, colOfSel()], [2, 2]);
  t.setRows(view(40).rows);
  check("and a setRows that still carries the id",
        [t.getSelection().col, colOfSel()], [2, 2]);

  const sc = box.querySelector(".tv-scroll");
  const at = t.getVisible().findIndex((r) => r.id === id);
  sc.scrollTop = 3000;
  sc.dispatchEvent(new Ev("scroll"));
  await sleep(50);
  check("scrolled out of the window, the stamp goes with the row", cellSel().length, 0);
  sc.scrollTop = Math.max(0, at * 30 - 100);
  sc.dispatchEvent(new Ev("scroll"));
  await sleep(50);
  check("and comes back with it", [t.getSelection().col, colOfSel()], [2, 2]);

  const td = rowOf(id).children[3];
  td.dispatchEvent(new Ev("click"));
  check("a click selects the cell it landed on", t.getSelection(), { id, col: 3 });
  check("and stamps it there and then — a click is not a key repeat", colOfSel(), 3);

  // --- coalescing: many moves between frames paint once, at the end
  {
    const ids = t.getVisible().slice(10, 40).map((r) => r.id);
    t.select(ids[0]);
    await painted();
    bytes = 0;
    for (const one of ids) t.select(one);          // a held key, ~30 in a frame
    check("thirty moves write no HTML before the frame", bytes, 0);
    check("and the state is already the last of them",
          t.getSelection().id, ids[ids.length - 1]);
    await painted();
    check("the frame paints once", bytes > 0 && bytes < 3 * 18128, true);
    check("landing on the row the last call asked for",
          box.querySelector(".tv-table tbody tr.tv-sel").dataset.id, ids[ids.length - 1]);
  }

  // --- the highlight is the row, and it crossfades where it is
  {
    const css = document.head.children.map((e) => e.text).join("");
    check("the marks are declared with a crossfade",
          css.indexOf("transition:background-color .08s ease-out") !== -1, true);
    check("and a calm root turns it off", css.indexOf(".tv-calm") !== -1, true);
    check("no overlay is rendered", box.querySelectorAll(".tv-hl").length, 0);

    // A move that leaves the window where it is re-stamps the rows already
    // rendered — the same elements, so the marks have something to fade
    // between rather than being rebuilt at their new value.
    const near = t.getVisible()[2].id;
    t.select(near);
    await painted();
    const tr = box.querySelector(".tv-table tbody tr.tv-sel");
    t.select(t.getVisible()[3].id);
    await painted();
    check("the row that lost the mark is the same element that had it",
          [tr.classes.has("tv-sel"),
           box.querySelector(".tv-table tbody tr.tv-sel").dataset.id],
          [false, t.getVisible()[3].id]);
  }

  // --- the viewport ease: one loop, retargeting, snapping, cancellable
  {
    const sc = box.querySelector(".tv-scroll");
    sc.clientHeight = 300;                        // ten rows on screen
    sc.scrollTop = 0;
    const rowH = 30, head = 30;
    const target = (i) => head + i * rowH + rowH - 300;   // block-nearest, downward
    /** Is row I clear of the sticky header and inside the port at scroll TOP? */
    const inView = (i, top) =>
      head + i * rowH >= top + head - 0.5 && head + i * rowH + rowH <= top + 300 + 0.5;

    t.select(t.getVisible()[30].id);
    check("the ease does not land in one go", sc.scrollTop, 0);
    await sleep(300);
    check("it converges on the block-nearest target", sc.scrollTop, target(30));
    check("and snaps rather than creeping",
          Number.isInteger(sc.scrollTop) || Math.abs(sc.scrollTop - target(30)) < 0.5, true);

    // Retargeting: a second move mid-flight changes where the one loop is
    // heading; it must end at the second target, not the first.
    sc.scrollTop = 0;
    t.select(t.getVisible()[30].id);
    await sleep(20);
    const midway = sc.scrollTop;
    t.select(t.getVisible()[20].id);
    await sleep(300);
    check("a move mid-ease retargets the same loop",
          [midway > 0 && midway < target(30), sc.scrollTop !== target(30),
           inView(20, sc.scrollTop)], [true, true, true]);

    // The user outranks it.
    sc.scrollTop = 0;
    t.select(t.getVisible()[35].id);
    await sleep(20);
    sc.dispatchEvent(new Ev("wheel"));
    const stoppedAt = sc.scrollTop;
    await sleep(300);
    check("a wheel cancels the ease where it stands",
          [stoppedAt > 0, sc.scrollTop], [true, stoppedAt]);

    // A rows change is about an order the target no longer describes.
    sc.scrollTop = 0;
    t.select(t.getVisible()[35].id);
    t.setRows(view(40).rows);
    await sleep(300);
    check("and a rows change cancels it too", sc.scrollTop, 0);
    sc.clientHeight = 600;
  }

  // --- reduced motion: no crossfade, no ease, still coalesced
  {
    global.matchMedia = (q) => ({ matches: q.indexOf("reduced-motion") !== -1 });
    const quiet = new El("div");
    const qt = TableView.mount(quiet, view(40));
    delete global.matchMedia;
    const qs = quiet.querySelector(".tv-scroll");
    qs.clientHeight = 300;
    check("a calm root is marked for the stylesheet to see",
          quiet.querySelector(".tv-root").classes.has("tv-calm"), true);
    bytes = 0;
    qt.select(qt.getVisible()[30].id);
    check("the viewport jumps rather than easing", qs.scrollTop, 30 + 30 * 30 + 30 - 300);
    check("and the paint still waits for the frame", bytes, 0);
    await painted();
    check("landing on the row asked for",
          quiet.querySelector(".tv-table tbody tr.tv-sel").dataset.id,
          qt.getVisible()[30].id);
  }

  // --- the action legend, in place of the toolbar
  check("the toolbar is gone", box.querySelectorAll(".tv-btn").length, 0);
  check("the bar holds the title, the chips and the filter, and nothing else",
        box.querySelector(".tv-bar").children.map((e) => e.className),
        ["tv-title", "tv-chips", "tv-filter-wrap"]);
  const legend = box.querySelector(".tv-hint").textContent;
  check("the hint spells every action as KEY label", legend.slice(legend.indexOf(" · RET")), ACT);
  check("the keys are marked up for emphasis",
        box.querySelectorAll(".tv-hint .tv-key").map((e) => e.text), ["RET", "t"]);
  rowOf(id).dispatchEvent(new Ev("dblclick"));
  check("a double click still dispatches the default action", seen.pop(), "materialize " + id);

  // --- badge pills
  const pill = box.querySelector(".tv-table tbody td .tv-pill");
  check("a badge cell renders a pill", !!pill, true);
  check("tinted from its palette colour", pill.attrs.get("style").indexOf("--tv-badge:#") !== -1, true);
  check("with a dot before the label", pill.children.map((e) => e.className), ["tv-dot"]);
  check("and the label after it", STATES.indexOf(pill.text) !== -1, true);
  check("a text cell is untouched",
        rowOf(id).children[2].querySelectorAll(".tv-pill").length, 0);

  // --- chips
  const box2 = new El("div");
  const t2 = TableView.mount(box2, view(40));
  const b2 = filterOf(box2);
  const chipText = () => box2.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", ""));
  const commit = (q) => {
    b2.value = q;
    b2.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  };
  commit("state:DONE");
  check("Enter moves the token out of the box and into a chip",
        [chipText(), b2.value], [["state:DONE"], ""]);
  commit("tags:web");
  check("a second commit adds a second chip", chipText(), ["state:DONE", "tags:web"]);
  check("and the two AND together", t2.getVisible().length, 3);
  b2.value = "2026";                       // every row's scheduled date starts here
  b2.dispatchEvent(new Ev("input"));
  await settle();
  check("what is still being typed stays in the box", b2.value, "2026");
  const composed = t2.getVisible().length;
  check("and narrows on top of the chips rather than replacing them",
        [composed > 0, composed <= 3], [true, true]);
  b2.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("chips and box compose into one query", chipText(),
        ["state:DONE", "tags:web", "2026"]);

  // The same query typed whole must filter identically — chips are display.
  const box3 = new El("div");
  const t3 = TableView.mount(box3, view(40));
  const b3 = filterOf(box3);
  b3.value = "state:DONE tags:web 2026";
  b3.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("a query split into chips filters as the same query typed whole",
        t3.getVisible().length, composed);
  check("and chips out token by token", box3.querySelectorAll(".tv-chip").length, 3);

  b2.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
  check("Backspace on an empty box strips the last chip",
        chipText(), ["state:DONE", "tags:web"]);
  const mid = box2.querySelectorAll(".tv-chip")[0];
  mid.dispatchEvent(new Ev("click"));
  check("a chip click removes that one", chipText(), ["tags:web"]);
  check("and reapplies what is left", t2.getVisible().length, 13);

  commit('-priority:A "two words"');
  check("a chip shows its token verbatim, quotes and negation and all",
        chipText(), ["tags:web", "-priority:A", '"two words"']);

  // --- the flow the semantics exist for: `/ tanik RET / passport RET'.
  // Every RET commits what is typed and returns to the table; a longer query is
  // built by coming back to the box, which reopens empty with its chips intact.
  {
    const boxF = new El("div");
    const tF = TableView.mount(boxF, view(40));
    const bF = filterOf(boxF);
    const sel = () => boxF.querySelector(".tv-table tbody tr.tv-sel");
    const chipsOf = () => boxF.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", ""));

    bF.focus();                                    // `/'
    bF.value = "review";
    bF.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("RET commits the token and returns to the table",
          [chipsOf(), bF.value, bF.blurs, !!sel()], [["review"], "", 1, true]);

    bF.focus();                                    // `/' again
    check("coming back finds an empty box with the chips standing",
          [chipsOf(), bF.value, bF.focused], [["review"], "", true]);
    const after = tF.getVisible().length;
    check("and the filter still applied", [after > 0, after < 40], [true, true]);

    bF.value = "sync";
    bF.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("the second token joins the first, and RET returns again",
          [chipsOf(), bF.blurs, !!sel()], [["review", "sync"], 2, true]);
    const both = tF.getVisible().length;

    // The same two tokens typed as one query filter identically.
    const boxW = new El("div");
    const tW = TableView.mount(boxW, view(40));
    const bW = filterOf(boxW);
    bW.value = "review sync";
    bW.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("two tokens built up one RET at a time AND together",
          [both > 0, both < after, tW.getVisible().length], [true, true, both]);
    check("and the selection sits on the first row that matches both",
          sel().dataset.id, tF.getVisible()[0].id);
  }

  // --- the same flow remotely: one delivery per committed token, and the
  // selection handed over at once rather than awaiting the producer.
  {
    const askedF = [];
    const boxR = new El("div");
    const tR = TableView.mount(boxR, view(10), { onFilter: (q) => askedF.push(q) });
    const bR = filterOf(boxR);
    const rowsAt = [];
    bR.focus();
    bR.value = "tanik";
    bR.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    rowsAt.push(boxR.querySelector(".tv-table tbody tr.tv-sel").dataset.id);
    bR.focus();
    bR.value = "passport";
    bR.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("each committed token is delivered once, joined with the ones before",
          askedF, ["tanik", "tanik passport"]);
    check("the table has the keyboard after every RET", bR.blurs, 2);
    check("and the selection was handed over at once, both times",
          [rowsAt[0], boxR.querySelector(".tv-table tbody tr.tv-sel").dataset.id],
          [tR.getVisible()[0].id, tR.getVisible()[0].id]);
    check("the chips survived the re-entry",
          boxR.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")),
          ["tanik", "passport"]);
  }

  // --- remote mode gets the joined query
  const asked = [];
  const box4 = new El("div");
  TableView.mount(box4, view(10), { onFilter: (q) => asked.push(q) });
  const b4 = filterOf(box4);
  b4.value = "state:DONE";
  b4.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  b4.value = "system";
  b4.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("onFilter receives chips and box joined into one query string",
        asked, ["state:DONE", "state:DONE system"]);
  b4.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
  check("and again when a chip is stripped", asked.pop(), "state:DONE");
}

/** SCHEMA's producer-defined virtual keys: org tags, derived from the rows. */
async function virtualKeys() {
  console.log("\n== virtual keys");
  const box = new El("div");
  const t = TableView.mount(box, view(40));
  const b = filterOf(box);
  const KEYS = columns.map((c) => c.key);
  const reset = () => {
    b.value = "";
    b.dispatchEvent(new Ev("input"));
    for (let i = 0; i < 40 && box.querySelectorAll(".tv-chip").length; i++)
      b.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
  };
  const shown = (q) => {
    reset();
    b.value = q;
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    return t.getVisible().length;
  };
  const items = () => box.querySelectorAll(".tv-ac-label").map((e) => e.text);
  const counts = () => box.querySelectorAll(".tv-ac-n").map((e) => Number(e.text));
  const type = (q) => { reset(); b.value = q; b.dispatchEvent(new Ev("input")); return items(); };

  // --- the vocabulary
  // The fixture tags rows `:web:glance:', `:emacs:', `:ops:system:', `:read:',
  // `:web:', `:glance:daemon:' in turn.
  check("a tag is a key, and an unknown word is not",
        [TableView.parseQuery("glance:x", KEYS)[0].key, t.getVisible().length > 0],
        [null, true]);
  check("the renderer resolves it once the rows are in",
        shown("glance:") > 0, true);
  check("a word that names no tag stays free text", shown("nosuchtag:x"), 0);
  // `:web:' names a real tag, and still parses as free text: a token opening
  // with a colon is never a key, which is the trap the rule exists for. It
  // matches the rows whose tags cell spells it, the way any free text would.
  check("and the org-tag trap holds — a leading colon is never a key",
        [TableView.parseQuery(":web:", KEYS.concat(["web"]))[0].key, shown(":web:")],
        [null, 13]);

  // --- semantics
  const web = shown("web:");
  const glance = shown("glance:");
  check("a bare tag key is presence alone", [web, glance], [13, 13]);
  check("whole-tag matching — a prefix of a tag is not that tag", shown("gla:"), 0);
  check("tag and text AND together", shown("glance:review") < glance, true);
  check("the same query typed against the tag column agrees",
        shown("glance:review"), shown("tags:glance review"));
  check("negation is the rows without the tag", shown("-web:"), 40 - web);
  {
    const ids = (q) => { shown(q); return t.getVisible().map((r) => r.id).sort(); };
    const a = ids("glance:review"), b = ids("glance:sync");
    const union = Array.from(new Set(a.concat(b))).sort();
    check("tag keys OR when they share a name", ids("glance:review glance:sync"), union);
    check("and the terms overlap, so a sum would have been the wrong oracle",
          union.length < a.length + b.length, true);
  }
  check("and AND across different tags", shown("web:glance:") <= Math.min(web, glance), true);

  // --- columns shadow tags on collision
  {
    const shadow = new El("div");
    const rows = view(6).rows.map((r) => ({ id: r.id, cells: { ...r.cells, tags: ":title:" } }));
    const st = TableView.mount(shadow, { columns, rows });
    const sb = filterOf(shadow);
    sb.value = "title:review";
    sb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    // Every row carries the tag, so a tag reading would keep the ones matching
    // "review" anywhere; the column reading keeps those whose title has it.
    const asColumn = rows.filter((r) => /review/i.test(String(r.cells.title))).length;
    check("a column shadows a tag of the same name",
          [st.getVisible().length, st.getVisible().length === asColumn], [asColumn, true]);
  }

  // --- the vocabulary follows the rows
  check("a tag that no row carries any more stops being a key",
        (() => { t.setRows([makeRow(1)]); return shown("daemon:"); })(), 0);
  t.setRows(view(40).rows);
  check("and comes back with them", shown("daemon:") > 0, true);

  // --- scoped suggestions
  // A prefix completes to whole title words, scoped to the tags they sit under.
  reset();
  const offered = type("sy").filter((x) => !x.endsWith(":"));
  check("a bare word completes to title words, scoped by tag", offered.length > 0, true);
  check("each a tag and a whole word, not the fragment typed",
        offered.every((x) => /^[^:]+:sy.+/.test(x) && !x.endsWith(":sy")), true);
  check("no more than five of them", offered.length <= 5, true);
  check("counts descend", (() => {
    const n = counts().slice(-offered.length);
    return n.every((v, i, a) => v > 0 && (i === 0 || a[i - 1] >= v));
  })(), true);
  check("and every one of them matches something — the invariant of completing",
        offered.every((x) => shown(x) > 0), true);
  const scoped = type("sy").filter((x) => !x.endsWith(":"));
  check("they are dimmed — a word count is not a value match",
        box.querySelectorAll(".tv-ac-dim").length, scoped.length);
  check("a prefix inside a word is not a completion of it",
        type("yst").filter((x) => !x.endsWith(":")).length, 0);
  check("and two characters are the least that completes anything",
        type("s").filter((x) => !x.endsWith(":")).length, 0);
  check("keys come before the scoped completions",
        (() => { const l = type("sy"); const k = l.filter((x) => x.endsWith(":")).length;
                 return l.slice(0, k).every((x) => x.endsWith(":")); })(), true);

  // Exact beats fuzzy: a word that IS a value of some column says so, and the
  // scoped guesses go entirely rather than crowding it.
  const exact = type("TODO");
  check("a word that names a column value completes to it", exact, ["state:TODO"]);
  check("with the rows behind it", counts(), [Math.round(40 / 5)]);
  check("and nothing fuzzy beside it", box.querySelectorAll(".tv-ac-dim").length, 0);
  check("the exact row is not dimmed either",
        box.querySelectorAll(".tv-ac-item")[0].classes.has("tv-ac-dim"), false);
  check("a value of a declared list counts too", type("A"), ["priority:A"]);
  type("sync");
  check("nothing is preselected when only tags are offered — Enter commits the word",
        [items().every((x) => !x.endsWith(":")),
         box.querySelectorAll(".tv-ac-on").length], [true, 0]);
  check("while a column completion does start highlighted",
        (() => { type("sta"); return box.querySelectorAll(".tv-ac-on").length; })(), 1);

  reset();
  b.value = "sy";
  b.dispatchEvent(new Ev("input"));
  check("nothing starts highlighted when the first row is an offer",
        box.querySelectorAll(".tv-ac-on").length, 0);
  b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
  check("an arrow steps into the offers", box.querySelectorAll(".tv-ac-on").length, 1);
  const first = items()[0];
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("accepting a key completion leaves the value to type", b.value, first);
  check("and a virtual key offers no value list", items(), []);

  // A tag name is a key like any other: its prefix completes to `tag:'.
  reset();
  const keyed = type("sys");
  check("a tag prefix completes to the tag as a key", keyed[0], "system:");
  check("with the rows that hold it", counts()[0], shown("system:"));
  check("and it is not dimmed — a vocabulary key is an exact fact",
        (() => { type("sys");
                 return box.querySelectorAll(".tv-ac-item")[0].classes.has("tv-ac-dim"); })(),
        false);
  reset();
  b.value = "sys";
  b.dispatchEvent(new Ev("input"));
  b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("accepting it lands the key with the caret past the colon", b.value, "system:");
  b.value = "system:sy";
  b.dispatchEvent(new Ev("input"));
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("and typing a value after it composes end to end",
        t.getVisible().length > 0, true);

  // --- the contract, on data shaped like the one it was written for
  {
    const own = [
      { key: "title", header: "Headline", type: "text" },
      { key: "tags", header: "Tags", type: "text" },
    ];
    const rows = [
      { id: "a", cells: { title: "call tanik about the lease", tags: ":contact:" } },
      { id: "b", cells: { title: "tanik sent the passport scan", tags: ":contact:doc:" } },
      { id: "c", cells: { title: "tangent worth chasing", tags: ":idea:" } },
      { id: "d", cells: { title: "nothing to complete here", tags: ":idea:" } },
    ];
    const cbox = new El("div");
    const ct = TableView.mount(cbox, { columns: own, rows });
    const cb = filterOf(cbox);
    const offer = (q) => {
      cb.value = q;
      cb.dispatchEvent(new Ev("input"));
      return cbox.querySelectorAll(".tv-ac-label").map((e) => e.text);
    };
    const nums = () => cbox.querySelectorAll(".tv-ac-n").map((e) => Number(e.text));
    const list = offer("tan");
    check("tan completes to the word it starts, scoped by tag",
          list.indexOf("contact:tanik") !== -1, true);
    check("counting the rows tagged contact whose title has it",
          nums()[list.indexOf("contact:tanik")], 2);
    check("the other tag's word comes too, and they are ordered by count",
          list.filter((x) => x.indexOf(":tan") !== -1).sort(),
          ["contact:tanik", "doc:tanik", "idea:tangent"]);
    check("each is a whole word, never the fragment",
          list.every((x) => !x.endsWith(":tan")), true);
    check("and each one, run, finds the rows it was counted from",
          (() => {
            cb.value = "contact:tanik";
            cb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
            return ct.getVisible().length;
          })(), 2);
  }

  // --- the handle: stripLastToken and getQuery
  {
    const asked = [];
    const h = new El("div");
    const ht = TableView.mount(h, view(40), { onFilter: (q) => asked.push(q) });
    const hb = filterOf(h);
    check("getQuery starts empty", ht.getQuery(), "");
    hb.value = "glance:";
    hb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    hb.value = "review";
    hb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("getQuery is what was last delivered", ht.getQuery(), "glance: review");
    check("one delivery per commit", asked, ["glance:", "glance: review"]);

    const blurs = hb.blurs || 0;
    hb.value = "half";                            // typed, uncommitted
    check("stripLastToken takes the typed text first", ht.stripLastToken(), true);
    check("leaving the chips", [hb.value, ht.getQuery()], ["", "glance: review"]);
    check("and delivering once for it", asked.length, 3);
    check("then the chips, last first", ht.stripLastToken(), true);
    check("which getQuery follows", ht.getQuery(), "glance:");
    check("and again", [ht.stripLastToken(), ht.getQuery()], [true, ""]);
    check("false once there is nothing left", ht.stripLastToken(), false);
    check("and nothing delivered for it", asked.length, 5);
    check("focus is the caller's business", (hb.blurs || 0) - blurs, 0);
  }

  // --- the Backspace ladder: characters, chips, then the table
  {
    const l = new El("div");
    const lt = TableView.mount(l, view(40));
    const lb = filterOf(l);
    const back = () => lb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    lb.value = "review";
    lb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    lb.focus();
    lb.value = "sync";
    lb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    lb.focus();
    lb.value = "half";                            // characters the browser eats
    check("the ladder starts with two chips and text in the box",
          [l.querySelectorAll(".tv-chip").length, lb.value], [2, "half"]);
    lb.value = "";                                // ... down to an empty box
    const blurs = lb.blurs;
    back();
    check("Backspace on the empty box takes the last chip",
          [l.querySelectorAll(".tv-chip").length, lb.blurs - blurs], [1, 0]);
    back();
    check("then the one before it", [l.querySelectorAll(".tv-chip").length, lb.blurs - blurs],
          [0, 0]);
    check("with the query emptied as they went", lt.getQuery(), "");
    back();
    await painted();
    check("and with none left it hands the table over",
          [lb.blurs - blurs, !!l.querySelector(".tv-table tbody tr.tv-sel")], [1, true]);
  }
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
  check("hint counts and sorts", hint(), "40 rows · sort scheduled asc" + ACT);
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
  check("no toolbar buttons anywhere", box.querySelectorAll(".tv-btn").length, 0);
  tr.dispatchEvent(new Ev("dblclick"));
  check("a double click runs the RET action", seen.pop(), "materialize " + id);
  rows()[3].querySelector(".tv-link").click();
  check("a link click follows it", seen.pop(), "link org-glance:" + id);

  box.querySelector("th[data-key=state]").click();
  check("a header click sorts", hint(), "40 rows · sort state asc" + ACT);
  box.querySelector("th[data-key=state]").click();
  check("and toggles direction", hint(), "40 rows · sort state desc" + ACT);

  t.upsertRow({ id: "h-0", cells: { state: "DONE", priority: "A", title: "changed" } });
  check("upsert of a known id keeps the count", hint(), "40 rows · sort state desc" + ACT);
  t.upsertRow({ id: "fresh", cells: { state: "TODO", priority: "A", title: "brand new" } });
  check("upsert appends an unknown id", t.getRows().length, 41);
  t.deleteRow("fresh");
  check("delete drops it", t.getRows().length, 40);
  t.deleteRow(id);
  check("the hint spells each action as its key and label",
        hint().slice(hint().indexOf(" · RET")), ACT);
  t.upsertRow(makeRow(Number(id.slice(2))));
  t.applyDelta([{ op: "delete", index: 0 }, { op: "insert", index: 0, row: makeRow(999) }]);
  check("apply-delta keeps the count", t.getRows().length, 40);

  if (typeof t.select === "function") {
    check("select() finds a visible row", t.select("h-39"), true);
    await painted();
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
    const rSel = () => remote.querySelector(".tv-table tbody tr.tv-sel");
    await painted();
    check("Enter flushes onFilter at once", asked, ["sys"]);
    check("and hands the table over without awaiting the producer's reply",
          [rbox.blurs, rbox.value, !!rSel()], [1, "", true]);
    await settle();
    check("and the pending debounce does not fire a second time", asked, ["sys"]);
    rt.setRows([makeRow(3), makeRow(4)]);          // the producer's answer
    check("the answer lands without moving the selection again",
          [rt.getRows().length, asked], [2, ["sys"]]);
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
    await painted();
    check("Enter filters without waiting for the debounce",
          narrowed.length > 0 && narrowed.length < 40, true);
    check("and the hint counts the narrowed set",
          kHint(), `${narrowed.length}/40 rows · sort scheduled asc` + ACT);
    check("Enter blurs the filter box", kbox.blurs, 1);
    check("and hands the table the first visible row",
          kSel().dataset.id, narrowed[0].id);
    check("the key stops at the input", seenUp, []);

    // Enter committed the box, so the token is a chip and the box is empty.
    check("the committed token became a chip",
          keyed.querySelectorAll(".tv-chip").map((c) => c.text), ["system×"]);
    check("and left the box empty", kbox.value, "");

    const held = kSel().dataset.id;
    kbox.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("a further Enter keeps a selection that is still visible",
          kSel().dataset.id, held);

    // A row that survives the query, so "the selection stayed put" is visible
    // below rather than vacuously true.
    const survivor = narrowed[narrowed.length - 1].id;

    const blurs = kbox.blurs;
    kbox.value = "half-typed";
    kbox.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    check("Escape drops what is half-typed", kbox.value, "");
    check("and leaves the chips standing", kt.getVisible().length, narrowed.length);
    check("without blurring — there was something to drop", kbox.blurs - blurs, 0);
    kbox.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    check("Escape on an empty box blurs instead", kbox.blurs - blurs, 1);

    kbox.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    check("Backspace on an empty box takes the chip back off",
          [keyed.querySelectorAll(".tv-chip").length, kt.getVisible().length], [0, 40]);

    kbox.value = "no-such-headline";
    kbox.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("Enter with nothing matching selects nothing", kSel(), null);
    kbox.dispatchEvent(new Ev("keydown", { key: "Backspace" }));

    // Only Enter touches focus or the selection.
    kt.select(survivor);
    await painted();
    const quiet = kbox.blurs;
    kbox.value = "system";
    kbox.dispatchEvent(new Ev("input"));
    await settle();                                 // the debounce fires on its own
    check("a debounce firing on its own leaves the selection where it was",
          kSel() && kSel().dataset.id, survivor);
    check("and does not blur anything", kbox.blurs - quiet, 0);
    check("an unfinished token is not chipped out from under the caret",
          [kbox.value, keyed.querySelectorAll(".tv-chip").length], ["system", 0]);
  }

  t.setRows([]);
  check("no rows says so", box.querySelector(".tv-empty").style.display, "");
  t.setView(view(5));
  check("setView reloads", hint(), "5 rows · sort scheduled asc" + ACT);

  if (typeof TableView.parseQuery === "function") await filterQuery();
  if (typeof t.getSelection === "function") await cellsChipsPills();
  if (typeof t.getQuery === "function") await virtualKeys();

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
  await sleep(400);                       // the viewport eases the whole way there
  check("and the ease carries the window to it",
        far.querySelector("tbody tr.tv-sel").dataset.id, last);
}

measure()
  .then(smoke)
  .then(() => {
    console.log(fails ? "\n" + fails + " FAILED" : "\nall ok");
    process.exit(fails ? 1 : 0);
  })
  .catch((e) => { console.error(e); process.exit(2); });

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

/**
 * A media-query stub that reads the query instead of sniffing a word out of
 * it. `reduce' and `no-preference' are different answers to one feature, and a
 * stub matching on the feature name alone answers yes to both — so a renderer
 * asking the wrong question passes. PREFS maps feature to the value in force.
 * The returned function is `matchMedia'; its `flip' changes a preference and
 * notifies whatever listened, which is how the system-theme path gets run.
 */
function mediaStub(prefs) {
  const asked = new Map();
  const parse = (q) => /\((prefers-[\w-]+):\s*([\w-]+)\)/.exec(String(q));
  const holds = (m) => !!m && (prefs[m[1]] || "no-preference") === m[2];
  const query = (q) => {
    let list = asked.get(String(q));
    if (!list) {
      list = { media: String(q), matches: false, listeners: [],
               addEventListener(_type, fn) { this.listeners.push(fn); },
               removeEventListener(_type, fn) {
                 const i = this.listeners.indexOf(fn);
                 if (i !== -1) this.listeners.splice(i, 1);
               } };
      asked.set(String(q), list);
    }
    list.matches = holds(parse(list.media));
    return list;
  };
  query.flip = (feature, value) => {
    prefs[feature] = value;
    for (const list of asked.values()) {
      const was = list.matches;
      list.matches = holds(parse(list.media));
      if (list.matches !== was) for (const fn of list.listeners.slice()) fn(list);
    }
  };
  return query;
}

/** A MutationObserver stub that keeps what it was told to watch. */
class Watcher {
  constructor(cb) { this.cb = cb; this.target = null; this.opts = null; Watcher.made.push(this); }
  observe(target, opts) { this.target = target; this.opts = opts; }
  disconnect() { this.opts = null; }
  /** What the browser does when the attribute moves. */
  fire(records) { this.cb(records || [{ type: "attributes" }], this); }
}
Watcher.made = [];
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
    this.repeat = !!(init && init.repeat);
    this.touches = (init && init.touches) || [];
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
    this._value = "";
    this._selStart = 0;
    this._selEnd = 0;
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
  // A real caret. Setting the text puts it at the end, the way typing does;
  // a consumer that wants it elsewhere says so. Without this every caret the
  // renderer reads is `value.length' and every check about where the caret is
  // asserts the same fallback twice.
  get value() { return this._value; }
  set value(v) {
    this._value = String(v);
    this._selStart = this._selEnd = this._value.length;
  }
  get selectionStart() { return this._selStart; }
  set selectionStart(n) { this._selStart = n; }
  get selectionEnd() { return this._selEnd; }
  set selectionEnd(n) { this._selEnd = n; }
  setSelectionRange(a, b) { this._selStart = a; this._selEnd = b; }
  select() { this._selStart = 0; this._selEnd = this._value.length; }
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
  scrollIntoView() {}
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
  documentElement: new El("html"),
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
  { key: "tag", header: "Tags", type: "text" },
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
    tag: TAGS[i % TAGS.length],
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

  // A page turn on a set this size: one slice, one window, one hint.
  const paged = new El("div");
  const pv = TableView.mount(paged, view(COUNT), { pageSize: 100 });
  paged.querySelector(".tv-scroll").clientHeight = 600;
  await bench("page flip (100-row page of 13344)",
              () => sync(() => { pv.nextPage(); pv.previousPage(); }));

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
  check("tokens AND together", shown("state:DONE tag:web"), 3);
  // SCHEMA: predicates sharing one key OR, distinct keys AND, negations AND.
  const done = shown("state:DONE"), next = shown("state:NEXT");
  check("predicates sharing a key OR together", shown("state:DONE state:NEXT"), done + next);
  check("three of them too", shown("state:DONE state:NEXT state:TODO"), done + next + 8);
  check("distinct keys still AND across the OR groups",
        shown("state:DONE state:NEXT tag:web"), 6);
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
  check("the tag column's values are the tags themselves, not the cells",
        type("tag:").sort(), ["daemon", "emacs", "glance", "ops", "read", "system", "web"]);
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
                                    tag: ":web:", scheduled: "2026-01-01 00:00",
                                    deadline: "" } });
  type("state:");
  check("an upsert invalidates the counts", counts(), [7, 8, 8, 8, 9]);
  q.upsertRow(makeRow(0));
  type("state:");
  check("and putting it back restores them", counts(), [8, 8, 8, 8, 8]);

  // Accept mechanics.
  // Tab completes and stays; Enter completes and goes.
  const b = filterOf(box);
  type("sta");
  const held = b.blurs || 0;
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("Tab on a key suggestion completes to key:", b.value, "state:");
  check("and stays in the box for the value", (b.blurs || 0) - held, 0);
  check("and the list moves to the value stage", items(), STATES);
  b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("Tab accepts the highlighted value, with a trailing space",
        b.value, "state:NEXT ");
  check("and the list closes once the token is finished", items(), []);

  type("state:DONE tit");
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("accepting replaces the caret's token and keeps the rest",
        b.value, "state:DONE title:");
  type("-sta");
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("a negated token keeps its -", b.value, "-state:");

  // Precedence: the list gets Enter and Esc first.
  type("sta");
  b.dispatchEvent(new Ev("keydown", { key: "Escape" }));
  check("the first Escape closes the list", items(), []);
  check("and leaves the text alone", b.value, "sta");
  b.dispatchEvent(new Ev("keydown", { key: "Escape" }));
  check("the second Escape clears the box", b.value, "");

  // Enter on a chosen value is one gesture: complete, commit, hand over.
  type("state:DO");
  const blurs = b.blurs || 0;
  b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  await painted();
  check("Enter with the list open completes and then goes",
        [box.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")),
         b.value, (b.blurs || 0) - blurs, items().length],
        [["state:DONE"], "", 1, 0]);
  check("and the table has it", !!box.querySelector(".tv-table tbody tr.tv-sel"), true);
  reset();
  b.value = "system";
  const blurs2 = b.blurs || 0;
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  await painted();
  check("Enter with the list closed commits the token and hands the table over",
        [(b.blurs || 0) - blurs2, b.value, box.querySelectorAll(".tv-chip").length > 0,
         !!box.querySelector(".tv-table tbody tr.tv-sel")], [1, "", true, true]);
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
    // A move that leaves the window where it is writes no HTML at all: the
    // marks are re-stamped on the trs already there, which is what gives them
    // something to crossfade between.
    // Thirty per-event paints would be thirty windows; the ease writes one per
    // frame it travels, and a move that does not shift the window writes none.
    check("far fewer windows than there were calls", bytes < 10 * 18128, true);
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

  // --- the viewport ease: scroll-margin targeting, one retargeting loop
  {
    const sc = box.querySelector(".tv-scroll");
    sc.clientHeight = 300;                        // ten rows on screen
    const rowH = 30, head = 30, port = 300;
    const topOf = (i) => head + i * rowH;
    const downTo = (i) => topOf(i) + rowH - port * 2 / 3;   // foot pinned at 2/3
    const upTo = (i) => topOf(i) - port / 3;               // head pinned at 1/3
    const most = () => Math.max(0, head + t.getVisible().length * rowH - port);

    sc.scrollTop = 0;
    t.select(t.getVisible()[0].id);
    await sleep(300);
    t.select(t.getVisible()[20].id);
    check("moving down does not land in one go", sc.scrollTop < downTo(20), true);
    await sleep(400);
    check("it stops with the row's foot at two thirds", sc.scrollTop, downTo(20));

    t.select(t.getVisible()[8].id);
    await sleep(400);
    check("moving up stops with the row's head at one third", sc.scrollTop, upTo(8));

    // Inside the band the viewport holds still.
    const held = sc.scrollTop;
    t.select(t.getVisible()[9].id);
    await sleep(300);
    check("a step that stays inside the band moves nothing", sc.scrollTop, held);

    // A held run pins the cursor to the band edge: one row of scroll per row.
    t.select(t.getVisible()[20].id);
    await sleep(400);
    const a = sc.scrollTop;
    t.select(t.getVisible()[21].id);
    await sleep(400);
    const b = sc.scrollTop;
    t.select(t.getVisible()[22].id);
    await sleep(400);
    check("and a run down moves exactly one row at a time",
          [b - a, sc.scrollTop - b], [rowH, rowH]);

    // The ends: the cursor walks into the margin rather than the view running on.
    t.select(t.getVisible()[0].id);
    await sleep(500);
    check("at the top it clamps to zero", sc.scrollTop, 0);
    t.select(t.getVisible()[39].id);
    await sleep(600);
    check("and at the bottom to the last screenful", sc.scrollTop, most());

    // Retargeting: a second move mid-flight changes where the one loop heads.
    sc.scrollTop = 0;
    t.select(t.getVisible()[0].id);
    await sleep(300);
    t.select(t.getVisible()[30].id);
    await sleep(20);
    const midway = sc.scrollTop;
    t.select(t.getVisible()[20].id);
    await sleep(400);
    // Retargeting upward, so the new aim is the upward rule's.
    check("a move mid-ease retargets the same loop",
          [midway > 0 && midway < downTo(30), sc.scrollTop], [true, upTo(20)]);

    // The user outranks it.
    sc.scrollTop = 0;
    t.select(t.getVisible()[0].id);
    await sleep(300);
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

    // A click is already looking at its row: it must not yank the viewport.
    t.select(t.getVisible()[20].id);
    await sleep(400);
    const parked = sc.scrollTop;
    const visible = box.querySelectorAll(".tv-table tbody tr[data-id]");
    const clicked = visible[visible.length - 1];
    clicked.children[1].dispatchEvent(new Ev("click"));
    await sleep(300);
    check("a click selects without scrolling",
          [sc.scrollTop, t.getSelection().id], [parked, clicked.dataset.id]);
    sc.clientHeight = 600;
  }

  // --- reduced motion: no crossfade, no ease, still coalesced
  {
    global.matchMedia = mediaStub({ "prefers-reduced-motion": "reduce" });
    const quiet = new El("div");
    const qt = TableView.mount(quiet, view(40));
    delete global.matchMedia;
    const qs = quiet.querySelector(".tv-scroll");
    qs.clientHeight = 300;
    check("a calm root is marked for the stylesheet to see",
          quiet.querySelector(".tv-root").classes.has("tv-calm"), true);
    bytes = 0;
    qt.select(qt.getVisible()[30].id);
    check("the viewport jumps rather than easing",
          qs.scrollTop, 30 + 30 * 30 + 30 - 300 * 2 / 3);
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
  check("holding the label and nothing else",
        [pill.children.length, STATES.indexOf(pill.text) !== -1], [0, true]);
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
  commit("tag:web");
  check("a second commit adds a second chip", chipText(), ["state:DONE", "tag:web"]);
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
        ["state:DONE", "tag:web", "2026"]);

  // The same query typed whole must filter identically — chips are display.
  const box3 = new El("div");
  const t3 = TableView.mount(box3, view(40));
  const b3 = filterOf(box3);
  b3.value = "state:DONE tag:web 2026";
  b3.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("a query split into chips filters as the same query typed whole",
        t3.getVisible().length, composed);
  check("and chips out token by token", box3.querySelectorAll(".tv-chip").length, 3);

  b2.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
  check("Backspace on an empty box strips the last chip",
        chipText(), ["state:DONE", "tag:web"]);
  const mid = box2.querySelectorAll(".tv-chip")[0];
  mid.dispatchEvent(new Ev("click"));
  check("a chip click removes that one", chipText(), ["tag:web"]);
  check("and reapplies what is left", t2.getVisible().length, 13);

  commit('-priority:A "two words"');
  check("a chip shows its token verbatim, quotes and negation and all",
        chipText(), ["tag:web", "-priority:A", '"two words"']);

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
let wb2 = null;
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
  /** The rows of one tier: keys end in `:', word completions are dimmed. */
  const tier = (n) => box.querySelectorAll(".tv-ac-item").filter((e) => {
    const label = e.querySelector(".tv-ac-label").text;
    if (n === 1) return label.endsWith(":");
    return n === 3 ? e.classes.has("tv-ac-dim")
                   : !label.endsWith(":") && !e.classes.has("tv-ac-dim");
  }).map((e) => e.querySelector(".tv-ac-label").text);

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
        shown("glance:review"), shown("tag:glance review"));
  check("negation is the rows without the tag", shown("-web:"), 40 - web);
  {
    // SCHEMA splits same-key grouping by arity. A row carries several tags at
    // once, so repeating a tag key means all of them; a row has one state, so
    // repeating that key means either.
    const ids = (q) => { shown(q); return t.getVisible().map((r) => r.id).sort(); };
    const a = ids("glance:review"), b = ids("glance:sync");
    const both = a.filter((x) => b.indexOf(x) !== -1);
    const union = Array.from(new Set(a.concat(b))).sort();
    check("repeated virtual tag keys AND — the row carries each",
          ids("glance:review glance:sync"), both);
    check("which is narrower than the union they would have made",
          [both.length > 0, both.length < union.length], [true, true]);

    const web = ids("tag:web"), glance = ids("tag:glance");
    const carries = web.filter((x) => glance.indexOf(x) !== -1);
    check("the multi-valued column ANDs within its key too",
          ids("tag:web tag:glance"), carries);
    check("and that is an intersection, not a union",
          [carries.length > 0, carries.length < web.length + glance.length], [true, true]);

    const todo = ids("state:TODO"), done = ids("state:DONE");
    check("a single-valued key still ORs — a row has one state",
          ids("state:TODO state:DONE"),
          Array.from(new Set(todo.concat(done))).sort());

    // One query with both shapes, plus free text, plus a negation.
    const mixed = ids("state:TODO state:DONE tag:web tag:glance 2026 -priority:C");
    const byHand = t.getRows().filter((r) => {
      const c = r.cells, tags = String(c.tag).split(":").filter(Boolean);
      return (c.state === "TODO" || c.state === "DONE")
          && tags.indexOf("web") !== -1 && tags.indexOf("glance") !== -1
          && JSON.stringify(c).indexOf("2026") !== -1
          && c.priority !== "C";
    }).map((r) => r.id).sort();
    check("a mixed query composes both groupings, the text and the negation",
          [mixed, mixed.length > 0], [byHand, true]);
    check("negation is unchanged by any of it",
          ids("-tag:web").length, 40 - web.length);
  }
  check("and AND across different tags", shown("web:glance:") <= Math.min(web, glance), true);

  // --- columns shadow tags on collision
  {
    const shadow = new El("div");
    const rows = view(6).rows.map((r) => ({ id: r.id, cells: { ...r.cells, tag: ":title:" } }));
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
  type("sy");
  const offered = tier(3);
  check("a bare word completes to title words, scoped by tag", offered.length > 0, true);
  check("each a tag and a whole word, not the fragment typed",
        offered.every((x) => /^[^:]+:sy.+/.test(x) && !x.endsWith(":sy")), true);
  check("no more than five of them", offered.length <= 5, true);
  check("and every one of them matches something — the invariant of completing",
        offered.every((x) => shown(x) > 0), true);
  check("a prefix inside a word is not a completion of it",
        (type("yst"), tier(3).length), 0);
  check("and two characters are the least that completes anything",
        (type("s"), tier(3).length), 0);
  check("keys come before the scoped completions",
        (() => { const l = type("sy"); const k = l.filter((x) => x.endsWith(":")).length;
                 return l.slice(0, k).every((x) => x.endsWith(":")); })(), true);

  // Tier 2: values a column has, reached by prefix as well as in full.
  type("TODO");
  check("a word that names a column value completes to it", tier(2), ["state:TODO"]);
  check("with the rows behind it", counts()[0], Math.round(40 / 5));
  check("an exact value suppresses the word completions", tier(3).length, 0);
  check("and is not dimmed itself",
        box.querySelectorAll(".tv-ac-item")[0].classes.has("tv-ac-dim"), false);
  check("a value of a declared list counts too", (type("A"), tier(2)), ["priority:A"]);

  type("TOD");
  check("a prefix of a value reaches it too", tier(2), ["state:TODO"]);
  type("sy");
  check("but a prefix is a guess, so the word completions stand beside it",
        [tier(2).indexOf("tag:system") !== -1, tier(3).length > 0], [true, true]);
  type("we");
  check("the tag column answers by prefix as well", tier(2).indexOf("tag:web") !== -1, true);
  check("and the tag's own key row comes first, being a different token",
        (() => { const l = items(); return l.indexOf("web:") !== -1
                                         && l.indexOf("web:") < l.indexOf("tag:web"); })(), true);
  type("d");
  check("a one-letter prefix still reaches values — only tier three waits",
        tier(2).length > 0, true);
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
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("Tab on a key completion leaves the value to type", b.value, first);
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
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("Tab lands the key with the caret past the colon", b.value, "system:");
  b.value = "system:sy";
  b.dispatchEvent(new Ev("input"));
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("and typing a value after it composes end to end",
        t.getVisible().length > 0, true);

  // --- the contract, on data shaped like the one it was written for
  {
    const own = [
      { key: "title", header: "Headline", type: "text" },
      { key: "tag", header: "Tags", type: "text" },
    ];
    const rows = [
      { id: "a", cells: { title: "call tanik about the lease", tag: ":contact:alberblanc:" } },
      { id: "b", cells: { title: "tanik sent the passport scan", tag: ":contact:doc:" } },
      { id: "c", cells: { title: "tangent worth chasing", tag: ":idea:" } },
      { id: "d", cells: { title: "nothing to complete here", tag: ":idea:book:" } },
      { id: "e", cells: { title: "bookmark the alberblanc thread", tag: ":book:" } },
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
    check("every tag the word sits under comes too",
          list.filter((x) => x.indexOf(":tan") !== -1).sort(),
          ["alberblanc:tanik", "contact:tanik", "doc:tanik", "idea:tangent"]);
    check("each is a whole word, never the fragment",
          list.every((x) => !x.endsWith(":tan")), true);
    check("and each one, run, finds the rows it was counted from",
          (() => {
            cb.value = "contact:tanik";
            cb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
            return ct.getVisible().length;
          })(), 2);

    // The amendment's own case: a prefix of a tag reaches it through the tags
    // column, and the tag's key row stands beside it as a different token.
    const dim = () => cbox.querySelectorAll(".tv-ac-item")
      .filter((e) => e.classes.has("tv-ac-dim"))
      .map((e) => e.querySelector(".tv-ac-label").text);
    const plain = () => cbox.querySelectorAll(".tv-ac-item")
      .filter((e) => !e.classes.has("tv-ac-dim"))
      .map((e) => e.querySelector(".tv-ac-label").text);
    cb.value = "";
    cb.dispatchEvent(new Ev("input"));
    const partial = offer("alberbl");
    check("a prefix of a tag completes to it through the tag column",
          partial.indexOf("tag:alberblanc") !== -1, true);
    check("with the tag's key row beside it, keys first",
          [partial.indexOf("alberblanc:") !== -1,
           partial.indexOf("alberblanc:") < partial.indexOf("tag:alberblanc")], [true, true]);
    check("and the word completion too — a prefix hit is no authority",
          dim().some((x) => x.endsWith(":alberblanc")), true);
    offer("alberblanc");
    check("typed in full, it is exact and the guesses go",
          [plain().indexOf("tag:alberblanc") !== -1, dim().length], [true, 0]);
    // The live report: a corpus whose tag cells are colon-wrapped, with one
    // that is not. Detection has to survive the stray, and the values offered
    // for the column have to be the split tags — the raw `:a:b:' cell can
    // never prefix-match a bare word, so a reroute failure looks exactly like
    // this: no `tag:alberblanc' for `alb'.
    {
      const messy = rows.concat([
        { id: "f", cells: { title: "imported from elsewhere", tag: "alberblanc" } }]);
      const mbox = new El("div");
      const mt = TableView.mount(mbox, { columns: own, rows: messy });
      const mb = filterOf(mbox);
      const mOffer = (q) => {
        mb.value = q;
        mb.dispatchEvent(new Ev("input"));
        return mbox.querySelectorAll(".tv-ac-label").map((e) => e.text);
      };
      check("one cell that is not a list does not cost the column its vocabulary",
            mOffer("alb").indexOf("tag:alberblanc") !== -1, true);
      check("and the tag is still a key of its own",
            mOffer("alb").indexOf("alberblanc:") !== -1, true);
      check("the column's values are the split tags, never the raw cells",
            mOffer("tag:").every((v) => v.indexOf(":") === -1), true);
      check("the bare cell reads as the single value it is",
            mOffer("tag:").indexOf("alberblanc") !== -1, true);
      mb.value = "tag:alberblanc";
      mb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
      // The well-formed row and the stray one, which is the point: the bare
      // cell is a member of the vocabulary rather than an outsider to it.
      check("and it matches both the list row and the bare one",
            mt.getVisible().length, 2);

      // A colon arranged some other way is evidence against, and is taken as
      // such — a time column must not become a tag vocabulary.
      const timed = new El("div");
      TableView.mount(timed, {
        columns: [{ key: "title", header: "H", type: "text" },
                  { key: "at", header: "At", type: "text" }],
        rows: [{ id: "1", cells: { title: "a", at: "09:30" } },
               { id: "2", cells: { title: "b", at: ":x:y:" } },
               { id: "3", cells: { title: "c", at: ":x:" } }],
      });
      const tb = filterOf(timed);
      tb.value = "at:";
      tb.dispatchEvent(new Ev("input"));
      check("a column carrying a time is no column of lists",
            timed.querySelectorAll(".tv-ac-label").map((e) => e.text).indexOf("09:30") !== -1,
            true);
    }

    // A single-valued column keeps its distinct cells, whole.
    {
      const single = new El("div");
      TableView.mount(single, {
        columns: [{ key: "title", header: "H", type: "text" },
                  { key: "who", header: "Who", type: "text" }],
        rows: [{ id: "1", cells: { title: "a", who: "ada lovelace" } },
               { id: "2", cells: { title: "b", who: "ada lovelace" } },
               { id: "3", cells: { title: "c", who: "alan turing" } }],
      });
      const sb = filterOf(single);
      sb.value = "who:";
      sb.dispatchEvent(new Ev("input"));
      check("a single-valued column offers its distinct cells, unsplit",
            single.querySelectorAll(".tv-ac-label").map((e) => e.text),
            ["ada lovelace", "alan turing"]);
      check("counted as cells", single.querySelectorAll(".tv-ac-n").map((e) => Number(e.text)),
            [2, 1]);
    }

    offer("boo");
    check("boo offers the tag as a key and as a value of the tags column",
          [plain().indexOf("book:") !== -1, plain().indexOf("tag:book") !== -1],
          [true, true]);
    check("keys before values",
          plain().indexOf("book:") < plain().indexOf("tag:book"), true);
  }

  // --- C-n and C-p drive the list, and only while it is open
  {
    const at = () => box.querySelectorAll(".tv-ac-item")
      .findIndex((e) => e.classes.has("tv-ac-on"));
    const press = (key, ctrl) => {
      const e = new Ev("keydown", { key });
      e.ctrlKey = !!ctrl;
      b.dispatchEvent(e);
      return e;
    };
    type("sy");
    check("nothing is active to begin with", at(), -1);
    press("n", true);
    check("C-n steps down the list", at(), 0);
    press("n", true);
    check("and again", at(), 1);
    press("p", true);
    check("C-p steps back up", at(), 0);
    check("and they are taken from the page", press("n", true).defaultPrevented, true);

    // Parity: the arrows land in the same place from the same start.
    type("sy");
    press("ArrowDown"); press("ArrowDown");
    const byArrow = at();
    type("sy");
    press("n", true); press("n", true);
    check("C-n and ArrowDown are the same motion", at(), byArrow);

    // With no list they are the browser's, and the table's keymap reserves them.
    reset();
    b.dispatchEvent(new Ev("input"));                 // empty box: no list
    check("with the list closed C-n is left alone",
          [box.querySelectorAll(".tv-ac-item").length, press("n", true).defaultPrevented],
          [0, false]);
    check("and so is C-p", press("p", true).defaultPrevented, false);
  }

  // --- omnibox: the filter is the bar
  {
    const css = document.head.children.map((e) => e.text).join("");
    const plain = new El("div");
    TableView.mount(plain, view(20));
    check("by default the bar still leads with the title",
          [plain.querySelectorAll(".tv-title").length,
           plain.querySelector(".tv-title").text,
           plain.querySelector(".tv-root").classes.has("tv-omni")],
          [1, "Inbox — glance", false]);

    const hero = new El("div");
    const ht = TableView.mount(hero, view(20), { omnibox: true });
    check("omnibox drops the title", hero.querySelectorAll(".tv-title").length, 0);
    check("and marks the root for the stylesheet",
          hero.querySelector(".tv-root").classes.has("tv-omni"), true);
    check("the bar holds the control and nothing else",
          hero.querySelector(".tv-bar").children.map((e) => e.className),
          ["tv-filter-wrap"]);
    check("the applied parts get a row of their own, under it",
          hero.querySelector(".tv-root").children.map((e) => e.className),
          ["tv-bar", "tv-chips", "tv-scroll", "tv-hint"]);
    check("which collapses to nothing while nothing is applied",
          hero.querySelector(".tv-chips").style.display, "none");
    check("while the classic bar keeps its inline chips",
          plain.querySelector(".tv-bar").children.map((e) => e.className),
          ["tv-title", "tv-chips", "tv-filter-wrap"]);
    // The box teaches the grammar, which is the part nobody can guess, in
    // every mode — the control is the same control wherever it is put.
    const TEACH = `tag:book · state:active · -word · "some phrase"`;
    const summoned = new El("div");
    TableView.mount(summoned, view(20), { palette: true });
    check("and every mode's box teaches the query language",
          [filterOf(plain).placeholder, filterOf(hero).placeholder,
           filterOf(summoned).placeholder], [TEACH, TEACH, TEACH]);
    check("in a muted colour that Firefox cannot dim further",
          css.indexOf(".tv-filter::placeholder{color:var(--tv-muted);opacity:1}") !== -1, true);
    check("saying nothing about keys — the legend and the list own those",
          /tab|ret|enter|esc/i.test(TEACH), false);
    check("the control is told to fill, at a larger size",
          [css.indexOf(".tv-omni .tv-filter-wrap{flex:1 1 auto}") !== -1,
           css.indexOf(".tv-omni .tv-filter{flex:1 1 auto;font-size:15px") !== -1],
          [true, true]);
    // The list is positioned against the control, so filling the bar fills it.
    check("and the dropdown hangs under the whole of it",
          css.indexOf(".tv-ac{position:absolute;top:100%;left:0;min-width:100%") !== -1, true);

    // Every flow the bar carries works the same with the title gone.
    const hb = filterOf(hero);
    hb.value = "review";
    hb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("Enter commits and hands over in omnibox too",
          [hero.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")),
           hb.value, hb.blurs, !!hero.querySelector(".tv-table tbody tr.tv-sel")],
          [["review"], "", 1, true]);
    hb.focus();
    hb.value = "sy";
    hb.dispatchEvent(new Ev("input"));
    check("and the suggestions open under it",
          hero.querySelectorAll(".tv-ac-item").length > 0, true);
    hb.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    hb.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    hb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    check("and the ladder walks the chips off",
          [hero.querySelectorAll(".tv-chip").length, ht.getQuery()], [0, ""]);
  }

  // --- the danneskjold light palette, and the idle-built word index
  {
    const css = document.head.children.map((e) => e.text).join("");
    // Role for role from danneskjold-theme.el's light-* block; the values are
    // written down here so a drift in either file shows up as a failure.
    for (const [role, hex] of [["--tv-bg", "#FFFFFF"], ["--tv-fg", "#000000"],
                               ["--tv-alt", "#F8F8FF"], ["--tv-border", "#E3E6EA"],
                               ["--tv-muted", "#667071"], ["--tv-sel", "#F0FFF0"],
                               ["--tv-accent", "#31769F"], ["--tv-hover", "#FAFAFA"]])
      check(`light ${role} is the theme's`, css.indexOf(role + ":" + hex) !== -1, true);
    check("and the light values are in the data-theme override too",
          css.indexOf(':root[data-theme="light"] .tv-root{--tv-fg:#000000') !== -1, true);
    for (const [role, hex] of [["--tv-bg", "#000000"], ["--tv-fg", "#FFFFFF"],
                               ["--tv-alt", "#21252B"], ["--tv-border", "#2a2d3d"],
                               ["--tv-muted", "#A4C2EB"], ["--tv-sel", "#373D4F"],
                               ["--tv-accent", "#4CB5F5"], ["--tv-hover", "#1F1F1F"]])
      check(`dark ${role} is the theme's`, css.indexOf(role + ":" + hex) !== -1, true);
    check("and the sheet names where they came from",
          css.indexOf("danneskjold-theme.el") !== -1, true);
    // The floors, checked with an implementation of WCAG that is this file's
    // own — the renderer's must agree with something, not with itself.
    const rgb = (h) => { h = h.replace("#", "");
      return [0, 2, 4].map((i) => parseInt(h.slice(i, i + 2), 16)); };
    const chan = (c) => (c / 255 <= 0.03928 ? c / 255 / 12.92
                                            : Math.pow((c / 255 + 0.055) / 1.055, 2.4));
    const lum = (c) => 0.2126 * chan(c[0]) + 0.7152 * chan(c[1]) + 0.0722 * chan(c[2]);
    const ratio = (a, b) => { const x = lum(rgb(a)) + 0.05, y = lum(rgb(b)) + 0.05;
                              return x > y ? x / y : y / x; };
    const mixed = (a, b, t) => "#" + rgb(a)
      .map((v, i) => Math.round(v + (rgb(b)[i] - v) * t).toString(16).padStart(2, "0")).join("");
    const hue = (h) => { const [r, g, b] = rgb(h).map((v) => v / 255);
      const mx = Math.max(r, g, b), mn = Math.min(r, g, b);
      if (mx === mn) return 0;
      const d = mx - mn;
      const x = mx === r ? (g - b) / d + (g < b ? 6 : 0) : mx === g ? (b - r) / d + 2 : (r - g) / d + 4;
      return Math.round(x * 60); };

    for (const [name, p] of [
      ["light", { bg: "#FFFFFF", fg: "#000000", alt: "#F8F8FF", muted: "#667071",
                  sel: "#F0FFF0", accent: "#31769F" }],
      ["dark", { bg: "#000000", fg: "#FFFFFF", alt: "#21252B", muted: "#A4C2EB",
                 sel: "#373D4F", accent: "#4CB5F5" }]]) {
      const dimmed = mixed(p.fg, p.bg, 0.4);          // the .6 opacity, resolved
      for (const [what, fgc, bgc, floor] of [
        ["body", p.fg, p.bg, 7], ["body on zebra", p.fg, p.alt, 7],
        ["muted", p.muted, p.bg, 4.5], ["muted on zebra", p.muted, p.alt, 4.5],
        ["selected row", p.fg, p.sel, 7], ["chip text", p.fg, p.alt, 4.5],
        ["dropdown active", p.fg, p.sel, 4.5], ["dimmed suggestion", dimmed, p.bg, 4.5],
        ["accent as text", p.accent, p.bg, 4.5]])
        check(`${name} ${what} clears ${floor}:1`, ratio(fgc, bgc) >= floor, true);
    }
    check("the adjusted light values kept their hue",
          [Math.abs(hue("#667071") - hue("#7F8C8D")) <= 3,
           Math.abs(hue("#31769F") - hue("#4CB5F5")) <= 3], [true, true]);

    // Badge ink: the producer's hex is identity, the renderer owns legibility.
    const inkOf = (el) => /--tv-ink:(#[0-9a-f]{6})/i.exec(el.attrs.get("style") || "")[1];
    const bright = [{ value: "GO", color: "#B6E63E" }, { value: "OK", color: "#9ece6a" }];
    const shape = (dark) => {
      global.matchMedia = mediaStub({ "prefers-color-scheme": dark ? "dark" : "light" });
      const el = new El("div");
      TableView.mount(el, {
        columns: [{ key: "state", header: "S", type: "badge", badges: bright }],
        rows: bright.map((b, i) => ({ id: "b" + i, cells: { state: b.value } })),
      });
      delete global.matchMedia;
      return el.querySelectorAll(".tv-pill").map(inkOf);
    };
    const onLight = shape(false), onDark = shape(true);
    for (let i = 0; i < bright.length; i++) {
      const pill = mixed("#FFFFFF", bright[i].color, 0.15);
      check(`${bright[i].color} is made legible on light`,
            ratio(onLight[i], pill) >= 4.5, true);
      check("and keeps its hue",
            Math.abs(hue(onLight[i]) - hue(bright[i].color)) <= 4, true);
    }
    for (let i = 0; i < bright.length; i++) {
      const pill = mixed("#000000", bright[i].color, 0.15);
      check(`${bright[i].color} already reads on dark, and is left alone`,
            [ratio(bright[i].color, pill) >= 4.5, onDark[i].toLowerCase()],
            [true, bright[i].color.toLowerCase()]);
    }

    // A theme flip redraws, so the ink follows.
    {
      Watcher.made.length = 0;
      global.MutationObserver = Watcher;
      global.matchMedia = mediaStub({ "prefers-color-scheme": "light" });
      const flip = new El("div");
      TableView.mount(flip, {
        columns: [{ key: "state", header: "S", type: "badge", badges: bright }],
        rows: [{ id: "b0", cells: { state: "GO" } }],
      });
      const before = inkOf(flip.querySelector(".tv-pill"));
      global.matchMedia = mediaStub({ "prefers-color-scheme": "dark" });
      const watching = Watcher.made[Watcher.made.length - 1];
      check("the renderer watches the root for a theme attribute",
            [watching.target === document.documentElement,
             (watching.opts.attributeFilter || []).indexOf("data-theme") !== -1],
            [true, true]);
      watching.fire();                              // the data-theme attribute moved
      const after = inkOf(flip.querySelector(".tv-pill"));
      check("a theme flip redraws the badges with the other theme's ink",
            [before !== after, after.toLowerCase()], [true, "#b6e63e"]);
      delete global.MutationObserver;
      delete global.matchMedia;
    }

    // Borders carry nothing, so they stay hairlines in both themes.
    check("every rule is one pixel",
          (css.match(/border(-top|-bottom|-left|-right)?:\s*\d+px/g) || [])
            .every((d) => /:\s*1px/.test(d)), true);
    check("and no border is asked to be prominent",
          [css.indexOf("--tv-border:#E3E6EA") !== -1,
           css.indexOf("--tv-border:#2a2d3d") !== -1], [true, true]);
    // Golden is full strength, so the active suggestion reads by weight and the
    // foreground rather than by an accent colour that would vanish on it.
    check("the active suggestion does not colour its label with the accent",
          css.indexOf(".tv-ac-on{background:var(--tv-sel);color:var(--tv-fg);font-weight:600}")
            !== -1, true);
    check("and hover has a ground of its own now",
          css.indexOf(".tv-ac-item:hover{background:var(--tv-hover)") !== -1, true);
  }

  // --- the index is built when the rows settle, not when someone types
  {
    const many = (n) => ({
      columns: [{ key: "title", header: "H", type: "text" },
                { key: "tag", header: "T", type: "text" }],
      rows: Array.from({ length: n }, (_, i) => ({
        id: "r-" + i,
        cells: { title: WORDS[i % WORDS.length] + " " + WORDS[(i * 3) % WORDS.length] + " " + i,
                 tag: TAGS[i % TAGS.length] },
      })),
    });
    let idles = 0;
    global.requestIdleCallback = (cb) => { idles++; return setTimeout(cb, 0); };

    const warm = new El("div");
    TableView.mount(warm, many(6000));
    await sleep(400);                       // the settle plus the idle turn
    check("the index builds itself with nobody typing", idles > 0, true);
    const wb = filterOf(warm);
    let t0 = now();
    wb.value = "sy"; wb.dispatchEvent(new Ev("input"));
    const afterIdle = now() - t0;

    const cold = new El("div");
    TableView.mount(cold, many(6000));      // no wait: the keystroke arrives first
    const cb2 = filterOf(cold);
    t0 = now();
    cb2.value = "sy"; cb2.dispatchEvent(new Ev("input"));
    const beforeIdle = now() - t0;
    check("a keystroke that beats it still gets an answer",
          cold.querySelectorAll(".tv-ac-item").length > 0, true);
    check("and the idle-built one answers without paying for the build",
          [afterIdle < beforeIdle, afterIdle * 4 < beforeIdle], [true, true]);
    check("both answer the same thing",
          warm.querySelectorAll(".tv-ac-label").map((e) => e.text),
          cold.querySelectorAll(".tv-ac-label").map((e) => e.text));

    // Invalidation re-queues it rather than leaving a stale index behind.
    const before = idles;
    const wt = TableView.mount(warm, many(200));
    wt.setRows(many(300).rows);
    await sleep(400);
    check("a rows change queues another build", idles > before, true);
    wb2 = filterOf(warm);
    wb2.value = "sy"; wb2.dispatchEvent(new Ev("input"));
    check("and what it offers is the new rows'",
          warm.querySelectorAll(".tv-ac-item").length > 0, true);
    delete global.requestIdleCallback;
  }

  // --- initialQuery: chips a consumer is putting back, not a query being run
  {
    const asked = [];
    const back = new El("div");
    const bt = TableView.mount(back, view(40),
                               { onFilter: (q) => asked.push(q), initialQuery: 'state:DONE "two words"' });
    const bb = filterOf(back);
    check("a restored query arrives as chips, with the box empty",
          [back.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")), bb.value],
          [["state:DONE", '"two words"'], ""]);
    check("getQuery answers it", bt.getQuery(), 'state:DONE "two words"');
    check("and nothing was delivered for it — the rows already match", asked, []);

    // From there it behaves as if the chips had been typed.
    bb.value = "review";
    bb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("a commit on top joins them and delivers once",
          [back.querySelectorAll(".tv-chip").length, asked], [3, ['state:DONE "two words" review']]);
    bb.focus();
    bb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    check("the ladder walks the restored ones off too",
          back.querySelectorAll(".tv-chip").length, 2);
    check("and stripLastToken reaches them",
          [bt.stripLastToken(), bt.getQuery()], [true, "state:DONE"]);

    // Locally, the rows have to catch up to what was restored.
    const local = new El("div");
    const lt = TableView.mount(local, view(40), { initialQuery: "state:DONE" });
    check("filtering locally, a restored query is applied at once",
          [lt.getVisible().length, local.querySelectorAll(".tv-chip").length], [8, 1]);
    const none = new El("div");
    TableView.mount(none, view(40), { initialQuery: "   " });
    check("and a blank one restores nothing",
          none.querySelectorAll(".tv-chip").length, 0);
  }

  // --- palette mode: the filter is summoned, not resident
  {
    const css = document.head.children.map((e) => e.text).join("");
    const pal = new El("div");
    const pt = TableView.mount(pal, view(40), { palette: true });
    const pb = filterOf(pal);
    const veil = () => pal.querySelector(".tv-veil");
    const shown = () => veil().style.display !== "none";
    const chipsOf = () => pal.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", ""));

    check("the page carries the chip row and nothing else",
          pal.querySelector(".tv-root").children.map((e) => e.className),
          ["tv-chips", "tv-scroll", "tv-hint", "tv-veil"]);
    check("no bar at all", pal.querySelectorAll(".tv-bar").length, 0);
    check("an unfiltered page has no filter chrome whatever",
          [pal.querySelector(".tv-chips").style.display, shown()], ["none", false]);
    check("the control exists, put away", [!!pb, shown()], [true, false]);
    check("and it lives in the panel, not the page",
          pb.parentNode.parentNode.className, "tv-panel");

    check("the veil is under a consumer's own modal, and over the header",
          [css.indexOf(".tv-veil{position:fixed;inset:0;z-index:90") !== -1,
           css.indexOf(".tv-panel{z-index:91") !== -1], [true, true]);
    check("the panel is the size and place a palette is",
          css.indexOf("width:min(560px,80vw)") !== -1
            && css.indexOf("padding-top:18vh") !== -1, true);

    // --- summon and dissolve
    pt.openFilter();
    check("openFilter raises it and takes the keyboard", [shown(), pb.focused], [true, true]);
    pt.closeFilter();
    check("closeFilter puts it away", [shown(), pb.focused], [false, false]);

    // --- RET: commit, dissolve, hand over
    pt.openFilter();
    pb.value = "review";
    pb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("RET commits, dissolves and hands the table over",
          [chipsOf(), pb.value, shown(),
           !!pal.querySelector(".tv-table tbody tr.tv-sel")],
          [["review"], "", false, true]);
    check("and the chip row is the page's only chrome now",
          pal.querySelector(".tv-chips").style.display, "");

    pt.openFilter();
    pb.dispatchEvent(new Ev("keydown", { key: "Enter" }));   // empty box
    check("RET on an empty box dissolves and hands over", shown(), false);

    // --- the Escape ladder ends in dissolve
    pt.openFilter();
    pb.value = "sy";
    pb.dispatchEvent(new Ev("input"));
    check("a list is open", pal.querySelectorAll(".tv-ac-item").length > 0, true);
    pb.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    check("the first Escape closes the list, and the palette stands",
          [pal.querySelectorAll(".tv-ac-item").length, shown()], [0, true]);
    check("with the text still there", pb.value, "sy");
    pb.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    check("the second drops the text, and it still stands", [pb.value, shown()], ["", true]);
    pb.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    check("the third dissolves it", shown(), false);

    // --- the Backspace ladder stops at the bottom here, rather than leaving
    pt.openFilter();
    pb.value = "sync";
    pb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    pt.openFilter();
    check("two chips on the page behind it", chipsOf().length, 2);
    const blurs = pb.blurs || 0;
    const held = pt.getQuery();
    pb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    pb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    check("Backspace does not reach them — they are not what it is editing",
          [chipsOf().length, shown()], [2, true]);
    for (let i = 0; i < 4; i++) {
      pb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
      pb.dispatchEvent(new Ev("keydown", { key: "Backspace", repeat: true }));
    }
    check("however many times it is pressed, or held",
          [shown(), pb.focused, chipsOf().length, (pb.blurs || 0) - blurs],
          [true, true, 2, 0]);
    check("and the applied query is exactly as it was", pt.getQuery(), held);
    check("nor is there a rung left that would take one",
          chipsOf().length > 0 && shown(), true);

    // The ways out still work from exactly that state.
    pb.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    check("Escape leaves from the emptied box", shown(), false);
    pt.openFilter();
    pb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    pb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("and so does RET", [shown(), pb.blurs > blurs], [false, true]);

    // --- the list's keys work here too. The palette relocates the box into an
    // overlay, and the handler travels with it — this pins that, because a
    // relocation is exactly the sort of change that quietly unhooks a key.
    pt.openFilter();
    pb.value = "sy";
    pb.dispatchEvent(new Ev("input"));
    const pAt = () => pal.querySelectorAll(".tv-ac-item")
      .findIndex((e) => e.classes.has("tv-ac-on"));
    const pPress = (key, ctrl) => {
      const e = new Ev("keydown", { key });
      e.ctrlKey = !!ctrl;
      pb.dispatchEvent(e);
      return e;
    };
    check("a list opens in the palette with nothing chosen",
          [pal.querySelectorAll(".tv-ac-item").length > 0, pAt()], [true, -1]);
    check("C-n steps down it", [pPress("n", true).defaultPrevented, pAt()], [true, 0]);
    check("and again", (pPress("n", true), pAt()), 1);
    check("C-p steps back up", [pPress("p", true).defaultPrevented, pAt()], [true, 0]);
    // Parity with the arrows from the same start, in the same place.
    pb.value = "sy";
    pb.dispatchEvent(new Ev("input"));
    pPress("ArrowDown"); pPress("ArrowDown");
    const byArrow = pAt();
    pb.value = "sy";
    pb.dispatchEvent(new Ev("input"));
    pPress("n", true); pPress("n", true);
    check("C-n and ArrowDown are one motion in the palette too", pAt(), byArrow);
    pb.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    pb.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    pt.closeFilter();

    // --- the palette filters on commit, not as you type
    {
      const asked = [];
      const live = new El("div");
      const lt = TableView.mount(live, view(40), { palette: true, onFilter: (q) => asked.push(q) });
      const lb = filterOf(live);
      const lItems = () => live.querySelectorAll(".tv-ac-label").map((e) => e.text);
      lt.openFilter();
      for (const q of ["s", "sy", "sys", "syst", "syste"]) {
        lb.value = q;
        lb.dispatchEvent(new Ev("input"));
      }
      await sleep(300);                       // well past any debounce there might be
      check("typing in the palette delivers nothing, however long you leave it",
            asked, []);
      check("and forms no chips as it goes",
            live.querySelectorAll(".tv-chip").length, 0);
      check("while the list stays live under the caret", lItems().length > 0, true);
      lb.value = "sy";
      lb.dispatchEvent(new Ev("input"));
      check("following each keystroke", lItems().length > 0, true);

      lb.value = "system";
      lb.dispatchEvent(new Ev("keydown", { key: "Escape" }));   // the list first
      lb.dispatchEvent(new Ev("keydown", { key: "Escape" }));   // then the text
      check("Escape drops the text and still says nothing — it was never said",
            [lb.value, asked], ["", []]);

      lt.openFilter();
      lb.value = "review";
      lb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
      await painted();
      check("RET is the one that delivers, exactly once", asked, ["review"]);
      lt.openFilter();
      lb.value = "sync";
      lb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
      await painted();
      check("and again per commit", asked, ["review", "review sync"]);

      lt.openFilter();
      const said = asked.length;
      for (let i = 0; i < 3; i++)
        lb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
      check("and Backspace delivers nothing either, having nothing to change",
            [asked.length - said, live.querySelectorAll(".tv-chip").length], [0, 2]);
    }

    // --- clicking off is the Escape gesture
    pt.openFilter();
    pb.value = "half";
    veil().dispatchEvent(new Ev("mousedown"));
    check("a click on the backdrop puts it away", shown(), false);

    // --- golden chips, and the floor they have to clear
    const rgbOf = (h) => { h = h.replace("#", "");
      return [0, 2, 4].map((i) => parseInt(h.slice(i, i + 2), 16)); };
    const chan = (c) => (c / 255 <= 0.03928 ? c / 255 / 12.92
                                            : Math.pow((c / 255 + 0.055) / 1.055, 2.4));
    const lum = (c) => 0.2126 * chan(c[0]) + 0.7152 * chan(c[1]) + 0.0722 * chan(c[2]);
    const ratio = (a, b) => { const x = lum(rgbOf(a)) + 0.05, y = lum(rgbOf(b)) + 0.05;
                              return x > y ? x / y : y / x; };
    check("palette chips are the theme's primary highlight, golden on black",
          css.indexOf(".tv-pal .tv-chip{background:#FFD600;color:#000000") !== -1, true);
    check("which the cursor row is not, so the two roles read apart",
          css.indexOf("--tv-sel:#FFD600") === -1, true);
    check("and the selected row is a background and nothing else",
          /\.tv-table tbody tr\.tv-sel\{background:var\(--tv-sel\)\}/.test(css), true);
    check("no stripe, no border, no shadow on it",
          /tr\.tv-sel\{[^}]*(border|box-shadow)/.test(css), false);
    check("which clears the text floor by a distance", ratio("#000000", "#FFD600") >= 7, true);
    check("and is one pair for both themes — the contrast is in the pair",
          css.split(".tv-pal .tv-chip{").length, 2);

    // --- restoration and the handle work the same here
    const back = new El("div");
    const bt = TableView.mount(back, view(40),
                               { palette: true, initialQuery: "state:DONE review" });
    check("initialQuery restores chips in palette mode too",
          [back.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")),
           bt.getQuery()],
          [["state:DONE", "review"], "state:DONE review"]);
    check("the page shows them without the control being summoned",
          [back.querySelector(".tv-chips").style.display,
           back.querySelector(".tv-veil").style.display], ["", "none"]);
    check("and stripLastToken walks them off as ever",
          [bt.stripLastToken(), bt.getQuery()], [true, "state:DONE"]);

    // --- omnibox is untouched by any of it
    const omni = new El("div");
    TableView.mount(omni, view(20), { omnibox: true });
    check("omnibox still keeps its control on the page",
          [omni.querySelector(".tv-root").children.map((e) => e.className),
           omni.querySelectorAll(".tv-veil").length,
           omni.querySelector(".tv-root").classes.has("tv-pal")],
          [["tv-bar", "tv-chips", "tv-scroll", "tv-hint"], 0, false]);
    check("and its chips are not golden",
          omni.querySelector(".tv-root").classes.has("tv-omni"), true);
  }

  // --- RET is stage-aware: a key completes and waits, a value completes and goes
  {
    const asked = [];
    const st = new El("div");
    const t = TableView.mount(st, view(40), { onFilter: (q) => asked.push(q) });
    const b = filterOf(st);
    const labels = () => st.querySelectorAll(".tv-ac-label").map((e) => e.text);
    const counts = () => st.querySelectorAll(".tv-ac-n").map((e) => Number(e.text));
    const type = (q) => { b.value = q; b.dispatchEvent(new Ev("input")); };
    const on = () => st.querySelectorAll(".tv-ac-on").length;

    // The contract: `tag:' by RET, then the tags with their counts.
    type("ta");
    check("a bare word offers the column key", labels()[0], "tag:");
    check("which is the one thing preselected", on(), 1);
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("RET completes it to `key:' and stays", [b.value, b.blurs || 0], ["tag:", 0]);
    check("with the caret past the colon",
          b.selectionStart === undefined || b.selectionStart === 4, true);
    check("nothing was delivered — the token is half a predicate", asked, []);
    check("and the list is already showing that key's values",
          labels().sort(),
          ["daemon", "emacs", "glance", "ops", "read", "system", "web"]);
    check("each with the rows behind it", counts().every((n) => n > 0), true);
    check("none of them chosen for the user", on(), 0);

    // From there: RET again is the presence predicate they typed.
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("a second RET commits the presence predicate, not a guessed value",
          [st.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")), asked],
          [["tag:"], ["tag:"]]);
    check("and hands the table over", b.blurs, 1);

    // Or: arrow to a value, and RET finishes the whole thing.
    asked.length = 0;
    b.focus();
    type("state:");
    check("a value list opens with nothing chosen", on(), 0);
    b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
    const picked = labels()[0];
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("RET on a chosen value completes and goes",
          [st.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")).pop(),
           b.value, st.querySelectorAll(".tv-ac-item").length],
          ["state:" + picked, "", 0]);
    check("delivering once, with the table taking over", [asked.length, b.blurs], [1, 2]);

    // Tab is unchanged at both stages: accept and stay, either way.
    b.focus();
    type("ta");
    b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
    check("Tab on a key completes it and stays", [b.value, b.blurs], ["tag:", 2]);
    b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
    const tagPick = labels()[0];
    b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
    check("Tab on a value finishes the token and still stays",
          [b.value, b.blurs], ["tag:" + tagPick + " ", 2]);
    check("and commits nothing on its own",
          st.querySelectorAll(".tv-chip").length, 2);

    // A whole token offered at the key stage still goes on RET.
    b.value = "";
    b.dispatchEvent(new Ev("input"));
    type("TODO");
    b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("and a finished token offered beside a bare word goes on RET",
          [st.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")).pop(),
           b.value], ["state:TODO", ""]);
  }

  // --- where the browser eats C-n, the list says so rather than going quiet
  {
    const box = new El("div");
    TableView.mount(box, view(40));
    const b = filterOf(box);
    const open = () => { b.value = "sy"; b.dispatchEvent(new Ev("input")); };
    const note = () => box.querySelectorAll(".tv-ac-note").map((e) => e.text);
    const items = () => box.querySelectorAll(".tv-ac-item").length;

    open();
    check("with no browser to ask, nothing is claimed", note(), []);
    const was = items();

    // Node defines its own `navigator' as getter-only, so it is replaced
    // rather than assigned.
    const ua = (s) => Object.defineProperty(global, "navigator",
      { value: s === null ? undefined : { userAgent: s }, configurable: true });
    ua("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) "
       + "Chrome/126.0.0.0 Safari/537.36");
    open();
    check("Chrome is told which two keys it is eating",
          note(), ["C-n/C-p need Firefox/webview — arrows/Tab work everywhere"]);
    check("and the suggestions are untouched beside it", items(), was);
    check("the note is not one of them, so it cannot be arrowed to or clicked",
          box.querySelectorAll(".tv-ac-note .tv-ac-label").length, 0);

    ua("Mozilla/5.0 (X11; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0");
    open();
    check("Firefox delivers both, and is told nothing", note(), []);

    ua("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) "
       + "table-view/1.0 Chrome/126.0.0.0 Electron/31.0.0 Safari/537.36");
    open();
    check("nor is a webview shell, which delivers them too", note(), []);

    ua("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 "
       + "(KHTML, like Gecko) Version/17.0 Safari/605.1.15");
    open();
    check("nor Safari, which is not of that family", note(), []);

    ua("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) "
       + "Chrome/126.0.0.0 Safari/537.36");
    open();
    b.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    check("and with no list there is nothing to say", note(), []);
    ua(null);
  }

  // --- colons in a suggestion come from real tags, never from prose
  {
    const own = [{ key: "title", header: "H", type: "text" },
                 { key: "tag", header: "T", type: "text" }];
    const rows = [
      { id: "a", cells: { title: "Episode 84: Dick Gabriel on Lisp: Software Engineering Radio",
                          tag: ":article:" } },
      { id: "b", cells: { title: "notes, quotes and (parens) [brackets] {braces};",
                          tag: ":article:" } },
      { id: "c", cells: { title: "well-known snake_case survives", tag: ":article:" } },
    ];
    const box = new El("div");
    TableView.mount(box, { columns: own, rows });
    const b = filterOf(box);
    const offer = (q) => {
      b.value = q;
      b.dispatchEvent(new Ev("input"));
      return box.querySelectorAll(".tv-ac-label").map((e) => e.text);
    };

    // The reported title, verbatim: "Lisp:" must index as lisp and compose a
    // suggestion that reads like the tag it names and no other.
    check("a word wearing a colon indexes without it",
          offer("lis").filter((x) => !x.endsWith(":")), ["article:lisp"]);
    check("and no colon-bearing variant of it exists anywhere",
          offer("lis").some((x) => x.indexOf("lisp:") !== -1), false);
    check("the reported title yields no tag-shaped artifact",
          offer("lisp").concat(offer("gabriel"), offer("radio"))
            .every((x) => x.split(":").length <= 2), true);

    // Every edge, one table.
    for (const [typed, want] of [["quot", "article:quotes"], ["paren", "article:parens"],
                                 ["brack", "article:brackets"], ["brace", "article:braces"],
                                 ["radi", "article:radio"], ["episod", "article:episode"]])
      check(`${typed} completes to ${want}`, offer(typed).indexOf(want) !== -1, true);
    check("interior punctuation is part of the word",
          [offer("well-kn").indexOf("article:well-known") !== -1,
           offer("snake_").indexOf("article:snake_case") !== -1], [true, true]);
    check("a prefix typed with punctuation finds the clean word too",
          offer("lisp:").length >= 0 && offer("radio,").indexOf("article:radio") === -1, true);

    // The invariant, over every prefix the fixture can answer.
    const every = [];
    for (const q of ["lis", "gab", "rad", "quo", "par", "bra", "epi", "sof", "eng", "wel", "sna"])
      every.push(...offer(q));
    check("no suggestion's value part carries a colon", 
          every.every((x) => x.slice(x.indexOf(":") + 1).indexOf(":") === -1), true);
  }

  // --- the multi-valued verdict dies with the rows it was read from
  {
    const own = [{ key: "title", header: "H", type: "text" },
                 { key: "tag", header: "T", type: "text" }];
    const box = new El("div");
    // Mounted before its rows arrive, which is what a store still loading, or
    // a query that matched nothing, looks like.
    const t = TableView.mount(box, { columns: own, rows: [] });
    const b = filterOf(box);
    check("nothing to go on yet", t.getVisible().length, 0);

    t.setRows([
      { id: "a", cells: { title: "one", tag: ":alpha:beta:" } },
      { id: "b", cells: { title: "two", tag: ":alpha:" } },
      { id: "c", cells: { title: "three", tag: ":beta:" } },
    ]);
    b.value = "alp";
    b.dispatchEvent(new Ev("input"));
    const labels = box.querySelectorAll(".tv-ac-label").map((e) => e.text);
    check("the rows arriving give it a vocabulary after all",
          [labels.indexOf("alpha:") !== -1, labels.indexOf("tag:alpha") !== -1], [true, true]);

    const shown = (q) => {
      b.value = "";
      b.dispatchEvent(new Ev("input"));
      b.value = q;
      b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
      const n = t.getVisible().length;
      b.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
      return n;
    };
    check("virtual keys resolve against it", shown("alpha:"), 2);
    check("and repeated ones intersect, the arity being known",
          shown("tag:alpha tag:beta"), 1);
    check("rather than offering the raw cell as a value", (() => {
      b.value = "";
      b.dispatchEvent(new Ev("input"));
      b.value = "tag:";
      b.dispatchEvent(new Ev("input"));
      return box.querySelectorAll(".tv-ac-label").map((e) => e.text).sort();
    })(), ["alpha", "beta"]);
  }

  // --- a date column survives a stamp it does not recognise
  {
    const own = [{ key: "title", header: "H", type: "text" },
                 { key: "scheduled", header: "S", type: "text" },
                 { key: "tag", header: "T", type: "text" }];
    const rows = [
      { id: "a", cells: { title: "one", scheduled: "2026-08-01", tag: ":x:" } },
      { id: "b", cells: { title: "two", scheduled: "2026-08-02 09:30", tag: ":x:" } },
      { id: "c", cells: { title: "three", scheduled: "<2026-09-03 Thu>", tag: ":x:" } },
      { id: "d", cells: { title: "four", scheduled: "", tag: ":x:" } },
    ];
    const box = new El("div");
    const t = TableView.mount(box, { columns: own, rows });
    const b = filterOf(box);
    const shown = (q) => { b.value = q; b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
                           const n = t.getVisible().length;
                           b.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
                           return n; };
    check("one stamp it cannot parse does not cost the column its prefix matching",
          shown("scheduled:2026-08"), 2);
    check("and prefix it is, not substring", shown("scheduled:08"), 0);

    // A column of prose is still no date column, whatever dates fall in it.
    const prose = new El("div");
    const pt = TableView.mount(prose, { columns: own, rows: rows.map((r, i) => ({
      id: r.id, cells: { title: i < 2 ? "2026-08-0" + i : "a sentence about things",
                         scheduled: r.cells.scheduled, tag: ":x:" } })) });
    const pb = filterOf(prose);
    pb.value = "title:sentence";
    pb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("so a title column matches by substring as it always did",
          pt.getVisible().length, 2);
  }

  // --- three roles, three shapes: filled pill, golden chip, ghost tag
  {
    const css = document.head.children.map((e) => e.text).join("");
    const box = new El("div");
    const t = TableView.mount(box, view(40), { pageSize: 0 });
    const b = filterOf(box);
    const tagCell = () => box.querySelectorAll(".tv-table tbody tr[data-id]")[0]
      .children[columns.findIndex((c) => c.key === "tag")];

    // --- the cell
    const cell = tagCell();
    const chips = cell.querySelectorAll(".tv-tag").map((e) => e.text);
    check("a multi-valued cell renders one tag per value",
          chips, TAGS[0].split(":").filter(Boolean));
    check("split exactly as the vocabulary splits it", (() => {
      b.value = "tag:";
      b.dispatchEvent(new Ev("input"));
      const vocab = box.querySelectorAll(".tv-ac-label").map((e) => e.text);
      b.dispatchEvent(new Ev("keydown", { key: "Escape" }));
      return chips.every((c) => vocab.indexOf(c) !== -1);
    })(), true);
    check("and the raw colons are gone from it", cell.text.indexOf(":"), -1);
    check("several of them read apart on a middot",
          cell.querySelector(".tv-tags").text, chips.join(" · "));
    check("a single-valued column is untouched",
          box.querySelectorAll(".tv-table tbody tr[data-id]")[0]
            .children[columns.findIndex((c) => c.key === "title")]
            .querySelectorAll(".tv-tag").length, 0);

    // --- the style
    // The quietest of the three roles wears nothing: no box of any kind.
    const tagRule = css.slice(css.indexOf(".tv-tag,.tv-tags{"));
    const decl = tagRule.slice(0, tagRule.indexOf("}"));
    for (const box of ["border", "background", "padding", "border-radius"])
      check(`a tag draws no ${box}`, decl.indexOf(box) !== -1, false);
    check("it is muted ink at a smaller size, and that is all",
          [decl.indexOf("color:var(--tv-muted)") !== -1,
           decl.indexOf("font-size:.92em") !== -1], [true, true]);
    check("and the two never compound their size",
          css.indexOf(".tv-tags .tv-tag{font-size:inherit") !== -1, true);

    // Shown in the form a query spells them, without the markup losing the form
    // the file holds.
    check("tags are lowercased for reading",
          css.indexOf(".tv-tag{text-transform:lowercase}") !== -1, true);
    {
      const mixed = new El("div");
      const mt = TableView.mount(mixed, {
        columns: [{ key: "title", header: "H", type: "text" },
                  { key: "tag", header: "T", type: "text" }],
        rows: [{ id: "a", cells: { title: "one", tag: ":MixedCase:Work:" } },
               { id: "b", cells: { title: "two", tag: ":MixedCase:" } },
               { id: "c", cells: { title: "three", tag: ":other:" } }],
      });
      const mb = filterOf(mixed);
      check("the markup keeps the case the file wrote, for copies and for search",
            mixed.querySelectorAll(".tv-tag").map((e) => e.text).slice(0, 2),
            ["MixedCase", "Work"]);
      const shown = (q) => {
        mb.value = q;
        mb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
        const n = mt.getVisible().length;
        mb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
        return n;
      };
      check("and the form on screen is the form that queries",
            [shown("mixedcase:"), shown("tag:mixedcase")], [2, 2]);
      check("the raw case still matching as a value, as it always did",
            shown("tag:MixedCase"), 2);
    }
    // The floor, with this file's own WCAG, on every ground a tag sits on.
    const rgbOf = (h) => { h = h.replace("#", "");
      return [0, 2, 4].map((i) => parseInt(h.slice(i, i + 2), 16)); };
    const chan = (c) => (c / 255 <= 0.03928 ? c / 255 / 12.92
                                            : Math.pow((c / 255 + 0.055) / 1.055, 2.4));
    const lum = (c) => 0.2126 * chan(c[0]) + 0.7152 * chan(c[1]) + 0.0722 * chan(c[2]);
    const ratio = (a, bg) => { const x = lum(rgbOf(a)) + 0.05, y = lum(rgbOf(bg)) + 0.05;
                               return x > y ? x / y : y / x; };
    for (const [theme, ink, grounds] of [
      ["dark", "#A4C2EB", ["#000000", "#21252B", "#373D4F"]],
      ["light", "#667071", ["#FFFFFF", "#F8F8FF", "#F0FFF0"]]])
      check(`${theme} tag ink clears the floor on every ground it sits on`,
            grounds.every((g) => ratio(ink, g) >= 4.5), true);
    check("the theme's own comment colour would not have, on light",
          ratio("#7F8C8D", "#FFFFFF") < 4.5, true);

    // --- the dropdown
    b.value = "sys";
    b.dispatchEvent(new Ev("input"));
    const keyRow = box.querySelectorAll(".tv-ac-item")[0];
    check("a tag-key row wears the tag in the same muted hand",
          [keyRow.querySelectorAll(".tv-tag").map((e) => e.text),
           keyRow.querySelector(".tv-ac-label").text], [["system"], "system:"]);
    b.value = "sy";
    b.dispatchEvent(new Ev("input"));
    const scoped = box.querySelectorAll(".tv-ac-item")
      .filter((e) => e.classes.has("tv-ac-dim"));
    check("and a scoped row wears its tag part, the word plain",
          [scoped[0].querySelectorAll(".tv-tag").length,
           scoped[0].querySelector(".tv-ac-label").text.indexOf(
             scoped[0].querySelector(".tv-tag").text + ":")], [1, 0]);
    check("column-key rows wear none of it", (() => {
      b.value = "sta";
      b.dispatchEvent(new Ev("input"));
      return box.querySelectorAll(".tv-ac-item")[0].querySelectorAll(".tv-tag").length;
    })(), 0);
    b.dispatchEvent(new Ev("keydown", { key: "Escape" }));

    // --- the applied filter outranks the tag it names
    b.value = "tag:web";
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    const chip = box.querySelector(".tv-chip");
    check("an applied filter is a golden chip, whatever it names",
          [!!chip, chip.querySelectorAll(".tv-tag").length], [true, 0]);
    check("one rule for all of them, not one per token",
          css.indexOf(".tv-pal .tv-chip{background:#FFD600;color:#000000") !== -1, true);

    // --- and none of it moved the data
    b.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    check("filtering still reads the raw text",
          (() => { b.value = "tag:web";
                   b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
                   const n = t.getVisible().length;
                   b.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
                   return n; })(), 13);
    check("and sorting it", (() => {
      box.querySelector("th[data-key=state]").click();
      const first = t.getVisible()[0].cells.state;
      box.querySelector("th[data-key=scheduled]").click();
      return first;
    })(), "NEXT");
  }

  // --- the preferences, asked properly
  {
    const calm = (value) => {
      global.matchMedia = mediaStub({ "prefers-reduced-motion": value });
      const el = new El("div");
      TableView.mount(el, view(10));
      delete global.matchMedia;
      return el.querySelector(".tv-root").classes.has("tv-calm");
    };
    check("reduce is honoured", calm("reduce"), true);
    check("and no-preference is not — they are different answers",
          calm("no-preference"), false);

    const badged = {
      columns: [{ key: "state", header: "S", type: "badge",
                  badges: [{ value: "GO", color: "#B6E63E" }] }],
      rows: [{ id: "a", cells: { state: "GO" } }],
    };
    const inkIn = (el) => /--tv-ink:(#[0-9a-f]{6})/i
      .exec(el.querySelector(".tv-pill").attrs.get("style"))[1].toLowerCase();
    const scheme = (value) => {
      global.matchMedia = mediaStub({ "prefers-color-scheme": value });
      const el = new El("div");
      TableView.mount(el, badged);
      delete global.matchMedia;
      return inkIn(el);
    };
    check("dark is read as dark", scheme("dark"), "#b6e63e");
    check("and light as light, the ink moving to suit", scheme("light") !== "#b6e63e", true);

    // The system changing its mind under a running page — a path no check could
    // reach while the stub had no way to notify anyone.
    const flip = mediaStub({ "prefers-color-scheme": "light" });
    global.matchMedia = flip;
    const live = new El("div");
    TableView.mount(live, badged);
    const before = inkIn(live);
    flip.flip("prefers-color-scheme", "dark");
    check("the system turning dark redraws what depended on it",
          [before !== "#b6e63e", inkIn(live)], [true, "#b6e63e"]);
    delete global.matchMedia;
  }

  // --- the paginator
  {
    const box = new El("div");
    const t = TableView.mount(box, view(250), { pageSize: 100 });
    box.querySelector(".tv-scroll").clientHeight = 600;
    const b = filterOf(box);
    const hintOf = () => box.querySelector(".tv-hint").textContent;
    const ids = () => t.getVisible().map((r) => r.id);
    const rowsIn = () => box.querySelectorAll(".tv-table tbody tr[data-id]").length;

    // --- slicing
    check("getVisible is the page, not the set", t.getVisible().length, 100);
    check("and it is the first hundred of the sorted set",
          ids()[0], t.getRows().slice().sort((x, y) =>
            String(x.cells.scheduled).localeCompare(String(y.cells.scheduled)))[0].id);
    check("the pager counts the pages", t.pageInfo(), { page: 1, pages: 3, from: 1, to: 100, total: 250 });
    t.nextPage(); t.nextPage();
    check("and the last one is the partial one",
          [t.pageInfo(), t.getVisible().length],
          [{ page: 3, pages: 3, from: 201, to: 250, total: 250 }, 50]);
    check("the window renders inside the page", rowsIn() <= 50, true);

    // --- the line
    check("the range stands where the count did, with the way either side",
          hintOf().slice(0, hintOf().indexOf(" · sort")),
          "201–250 of 250 · ‹ prev · next ›");
    t.previousPage(); t.previousPage();
    check("thousands are grouped", (() => {
      const big = new El("div");
      const bt = TableView.mount(big, view(2000), { pageSize: 100 });
      return big.querySelector(".tv-hint").textContent.split(" · ")[0];
    })(), "1–100 of 2,000");
    check("a page holding one row is a range of itself", (() => {
      const one = new El("div");
      const ot = TableView.mount(one, view(3), { pageSize: 1 });
      ot.nextPage();
      return one.querySelector(".tv-hint").textContent.split(" · ")[0];
    })(), "2 of 3");
    check("prev is dead on the first page, next on the last",
          [box.querySelectorAll(".tv-pg-off").map((e) => e.text),
           (t.nextPage(), t.nextPage(), box.querySelectorAll(".tv-pg-off").map((e) => e.text))],
          [["‹ prev"], ["next ›"]]);
    t.previousPage(); t.previousPage();

    // --- off, and with one page, the line is what it always was
    check("one page hides the pager entirely", (() => {
      const small = new El("div");
      TableView.mount(small, view(40), { pageSize: 100 });
      return small.querySelector(".tv-hint").textContent;
    })(), "40 rows · sort scheduled asc" + ACT);
    check("and no pageSize is the same line again", (() => {
      const off = new El("div");
      TableView.mount(off, view(40));
      return off.querySelector(".tv-hint").textContent;
    })(), "40 rows · sort scheduled asc" + ACT);
    check("with no pager targets in it", box.querySelectorAll(".tv-pg").length > 0, true);

    // --- resets and clamps
    t.nextPage();
    check("on page two", t.pageInfo().page, 2);
    b.value = "system";
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("a query change reads from the top again", t.pageInfo().page, 1);
    check("of the filtered set", t.pageInfo().total < 250, true);
    b.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    t.nextPage();
    box.querySelector("th[data-key=state]").click();
    check("and so does a sort change", t.pageInfo().page, 1);

    t.nextPage(); t.nextPage();
    check("on the last page", t.pageInfo().page, 3);
    t.setRows(view(120).rows);
    check("a shorter set clamps rather than stranding the reader",
          t.pageInfo(), { page: 2, pages: 2, from: 101, to: 120, total: 120 });
    t.setRows(view(250).rows);

    // --- continuous movement
    const pg = new El("div");
    const pt = TableView.mount(pg, view(250), { pageSize: 100 });
    pg.querySelector(".tv-scroll").clientHeight = 300;
    const sc = pg.querySelector(".tv-scroll");
    pt.select(pt.getVisible()[99].id, 2);
    await sleep(400);
    check("selected on the last row of page one, in a column",
          [pt.getSelection().col, pt.pageInfo().page], [2, 1]);
    const wasLast = pt.getSelection().id;
    check("stepping past it turns the page", pt.selectStep(1), true);
    await sleep(400);
    check("landing on the first row of the next, column carried",
          [pt.pageInfo().page, pt.getSelection().id, pt.getSelection().col],
          [2, pt.getVisible()[0].id, 2]);
    check("with the viewport at the top of it, the band asking nothing more",
          sc.scrollTop, 0);
    check("and the mark on it",
          pg.querySelector(".tv-table tbody tr.tv-sel").dataset.id, pt.getVisible()[0].id);

    check("stepping back turns it again", pt.selectStep(-1), true);
    await sleep(400);
    check("landing on the last row of the one before, and the same column",
          [pt.pageInfo().page, pt.getSelection().id, pt.getSelection().col],
          [1, wasLast, 2]);
    check("with the viewport at the end it arrived at",
          sc.scrollTop > 0 && sc.scrollTop <= 30 + 100 * 30 - 300, true);

    check("and at the very ends it stays put",
          [(pt.select(pt.getVisible()[0].id), pt.selectStep(-1)), pt.pageInfo().page],
          [false, 1]);
    pt.nextPage(); pt.nextPage();
    await sleep(400);
    pt.select(pt.getVisible()[pt.getVisible().length - 1].id);
    check("at the far end likewise",
          [pt.selectStep(1), pt.pageInfo().page], [false, 3]);

    // --- the pointer reaches the same thing
    pt.previousPage(); pt.previousPage();
    const next = pg.querySelectorAll(".tv-pg").filter((e) => e.dataset.pg === "1")[0];
    next.dispatchEvent(new Ev("click"));
    check("a click on next turns the page", pt.pageInfo().page, 2);
    const prev = pg.querySelectorAll(".tv-pg").filter((e) => e.dataset.pg === "-1")[0];
    prev.dispatchEvent(new Ev("click"));
    check("and one on prev turns it back", pt.pageInfo().page, 1);
    prev.dispatchEvent(new Ev("click"));
    check("a dead one does nothing", pt.pageInfo().page, 1);

    // --- off mode keeps every promise it had
    const off = new El("div");
    const ot = TableView.mount(off, view(40));
    check("with no page size there is one page of everything",
          [ot.pageInfo(), ot.getVisible().length],
          [{ page: 1, pages: 1, from: 1, to: 40, total: 40 }, 40]);
    check("and selectStep is plain movement",
          [ot.selectStep(1), ot.getSelection().id], [true, ot.getVisible()[0].id]);
  }

  // --- the touch pass: bigger targets, and a long press for the row action
  {
    const css = document.head.children.map((e) => e.text).join("");
    const coarse = css.slice(css.indexOf("@media (pointer:coarse){"));
    check("there is a coarse-pointer block", coarse.indexOf("@media (pointer:coarse){"), 0);
    for (const [what, rule] of [
      ["rows grow by padding", ".tv-table th,.tv-table td{padding:12px}"],
      ["suggestions too", ".tv-ac-item{padding:12px 12px}"],
      ["and chips", ".tv-chip{padding:13px 8px 13px 12px}"],
      ["the remove mark stops waiting for a hover", ".tv-chip-x{opacity:1"],
      ["and the box clears iOS's zoom threshold", ".tv-panel .tv-filter{font-size:16px}"]])
      check(what, coarse.indexOf(rule) !== -1, true);
    check("nothing in it sets a row height — the height is the padding's business",
          /(^|[;{])height:/.test(coarse.slice(0, coarse.indexOf("}\n"))), false);

    // The windowing reads a measured height, so the coarse padding carries into
    // it with nothing else changed. Standing in for that here by moving what
    // the shim reports a row measures.
    const tall = new El("div");
    ROW_PX = 44;
    const tt = TableView.mount(tall, view(500));
    const sc = tall.querySelector(".tv-scroll");
    sc.clientHeight = 440;
    sc.scrollTop = 44 * 20;
    sc.dispatchEvent(new Ev("scroll"));
    await sleep(60);
    const pad = tall.querySelectorAll(".tv-table tbody tr.tv-pad")[0];
    const first = tt.getVisible()
      .findIndex((r) => r.id === tall.querySelectorAll("tbody tr[data-id]")[0].dataset.id);
    // Written into the markup, so it is read back off the attribute.
    check("the spacers are sized from the measured height, not from 30",
          pad.attrs.get("style"), "height:" + first * 44 + "px");
    check("and the window sits where that height puts it",
          first, Math.max(0, Math.floor((44 * 20 - 44) / 44) - 15));
    ROW_PX = 30;

    // --- the long press
    const box = new El("div");
    const seen = [];
    const t = TableView.mount(box, view(40), {
      onAction: (command, id) => seen.push(command + " " + id),
    });
    box.querySelector(".tv-scroll").clientHeight = 600;
    const sc2 = box.querySelector(".tv-scroll");
    const rowAt = (i) => box.querySelectorAll(".tv-table tbody tr[data-id]")[i];
    const finger = (type, el, x, y, opts) => {
      const e = new Ev(type, Object.assign({ touches: [{ clientX: x, clientY: y }] }, opts));
      (el || sc2).dispatchEvent(e);
      return e;
    };

    const tr = rowAt(4), id = tr.dataset.id;
    finger("touchstart", tr.children[2], 100, 100);
    check("nothing happens on contact", [seen.length, t.getSelection().id], [0, null]);
    await sleep(600);
    check("a finger that stayed put runs the row's default action", seen.pop(),
          "materialize " + id);
    check("having selected the cell it was on first", t.getSelection(), { id, col: 2 });
    const end = finger("touchend", tr, 100, 100);
    check("and that touchend is swallowed, so no click or menu follows it",
          end.defaultPrevented, true);
    const plain = finger("touchend", tr, 100, 100);
    check("while an ordinary one is left alone", plain.defaultPrevented, false);

    // Drift means it was a scroll all along.
    const tr2 = rowAt(6);
    finger("touchstart", tr2.children[1], 100, 100);
    finger("touchmove", sc2, 100, 118);
    await sleep(600);
    check("a finger that slid is a scroll, not an action", seen.length, 0);
    check("and it left the selection alone", t.getSelection().id, id);

    // Inside the slop it still counts.
    finger("touchstart", tr2.children[1], 100, 100);
    finger("touchmove", sc2, 104, 106);
    await sleep(600);
    check("a small tremor does not call it off", seen.pop(), "materialize " + tr2.dataset.id);
    finger("touchend", tr2, 104, 106);

    // A scroll of any size calls it off, whoever started it.
    const tr3 = rowAt(8);
    finger("touchstart", tr3.children[1], 100, 100);
    sc2.dispatchEvent(new Ev("scroll"));
    await sleep(600);
    check("and a scroll calls it off outright", seen.length, 0);

    // The ease still gives way to a finger — the regression that pass rests on.
    check("touchmove still cancels the scroll ease",
          (() => {
            sc2.scrollTop = 0;
            t.select(t.getVisible()[0].id);
            return true;
          })(), true);
    t.select(t.getVisible()[35].id);
    await sleep(20);
    finger("touchmove", sc2, 100, 140);
    const stopped = sc2.scrollTop;
    await sleep(300);
    check("so a touch-scroll is never fought for the viewport", sc2.scrollTop, stopped);
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
    check("and sending nothing for it — the producer never heard that text",
          asked.length, 2);
    check("then the chips, last first", ht.stripLastToken(), true);
    check("which getQuery follows", ht.getQuery(), "glance:");
    check("and again", [ht.stripLastToken(), ht.getQuery()], [true, ""]);
    check("false once there is nothing left", ht.stripLastToken(), false);
    check("and nothing delivered for it", asked.length, 4);
    check("focus is the caller's business", (hb.blurs || 0) - blurs, 0);
  }

  // --- the bar's debounce, and the edge that keeps it honest. Typing that is
  // deleted again leaves a delivery owing; RET on the emptied box settles it
  // rather than dropping it. Dead in the palette, which arms nothing — live
  // here, which is why the branch stays.
  {
    const asked = [];
    const d = new El("div");
    TableView.mount(d, view(40), { onFilter: (q) => asked.push(q) });
    const db = filterOf(d);
    db.value = "review";
    db.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("a chip to build on", asked, ["review"]);

    db.focus();
    db.value = "sync";
    db.dispatchEvent(new Ev("input"));
    await sleep(200);
    check("the bar still delivers as you type", asked, ["review", "review sync"]);

    db.value = "";                              // deleted again, delivery owing
    db.dispatchEvent(new Ev("input"));
    db.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("and RET on the emptied box settles what was owed",
          asked, ["review", "review sync", "review"]);
    check("without a fourth for the commit itself, nothing having changed since",
          asked.length, 3);
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
    check("and with none left it hands the table over — the page's box has no"
          + " further step to take",
          [lb.blurs - blurs, !!l.querySelector(".tv-table tbody tr.tv-sel")], [1, true]);
  }

  // --- a held Backspace stops at the first chip
  {
    const h = new El("div");
    const ht = TableView.mount(h, view(40));
    const hb = filterOf(h);
    for (const q of ["review", "sync"]) {
      hb.value = q;
      hb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
      await painted();
      hb.focus();
    }
    check("two chips to walk off", h.querySelectorAll(".tv-chip").length, 2);
    const held = hb.blurs;
    for (let i = 0; i < 5; i++)
      hb.dispatchEvent(new Ev("keydown", { key: "Backspace", repeat: true }));
    check("a held Backspace takes nothing — one press is one part",
          [h.querySelectorAll(".tv-chip").length, hb.blurs - held], [2, 0]);
    hb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    check("released and pressed again, it takes one",
          h.querySelectorAll(".tv-chip").length, 1);
    hb.dispatchEvent(new Ev("keydown", { key: "Backspace", repeat: true }));
    check("and holding it there stops again", h.querySelectorAll(".tv-chip").length, 1);
    hb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    hb.dispatchEvent(new Ev("keydown", { key: "Backspace", repeat: true }));
    check("the hand-over at the end is a decision too",
          [h.querySelectorAll(".tv-chip").length, hb.blurs - held], [0, 0]);
    hb.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
    await painted();
    check("taken only on a press of its own", hb.blurs - held, 1);
  }

  // --- the selection keeps its place when the row under it goes
  {
    const k = new El("div");
    const kt = TableView.mount(k, view(40));
    k.querySelector(".tv-scroll").clientHeight = 600;
    const at = () => kt.getVisible().findIndex((r) => r.id === kt.getSelection().id);
    kt.select(kt.getVisible()[10].id);
    await painted();
    check("a row is selected at a known place", at(), 10);

    kt.deleteRow(kt.getSelection().id);
    check("deleting it leaves the selection where it was, on the row that took the place",
          [at(), kt.getSelection().id !== null], [10, true]);

    // A filter that excludes it: the place survives, clamped to what is left.
    const kb = filterOf(k);
    kb.value = "review";
    kb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    const held2 = kt.getSelection().id;
    check("a filter that drops it keeps a selection rather than losing one",
          [held2 !== null, kt.getVisible().some((r) => r.id === held2)], [true, true]);

    kt.setRows(view(3).rows);
    check("and a shorter set clamps the place to the end",
          [kt.getSelection().id, at()], [kt.getVisible()[kt.getVisible().length - 1].id,
                                         kt.getVisible().length - 1]);
    kt.setRows([]);
    check("with nothing left there is nothing selected", kt.getSelection().id, null);
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

  check("select() finds a visible row", t.select("h-39"), true);
  await painted();
  check("and marks it", box.querySelector(".tv-table tbody tr.tv-sel").dataset.id, "h-39");
  check("select() ignores an unknown id", t.select("nope"), false);
  check("getVisible() is the display order", t.getVisible().length, 40);

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

  // The surface itself, asserted rather than felt for. A guard that skips a
  // section when its entry point is missing is a suite that cannot report the
  // one failure that matters most — a renamed or dropped export.
  console.log("\n== the handle");
  for (const name of ["setView", "setRows", "upsertRow", "deleteRow", "applyDelta",
                      "getRows", "getVisible", "select", "getSelection", "getQuery",
                      "stripLastToken", "openFilter", "closeFilter", "selectStep",
                      "nextPage", "previousPage", "pageInfo"])
    check(`handle exposes ${name}`, typeof t[name], "function");
  check("handle exposes el", !!t.el && typeof t.el === "object", true);
  for (const name of ["mount", "parseQuery", "displayText", "comparator"])
    check(`TableView exposes ${name}`, typeof TableView[name], "function");

  await filterQuery();
  await cellsChipsPills();
  await virtualKeys();

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

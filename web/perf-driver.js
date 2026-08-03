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
const fs = require("fs");

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
 * The sort chain as ROOT's headers wear it, in COLUMN order: a marked header is
 * its label with the direction and, past one key, the place it holds. The one
 * reader, since five checks over four mounts ask the same question.
 * @param {*} root  @returns {string[]}
 */
const sortMarks = (root) => root.querySelectorAll(".tv-table thead th")
  .map((th) => th.text).filter((t) => /[▲▼]/.test(t));

/**
 * A mounted table and the gestures a check performs on it. Every section built
 * the same five closures over its own mount; one factory means a change to what
 * "start clean" or "commit this query" means lands everywhere at once, instead
 * of in whichever copies were remembered.
 * @param {*} box  the container  @param {*} handle  what `mount' returned
 */
function probe(box, handle) {
  const b = () => filterOf(box);
  /** Empty the box and take every chip back off, so each case starts clean. */
  const reset = () => {
    const el = b();
    // An empty box offers nothing, so this shuts any list a previous check
    // left open — an open list would take the keys below for itself.
    el.value = "";
    el.dispatchEvent(new Ev("input"));
    for (let i = 0; i < 40 && box.querySelectorAll(".tv-chip[data-i]").length; i++)
      el.dispatchEvent(new Ev("keydown", { key: "Backspace" }));
  };
  const press = (key, init) => {
    const e = new Ev("keydown", Object.assign({ key }, init));
    b().dispatchEvent(e);
    return e;
  };
  /** Type into a clean box and return what the list offers. */
  const type = (q) => {
    reset();
    b().value = q;
    b().dispatchEvent(new Ev("input"));
    return items();
  };
  /** Commit a query from a clean box, and say how many rows it left. */
  const shown = (q) => {
    reset();
    b().value = q;
    press("Enter");
    return handle.getVisible().length;
  };
  const items = () => box.querySelectorAll(".tv-ac-label").map((e) => e.text);
  const counts = () => box.querySelectorAll(".tv-ac-n").map((e) => Number(e.text));
  // A free-text offer — the literal, a whole title — annotates itself with an
  // aside where a predicate suggestion prints its count. So the rows carrying a
  // count are not `items()' positionally any more, and the two questions those
  // two arrays were answering get one accessor each.
  /** The labels of the rows that suggest a token, the free-text offers aside. */
  const offers = () => box.querySelectorAll(".tv-ac-item")
    .filter((e) => e.querySelectorAll(".tv-ac-aside").length === 0)
    .map((e) => e.querySelector(".tv-ac-label").text);
  /** The suggestion row wearing LABEL, or null. */
  const rowFor = (label) => box.querySelectorAll(".tv-ac-item")
    .filter((e) => e.querySelector(".tv-ac-label").text === label)[0] || null;
  /** What LABEL's row shows in its annotation slot; null when it shows nothing. */
  const slotOf = (sel) => (label) => {
    const el = rowFor(label), a = el && el.querySelector(sel);
    return a ? a.text : null;
  };
  const countOf = (label) => { const n = slotOf(".tv-ac-n")(label);
                               return n === null ? null : Number(n); };
  const asideOf = slotOf(".tv-ac-aside");
  // The live chips are the ones carrying an index — which is also the property
  // that makes them removable, and what tells them from a crumb wearing the
  // same shape beside them.
  const chipsOf = () => box.querySelectorAll(".tv-chip[data-i]").map((c) => c.text.replace("×", ""));
  const crumbsOf = () => box.querySelectorAll(".tv-chip-muted").map((c) => c.text);
  // The chain is written over the columns it orders, so it is read off the
  // HEADERS rather than out of the strip: neither chip reader above sees it.
  const sortsOf = () => sortMarks(box);
  /** Commit a query without clearing what is already applied. */
  const commit = (q) => { b().value = q; press("Enter"); };
  return { box, handle, b, reset, press, commit, type, shown, items, counts,
           offers, countOf, asideOf, chipsOf, crumbsOf, sortsOf };
}

/**
 * Mount a fixture and hand back a probe over it. ROWS is a row count for the
 * standard fixture or a whole view; PORT, when given, is the scroller height
 * the geometry checks need.
 */
function driver(rows, opts, port) {
  const box = new El("div");
  const handle = TableView.mount(box, typeof rows === "number" ? view(rows) : rows, opts);
  if (port) box.querySelector(".tv-scroll").clientHeight = port;
  return probe(box, handle);
}

// ---- colour ----------------------------------------------------------------
// WCAG, implemented here so the renderer's contrast claims are checked against
// something other than themselves. One copy: three sections wanted it and three
// copies is three chances to fix a bug twice and miss the third.

/** #rrggbb (or #rgb) to channel bytes. @param {string} h */
const rgb = (h) => {
  const x = h.replace("#", "");
  const full = x.length === 3 ? x.replace(/./g, (c) => c + c) : x;
  return [0, 2, 4].map((i) => parseInt(full.slice(i, i + 2), 16));
};
const chan = (c) => (c / 255 <= 0.03928 ? c / 255 / 12.92
                                        : Math.pow((c / 255 + 0.055) / 1.055, 2.4));
const lum = (c) => 0.2126 * chan(c[0]) + 0.7152 * chan(c[1]) + 0.0722 * chan(c[2]);
/** Contrast ratio between two hex colours. */
const ratio = (a, b) => {
  const x = lum(rgb(a)) + 0.05, y = lum(rgb(b)) + 0.05;
  return x > y ? x / y : y / x;
};
/** A blended toward B by T, back as hex. */
const mixed = (a, b, t) => "#" + rgb(a)
  .map((v, i) => Math.round(v + (rgb(b)[i] - v) * t).toString(16).padStart(2, "0")).join("");
/**
 * The custom properties RULE declares, read out of the stylesheet the renderer
 * actually emitted — the way the badge-ink block reads its grounds. Literals
 * here would be a second copy of the palette, and a second copy passes while
 * the first one drifts. Hex values and percentages both, since a strength is
 * as much a palette decision as a colour.
 * @param {string} rule  the selector text, up to and including its `{'
 */
/** Every stylesheet the renderer injected, as one string. */
const cssText = () => document.head.children.map((e) => e.text).join("");

/** A CSS percentage as a fraction. */
const pctOf = (v) => Number(String(v).replace("%", "")) / 100;

function paletteIn(rule) {
  const css = cssText();
  const at = css.indexOf(rule);
  if (at === -1) return {};
  const decl = css.slice(at + rule.length, css.indexOf("}", at));
  const out = {};
  for (const m of decl.matchAll(/--tv-([\w-]+):\s*(#[0-9a-fA-F]{3,8}|[0-9.]+%)/g))
    out[m[1]] = m[2];
  return out;
}

/**
 * The box longhands an element settles at, cascaded over the RULES it matches.
 * There is no CSSOM in the shim, so the `border'/`padding' shorthands this
 * sheet writes are expanded here and the rules are merged in the order given —
 * which is the order the cascade takes them, these rules only ever tying on
 * source position. Asserting spellings instead lets a restyle move what is
 * painted without moving the check.
 * @param {string[]} rules  selector texts, in cascade order
 * @param {string} [css]  the sheet to read, defaulting to the whole of it
 */
function boxOf(rules, css) {
  const sheet = css === undefined ? cssText() : css;
  const out = {};
  for (const sel of rules) {
    const esc = sel.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
    // Anchored at a rule boundary, so `.tv-chip{' cannot land inside the
    // `.tv-pal .tv-chip{' rule that is spelled above it.
    const m = new RegExp("(?:^|[}\\n])\\s*" + esc + "\\{").exec(sheet);
    if (!m) continue;
    const open = sheet.indexOf("{", m.index);
    for (const d of sheet.slice(open + 1, sheet.indexOf("}", open)).split(";")) {
      const i = d.indexOf(":");
      if (i === -1) continue;
      const prop = d.slice(0, i).trim(), val = d.slice(i + 1).trim();
      if (prop === "border") {
        const [w, s, ...c] = val.split(/\s+/);
        Object.assign(out, { "border-width": w, "border-style": s,
                             "border-color": c.join(" ") });
      } else if (prop === "padding") {
        const p = val.split(/\s+/);
        Object.assign(out, { "padding-top": p[0], "padding-right": p[1] ?? p[0],
                             "padding-bottom": p[2] ?? p[0],
                             "padding-left": p[3] ?? p[1] ?? p[0] });
      } else out[prop] = val;
    }
  }
  return out;
}

/**
 * The chip colours THEME actually paints, resolved: the frost it washes (which
 * cascades from the base rule) composited onto that theme's own ground at the
 * strength the theme asks for. What `color-mix' with `transparent' does, done
 * here so the assertion is about the painted colour rather than its spelling.
 * @param {"light"|"dark"} theme
 */
function chipIn(theme) {
  const p = paletteIn(`:root[data-theme="${theme}"] .tv-root{`);
  const frost = p.frost || paletteIn(".tv-root{").frost;
  const ground = p.bg || paletteIn(".tv-root{").bg;
  const washPct = pctOf(p["chip-wash"]), edgePct = pctOf(p["chip-edge"]);
  return { frost, ground, washPct, edgePct,
           wash: mixed(ground, frost, washPct),
           edge: mixed(ground, frost, edgePct) };
}

/**
 * The wash THEME paints with --tv-NAME at --tv-STRENGTH: the colour (which may
 * cascade from the base rule) composited onto that theme's own ground at the
 * strength that theme asks for. The `chipIn' of the row grounds — read from the
 * sheet, never re-spelled, so an identity swap swaps what is asserted.
 * @param {"light"|"dark"} theme  @param {string} name  @param {string} strength
 */
function washIn(theme, name, strength) {
  const p = paletteIn(`:root[data-theme="${theme}"] .tv-root{`);
  const base = paletteIn(".tv-root{");
  const colour = p[name] || base[name];
  const ground = p.bg || base.bg;
  const pct = pctOf(p[strength] !== undefined ? p[strength] : base[strength]);
  return { colour, ground, pct, wash: mixed(ground, colour, pct) };
}

/**
 * How far apart two colours sit in sRGB. A contrast ratio answers "can this be
 * read on that" and says almost nothing about "can this band be seen": the
 * light cursor row is 1.04:1 against the page it sits on and perfectly plain to
 * the eye, because what moved was hue rather than luminance. This is the metric
 * for the second question; what a step of it means is read against another step
 * in the same theme, the two themes having very different ranges.
 */
const apart = (a, b) => Math.hypot(...rgb(a).map((v, i) => v - rgb(b)[i]));

/** A hex colour's channels on 0..1 with their extrema — what hue and sat share. */
const chroma = (h) => {
  const [r, g, b] = rgb(h).map((v) => v / 255);
  return { r, g, b, mx: Math.max(r, g, b), mn: Math.min(r, g, b) };
};
/** Saturation 0..1, for telling a pale wash from a saturated accent. */
const sat = (h) => {
  const { mx, mn } = chroma(h);
  return mx === 0 ? 0 : (mx - mn) / mx;
};
/** Hue in degrees, for asserting that a lightness-only change kept one. */
const hue = (h) => {
  const { r, g, b, mx, mn } = chroma(h);
  if (mx === mn) return 0;
  const d = mx - mn;
  const x = mx === r ? (g - b) / d + (g < b ? 6 : 0)
          : mx === g ? (b - r) / d + 2 : (r - g) / d + 4;
  return Math.round(x * 60);
};

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

/**
 * The shim's line height, and the TRUE one: the driver moves it to stand in
 * for a zoom, and gives it a FRACTION to stand in for the height a real row
 * has. `13px/1.5' plus padding and a hairline does not land on a whole pixel,
 * and no browser reports a fractional box back whole — see `SNAP_PX' below and
 * `getBoundingClientRect'.
 */
let ROW_PX = 30;
/** The header's, which is deliberately NOT the row's: the renderer keeps the
 *  two apart and every sum over them has to as well. A shim reporting one
 *  number for both lets an arithmetic that confuses them pass. The driver moves
 *  it to stand in for a header that measures taller once it is drawn. */
let HEAD_PX = 24;
/**
 * The grid a rect is reported on. A browser lays a box out in fractions and
 * SNAPS every rect it hands back, so `getBoundingClientRect().height' is a
 * ROUNDING of the height rather than the height — Firefox at 13px/1.5 reports
 * a 30.5px row as 30 or 30.5 depending where it fell. Modelled here at that
 * same half-pixel, because the whole class of bug this catches is an
 * arithmetic that multiplies one sampled rect by a page of rows.
 */
const SNAP_PX = 0.5;
const snapped = (v) => Math.round(v / SNAP_PX) * SNAP_PX;

/**
 * What a laid-out box really measures, unsnapped: what it was TOLD to be (a
 * spacer carries its height in the markup), else what its kind measures, else
 * the sum of what it holds. This is the number a scroller reports as its
 * `scrollHeight' and the number a rect is a rounding of.
 */
function trueHeight(el) {
  if (!el || !el.tagName) return 0;
  if (el.style && el.style.display === "none") return 0;
  const h = el.style && el.style.height;
  if (h && /px$/.test(String(h))) return parseFloat(String(h));
  if (el.tagName === "THEAD") return HEAD_PX;
  if (el.tagName === "TR") return ROW_PX;
  return el.children.reduce((a, c) => a + trueHeight(c), 0);
}

/**
 * Where EL's top edge falls in the scroller above it, unsnapped: everything
 * ahead of it in its parent, and so on up to the scroll container. A row's rect
 * is snapped against this, so a run of rows reports the alternation a
 * fractional height really produces instead of one number repeated.
 */
function contentTop(el) {
  let top = 0;
  for (let n = el; n && n.parentNode; n = n.parentNode) {
    for (const sib of n.parentNode.children) {
      if (sib === n) break;
      top += trueHeight(sib);
    }
    if (n.parentNode.classes && n.parentNode.classes.has("tv-scroll")) break;
  }
  return top;
}
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
    this.ctrlKey = !!(init && init.ctrlKey);
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
  removeAttribute(n) { this.attrs.delete(n); if (n === "class") this.className = ""; }
  appendChild(c) { c.parentNode = this; this.childNodes.push(c); return c; }
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
  getBoundingClientRect() {
    // What the box is told to be, else what its kind measures. A spacer row
    // carries its height in the markup and must report that, or the geometry
    // the renderer reads back is not the geometry it wrote.
    const h = this.style.height;
    if (h && /px$/.test(String(h))) return { height: parseFloat(String(h)), width: 0 };
    if (this.tagName === "THEAD") return { height: HEAD_PX, width: 0 };
    // A ROW is reported the way a browser reports one: snapped, against where
    // the row actually falls. With a whole ROW_PX that is ROW_PX for every row
    // and this is the shim it always was; with a fractional one the rects
    // alternate around it, which is what makes `one rect times a page of rows'
    // a different number from the page.
    if (this.tagName === "TR") {
      const top = contentTop(this);
      return { height: snapped(top + ROW_PX) - snapped(top), width: 0 };
    }
    return { height: 0, width: 0 };
  }
  /**
   * What this box's content measures, as a scroller reports it: a browser
   * rounds `scrollHeight' to a whole pixel over content that is not whole.
   */
  get scrollHeight() { return Math.round(trueHeight(this)); }
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
/** A `style' attribute's declarations onto EL, the way the DOM does. */
function applyStyle(el, decls) {
  for (const decl of String(decls).split(";")) {
    const at = decl.indexOf(":");
    if (at > 0)
      el.style[decl.slice(0, at).trim().replace(/-([a-z])/g, (_, c) => c.toUpperCase())]
        = decl.slice(at + 1).trim();
  }
}

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
      // A `style' attribute is a declaration list and the shim's geometry reads
      // it: a SPACER row carries its height there and nowhere else, so leaving
      // it as an opaque string had every spacer report one row's height however
      // many rows it stood in for.
      if (name === "style") applyStyle(el, val);
      if (name === "value") el.value = val;
    }
    stack[stack.length - 1].appendChild(el);
    if (!VOID.has(tag) && !m[4]) stack.push(el);
  }
  const tail = html.slice(last);
  if (tail) stack[stack.length - 1].appendChild(new TextNode(decode(tail)));
}

global.CustomEvent = Ev;
// The renderer opens an http link itself when no `onLink' is given; the check
// below is what keeps this from being a stub for a path nobody walks.
let opened = null;
global.window = { open(url, target, features) { opened = [url, target, features]; } };
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
/** SCHEMA's uniform meta, which every key's value domain ends with. */
const EMPTY = "*empty*";
/** LIST as a value domain reads it: the column's own values, then that meta. */
const domain = (...list) => list.concat([EMPTY]);
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


/**
 * SCHEMA's ordering rules: which comparator wins, where the blanks land, and
 * whose indices a delta is counted in.
 */
async function sortOrder() {
  console.log("\n== ordering");
  const cols = [
    { key: "name", label: "Name" },
    { key: "state", label: "State", values: ["TODO", "DONE"], compare: "string" },
  ];
  const rows = [
    { id: "1", cells: { name: "pear", state: "TODO" } },
    { id: "2", cells: { name: "", state: "DONE" } },
    { id: "3", cells: { name: "apple", state: "TODO" } },
    { id: "4", cells: { name: "fig", state: "" } },
  ];
  /** Mount the ordering fixture under SORT and read column KEY off the window. */
  const order = (sort, key) => {
    const box = new El("div");
    const h = TableView.mount(box, { title: "order", columns: cols, rows, sort });
    return h.getVisible().map((r) => r.cells[key]);
  };

  // --- g: an explicit comparator outranks a value order
  // `values' would sort TODO before DONE. `compare' is named on the same
  // column, and SCHEMA gives it precedence, so the sort is alphabetical and
  // DONE leads. Reading it the other way would put TODO first.
  check("a named comparator beats the column's value order",
        order({ column: "state", ascending: true }, "state").slice(0, 2),
        ["DONE", "TODO"]);
  check("without one, the value order still rules",
        order({ column: "state", ascending: true }, "state").slice(0, 2)[0] !== "TODO", true);

  // --- h: blanks go last, and stay last when the sort reverses
  check("ascending puts the blank name last",
        order({ column: "name", ascending: true }, "name"),
        ["apple", "fig", "pear", ""]);
  check("descending puts it last as well",
        order({ column: "name", ascending: false }, "name"),
        ["pear", "fig", "apple", ""]);
  check("a blank in a column with a value order sorts last too",
        order({ column: "state", ascending: true }, "state")[3], "");

  // The direction strings are the only spelling that asks for the other rule.
  check("asc-nulls-first leads with the blank",
        order({ column: "name", direction: "asc-nulls-first" }, "name"),
        ["", "apple", "fig", "pear"]);
  check("desc-nulls-first leads with it and reverses the rest",
        order({ column: "name", direction: "desc-nulls-first" }, "name"),
        ["", "pear", "fig", "apple"]);
  check("a bare direction string still sorts", 
        order({ column: "name", direction: "desc" }, "name")[0], "pear");
  check("direction outranks ascending",
        order({ column: "name", direction: "desc", ascending: true }, "name")[0], "pear");

  // --- i: a delta is counted in the window, not the store
  // The store order is pear, blank, apple, fig; sorted ascending the window
  // reads apple, fig, pear, blank. Deleting window index 0 must take apple,
  // which sits at store index 2 -- a store-indexed delete would take pear.
  const box = new El("div");
  const h = TableView.mount(box, {
    title: "order", columns: cols, rows, sort: { column: "name", ascending: true },
  });
  h.applyDelta([{ op: "delete", index: 0 }]);
  check("a delete indexes the window, not the store",
        h.getRows().map((r) => r.cells.name), ["pear", "", "fig"]);
  h.applyDelta([{ op: "insert", index: 0, row: { id: "9", cells: { name: "acorn", state: "DONE" } } }]);
  check("an insert lands where the window says",
        h.getVisible().map((r) => r.cells.name), ["acorn", "fig", "pear", ""]);
  check("an index past the end appends",
        (h.applyDelta([{ op: "insert", index: 99, row: { id: "8", cells: { name: "zed", state: "DONE" } } }]),
         h.getRows().length), 5);

  // --- j: a column that declares itself multi-valued outranks the shapes
  const tagCols = [
    { key: "title", label: "Title" },
    { key: "tags", label: "Tags", multi: true },
  ];
  const tagRows = [
    { id: "1", cells: { title: "one", tags: "web, api" } },
    { id: "2", cells: { title: "two", tags: "web" } },
  ];
  const decl = new El("div");
  const d = TableView.mount(decl, { title: "t", columns: tagCols, rows: tagRows });
  // Nothing here is org-shaped, so the heuristic would have found no tag column
  // at all and offered no key for it. The declaration is what supplies one.
  const db = decl.querySelector(".tv-filter");
  db.value = "we";
  db.dispatchEvent(new Ev("input"));
  check("a declared multi column is offered as a key",
        decl.querySelectorAll(".tv-ac-label").map((e) => e.text).some((x) => /^web|tag/.test(x)),
        true);

  // Undeclared, the shapes still decide -- the fallback keeps working.
  const guess = new El("div");
  const g = TableView.mount(guess, {
    title: "t",
    columns: [{ key: "title", label: "Title" }, { key: "tags", label: "Tags" }],
    rows: [{ id: "1", cells: { title: "one", tags: ":web:api:" } },
           { id: "2", cells: { title: "two", tags: ":web:" } }],
  });
  check("undeclared, the cell shapes still find it",
        g.getVisible().length, 2);

  // --- l: every comparator branch, run rather than merely exported
  // `comparator' is on the static surface, so a consumer sorting its own rows
  // gets whichever branch its column names -- and until now only two of the
  // five ever ran here.
  const sortBy = (col, vals) => vals.slice().sort(TableView.comparator(col));
  check("number sorts by value, not by digit",
        sortBy({ key: "n", compare: "number" }, ["10", "9", "100", "1"]),
        ["1", "9", "10", "100"]);
  check("numeric is the same branch under its other name",
        sortBy({ key: "n", compare: "numeric" }, ["10", "9"]), ["9", "10"]);
  check("an unparsable value sorts after every number",
        sortBy({ key: "n", compare: "number" }, ["7", "n/a", "2"]), ["2", "7", "n/a"]);
  check("natural reads the digits inside a string",
        sortBy({ key: "v", compare: "natural" }, ["v10", "v9", "v1"]),
        ["v1", "v9", "v10"]);
  check("version is the same branch under its other name",
        sortBy({ key: "v", compare: "version" }, ["1.10", "1.9"]), ["1.9", "1.10"]);
  check("string is plain collation, digits and all",
        sortBy({ key: "s", compare: "string" }, ["v10", "v9", "v1"]),
        ["v1", "v10", "v9"]);
  check("a value order sorts by position",
        sortBy({ key: "s", values: ["TODO", "NEXT", "DONE"] }, ["DONE", "TODO", "NEXT"]),
        ["TODO", "NEXT", "DONE"]);
  check("an unlisted value sorts after the listed ones",
        sortBy({ key: "s", values: ["TODO", "DONE"] }, ["huh", "DONE"]), ["DONE", "huh"]);
  check("a number-typed column sorts numerically without naming a comparator",
        sortBy({ key: "n", type: "number" }, ["10", "9"]), ["9", "10"]);
  check("and everything else collates",
        sortBy({ key: "s" }, ["b", "a"]), ["a", "b"]);

  // With nothing reordering the rows the window is the store, and the two
  // readings agree -- the mapping has to be invisible in the common case.
  const plain = new El("div");
  const p = TableView.mount(plain, { title: "order", columns: cols, rows });
  p.applyDelta([{ op: "delete", index: 0 }]);
  check("with no sort the window is the store",
        p.getRows().map((r) => r.cells.name), ["", "apple", "fig"]);

  // --- m: `sortBy' STATES an order where a header click toggles one.  A
  // consumer applying a canned view -- glance's agenda -- has to land on the
  // same order every time it is asked for, so asking twice must not reverse it.
  const said = new El("div");
  const q = TableView.mount(said, { title: "order", columns: cols, rows });
  check("sortBy orders the window", (q.sortBy("name"),
        q.getVisible().map((r) => r.cells.name)), ["apple", "fig", "pear", ""]);
  check("and asking again says the same thing", (q.sortBy("name"),
        q.getVisible().map((r) => r.cells.name)), ["apple", "fig", "pear", ""]);
  check("false takes the other direction", (q.sortBy("name", false),
        q.getVisible().map((r) => r.cells.name)), ["pear", "fig", "apple", ""]);
  // `sortable' is opt-in and gates the READER's key; neither column here
  // declares it, and both of the above sorted, which is the whole of the rule.
  check("a column nothing carries is refused, and says so", q.sortBy("nope"), false);
  check("and the order it was in is left alone",
        q.getVisible().map((r) => r.cells.name), ["pear", "fig", "apple", ""]);

  // --- n: PROMOTION, which is how a chain is composed in a browser. `^' and a
  // header click put a column at the HEAD and shift the rest down; pressing
  // over columns in reverse priority order builds the chain, and the QUERY
  // carries it as it grows — promotion writes `sort:' tokens, so the order is
  // one of the query's own terms. table-view.el spells the same thing with
  // `C-u ^', which a page has no prefix argument for.
  {
    const cols2 = [
      { key: "dept",  header: "Dept",  sortable: true },
      { key: "score", header: "Score", type: "number", sortable: true },
      { key: "name",  header: "Name" },        // deliberately not sortable
    ];
    const team = [
      { id: "ada",  cells: { dept: "Eng",   score: 92, name: "Ada" } },
      { id: "bell", cells: { dept: "Eng",   score: 88, name: "Bell" } },
      { id: "dot",  cells: { dept: "Sales", score: 70, name: "Dot" } },
      { id: "gil",  cells: { dept: "Ops",   score: 77, name: "Gil" } },
      { id: "hugh", cells: { dept: "Ops",   score: 77, name: "Hugh" } },
    ];
    const el = new El("div");
    const p = TableView.mount(el, { title: "roster", columns: cols2, rows: team });
    const chain = () => p.getSort().map((k) => k.column + (k.ascending ? "+" : "-"));
    // The chain over the headers, and the chain as the query spells it: the two
    // descriptions the reader has, and neither of them a store of its own.
    const heads = () => sortMarks(el);
    const asked = () => p.getQuery();

    check("an undeclared sort is no chain and no mark", [chain(), heads()], [[], []]);
    check("the first promotion is a one-key sort", (p.sortPromote("score"), chain()),
          ["score+"]);
    check("the second puts its column in front and keeps the first",
          (p.sortPromote("dept"), chain()), ["dept+", "score+"]);
    check("so pressing in reverse priority order composes the chain",
          p.getVisible().map((r) => r.id), ["bell", "ada", "gil", "hugh", "dot"]);
    check("promoting the column already leading flips it and moves nothing else",
          (p.sortPromote("dept"), chain()), ["dept-", "score+"]);
    check("and a column promoted from below is not left behind it",
          (p.sortPromote("score"), chain()), ["score+", "dept-"]);
    check("a chain of one behaves as a single sort always did",
          (p.setSort([{ column: "score", ascending: false }]),
           [chain(), p.getVisible().map((r) => r.id)]),
          [["score-"], ["ada", "bell", "gil", "hugh", "dot"]]);
    check("`sortable' gates promotion, the reader's gesture", p.sortPromote("name"), false);
    check("and a key nothing carries is refused too", p.sortPromote("nope"), false);
    check("neither moved the chain", chain(), ["score-"]);

    // The headers: every key of the chain marks its own column, in precedence
    // order, and a chain of one has nothing to number.
    check("the headers draw the chain in precedence order",
          (p.setSort([{ column: "dept", ascending: true },
                      { column: "score", ascending: false }]), heads()),
          ["Dept▲¹", "Score▼²"]);
    check("the leading key is the one in full ink",
          el.querySelectorAll(".tv-arrow").filter((a) => a.classes.has("tv-lead")).length, 1);
    // Read in COLUMN order, so it is the ordinals that carry the precedence:
    // promoting `score' leaves the marks where the columns are and renumbers.
    check("a promotion renumbers them at once",
          (p.sortPromote("score"), heads()), ["Dept▲²", "Score▲¹"]);
    check("and writes the chain into the query, precedence order and all",
          asked(), "sort:score sort:dept");
    check("a one-key chain wears the direction and no ordinal",
          (p.setSort([{ column: "score", ascending: true }]), heads()), ["Score▲"]);
    check("and clearing the chain takes the marks off",
          (p.setSort([]), [chain(), heads()]), [[], []]);

    // A key naming no column describes nothing, so nothing describes it: the
    // headers, the hint and the comparator drop it alike.
    check("a chain key for a column that is gone is dropped everywhere",
          (p.setSort([{ column: "ghost" }, { column: "score", ascending: true }]),
           [heads(), p.getVisible().map((r) => r.id)]),
          [["Score▲"], ["dot", "gil", "hugh", "bell", "ada"]]);

    // getSort/setSort round-trip, nulls included — the property a consumer
    // persisting a chain in a URL rests on.
    check("a chain read out and handed back is the chain that was read",
          (p.setSort([{ column: "dept", direction: "desc-nulls-first" }]),
           p.setSort(p.getSort()), p.getSort()),
          [{ column: "dept", ascending: false, nullsFirst: true }]);
  }
}


/**
 * The conformance vectors both renderers' suites execute (../fixtures/parity),
 * off one manifest: this driver and table-view-test.el. The manifest says which
 * capabilities are this harness's, and a listed one with no runner below fails
 * rather than skipping, so it cannot claim one that is missing. `query' is this
 * renderer's alone — table-view.el has no query grammar — which is why the
 * split is in the manifest rather than assumed on either side.
 */
async function parityVectors() {
  console.log("\n== parity vectors");
  const dir = path.join(__dirname, "..", "fixtures", "parity");
  const read = (f) => JSON.parse(fs.readFileSync(path.join(dir, f), "utf8"));
  const manifest = read("manifest.json");
  const mine = manifest.harnesses["web/perf-driver.js"];

  // A vector file the manifest forgot is a vector nobody runs.
  check("the manifest lists every vector file",
        fs.readdirSync(dir).filter((f) => f !== "manifest.json").sort(),
        manifest.vectors.map((v) => v.file).sort());

  const runners = {
    sort: (c, view, name) =>
      check(name, driver(view).handle.getVisible().map((r) => r.id), c.expect.order),

    render: (c, view, name) => {
      const { box } = driver(view, undefined, 300);
      const keys = view.columns.map((col) => col.key);
      for (const want of c.expect.cells) {
        const at = `${name} [${want.row}.${want.column}]`;
        const tr = box.querySelector(`.tv-table tbody tr[data-id=${want.row}]`);
        const td = tr && tr.children[keys.indexOf(want.column)];
        check(at, td && td.text, want.text);
        if ("inked" in want)
          check(at + " ink", !!(td && td.querySelector(".tv-pill")), want.inked);
      }
    },

    // One gesture, read two ways: `query' declares WHICH rows a query leaves
    // and `query-sort' declares what ORDER it leaves them in. Same commit, same
    // `getVisible', so a vector file says which question it is asking by the
    // field it writes the answer in.
    query: (c, view, name) => shown(c, view, name, c.expect.ids),
    "query-sort": (c, view, name) => shown(c, view, name, c.expect.order),
  };

  /** Commit C's query over VIEW and check the ids it leaves against WANT. */
  function shown(c, view, name, want) {
    const p = driver(view, undefined, 300);
    p.commit(c.q);
    check(name, p.handle.getVisible().map((r) => r.id), want);
  }

  for (const cap of mine)
    check(`the ${cap} capability the manifest gives this harness has a runner`,
          typeof runners[cap], "function");

  for (const v of manifest.vectors) {
    if (mine.indexOf(v.capability) === -1) continue;
    const file = read(v.file);
    check(`${v.file} declares ${v.capability}`, file.capability, v.capability);
    // A case takes the file's view, one of its own, or `{"$ref": NAME}' naming
    // one of the file's `views' — so a view several cases share is written once.
    const viewOf = (c) => (c.view && c.view.$ref ? file.views[c.view.$ref]
                                                 : c.view || file.view);
    for (const c of file.cases)
      runners[v.capability](c, viewOf(c), `${v.file}: ${c.name}`);
  }
}


/**
 * Producer meta-values: the completion domain merges `values' with the badge
 * palette, and a starred entry reads as the producer's own rather than as a
 * value the rows hold.
 */
async function metaValues() {
  console.log("\n== producer meta-values");
  const cols = [
    { key: "title", label: "Title" },
    { key: "state", label: "State", type: "badge",
      values: ["*active*", "*inactive*"],
      badges: [{ value: "TODO", color: "#e0af68" },
               { value: "NEXT", color: "#7aa2f7" },
               { value: "DONE", color: "#9ece6a" }] },
  ];
  const rows = [
    { id: "1", cells: { title: "one", state: "TODO" } },
    { id: "2", cells: { title: "two", state: "TODO" } },
    { id: "3", cells: { title: "three", state: "DONE" } },
    { id: "4", cells: { title: "four", state: "" } },
  ];
  const P = driver({ title: "meta", columns: cols, rows });

  // --- the merge: declared values in their order, then the badges they missed
  check("the domain is values then the unlisted badges, then the uniform meta",
        P.type("state:"), ["*active*", "*inactive*", "TODO", "NEXT", "DONE", "*empty*"]);
  check("the badge keywords survive alongside the declared values",
        P.type("state:").indexOf("TODO") !== -1, true);

  // --- a meta reads as a meta
  P.type("state:");
  const rowsOf = () => P.box.querySelectorAll(".tv-ac-item");
  const dimmed = rowsOf().map((e) => e.classes.has("tv-ac-dim"));
  check("the starred entries are dimmed and the concrete ones are not",
        dimmed, [true, true, false, false, false, true]);
  const nums = rowsOf().map((e) => e.querySelectorAll(".tv-ac-n").length);
  check("a meta shows no count at all", nums.slice(0, 2), [0, 0]);
  check("its concrete siblings still do", nums.slice(2), [1, 1, 1, 0]);
  check("and those counts are the real ones", P.counts(), [2, 0, 1]);
  const css = document.head.children.map((e) => e.text).join("");
  check("the dim class is italic as well as faint",
        /\.tv-ac-dim\{[^}]*font-style:italic/.test(css), true);

  // --- accepted verbatim, asterisks and all
  P.reset();
  P.b().value = "state:*act";
  P.b().dispatchEvent(new Ev("input"));
  check("a partly typed meta still completes", P.items(), ["*active*"]);
  P.box.querySelectorAll(".tv-ac-item")[0].dispatchEvent(new Ev("click"));
  check("accepting inserts it with its asterisks", P.b().value.trim(), "state:*active*");

  // --- and the asterisks are reading notation, not typing burden
  const metaAt = () => P.box.querySelectorAll(".tv-ac-item")
    .findIndex((e) => e.classes.has("tv-ac-on"));
  check("a meta answers to the word inside its stars", P.type("state:act"), ["*active*"]);
  check("and to the whole of that word", P.type("state:active"), ["*active*"]);
  check("the other one the same way", P.type("state:inactive"), ["*inactive*"]);
  check("spelled in full it leads, so RET takes it", metaAt(), 0);
  P.b().dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("and what commits still wears the stars",
        P.handle.getQuery(), "state:*inactive*");
  check("a bare word reaches one through its column too",
        P.type("active"), ["state:*active*", `"active"`]);
  check("chosen there as well", metaAt(), 0);
  check("while a word inside no meta reaches none of them",
        P.type("state:tive"), []);

  // --- and the local evaluator answers the one half it can
  //
  // SCHEMA puts the EMPTY cell in `*active*' -- a row nobody has stated is live
  // work -- and that term names no keyword, so it reads the same here as at the
  // producer. The keyword half is the producer's and drops out, which is why
  // `*active*' finds the one stateless row rather than the three active ones.
  // `*inactive*' has no such half and stays the literal it was.
  check("the active meta finds the stateless row, the half a renderer can know",
        P.shown("state:*active*"), 1);
  check("and state:*empty* is that same row, asked for by name",
        P.shown("state:*empty*"), 1);
  // The stars are what make a value a meta, so the bare word reserves nothing:
  // this fixture has no state spelled `none', and the query says so.
  check("while the bare word is the literal it always could have been",
        P.shown("state:none"), 0);
  check("the inactive meta stays a literal, so it matches nothing",
        P.shown("state:*inactive*"), 0);
  check("negating the active meta drops the stateless row",
        P.shown("-state:*active*"), 3);
  check("while negating the inactive one drops nothing",
        P.shown("-state:*inactive*"), 4);
  check("while a concrete value matches as ever", P.shown("state:TODO"), 2);

  // --- regressions either side of the merge
  const B = driver({
    title: "meta",
    columns: [{ key: "title", label: "Title" },
              { key: "state", label: "State", type: "badge",
                badges: [{ value: "TODO", color: "#e0af68" },
                         { value: "DONE", color: "#9ece6a" }] }],
    rows,
  });
  check("a badge column with no values offers its palette, in palette order",
        B.type("state:"), domain("TODO", "DONE"));
  check("and every entry keeps its count", B.counts(), [2, 1]);

  const M = driver({
    title: "meta",
    columns: [{ key: "title", label: "Title" }, { key: "tag", label: "Tag", multi: true }],
    rows: [{ id: "1", cells: { title: "one", tag: ":web:api:" } },
           { id: "2", cells: { title: "two", tag: ":web:" } }],
  });
  check("a multi column still offers its vocabulary, counted",
        [M.type("tag:"), M.counts()], [domain("api", "web"), [1, 2]]);
}

/**
 * The starred family: `*empty*' on every key, a starred word on a multi-valued
 * column as the whole entry, and the bare words neither of them reserves. What
 * the parity vectors pin is the MATCHING; what belongs here is the offering,
 * the ordering it does not disturb, and the completion that reaches a meta
 * without its stars.
 */
async function starredMetas() {
  console.log("\n== starred metas");
  const cols = [
    { key: "state", header: "State", type: "badge", sortable: true,
      values: ["*active*"],
      badges: [{ value: "TODO", color: "#e0af68" },
               { value: "DONE", color: "#9ece6a" }] },
    { key: "title", header: "Headline", type: "text" },
    { key: "tag", header: "Tags", type: "text", multi: true, values: ["*archive*"] },
  ];
  const rows = [
    { id: "arch", cells: { state: "TODO", title: "filed away", tag: ":web:archive:" } },
    { id: "near", cells: { state: "DONE", title: "not filed", tag: ":archived:" } },
    { id: "word", cells: { state: "TODO", title: "unfiled", tag: ":web:" } },
    { id: "bare", cells: { state: "", title: "nothing stated", tag: "" } },
  ];
  const P = driver({ title: "metas", columns: cols, rows });
  const ids = (q) => { P.shown(q); return P.handle.getVisible().map((r) => r.id); };

  // --- offered per key, wherever an empty cell means anything, which is everywhere
  check("a badge column ends its domain with the uniform meta",
        P.type("state:"), ["*active*", "TODO", "DONE", "*empty*"]);
  check("a multi column offers its declared meta and that one both",
        P.type("tag:").sort(), ["*archive*", "*empty*", "archive", "archived", "web"]);
  check("and a free-text column, whose domain is its own cells, offers it too",
        P.type("title:").indexOf("*empty*") !== -1, true);

  // --- and a meta is reached without its stars, at either stage
  check("the uniform meta answers to the word inside them", P.type("state:emp"), ["*empty*"]);
  check("a declared one the same way", P.type("tag:arch").slice(0, 2), ["*archive*", "archive"]);
  check("and a bare word reaches it through the column that declares it",
        P.type("arch").indexOf("tag:*archive*") !== -1, true);

  // --- matching: the stars are the whole of what makes a meta
  check("the uniform meta is the empty cell, on any key",
        [ids("state:*empty*"), ids("tag:*empty*")], [["bare"], ["bare"]]);
  check("a starred word on a multi column is the whole entry", ids("tag:*archive*"), ["arch"]);
  check("where the bare word stays the substring it was",
        ids("tag:archive"), ["arch", "near"]);
  check("a starred word on a SINGLE-valued column is a literal, so it finds nothing",
        ids("state:*todo*"), []);

  // --- a meta takes no sort position: no cell holds one
  const sorted = () => { P.shown(""); P.handle.sortBy("state", true);
                         return P.handle.getVisible().map((r) => r.id); };
  // TODO before DONE is the palette's order; a `values' of metas alone orders
  // nothing, so without the rule that drops them every row would tie here and
  // the rows would come back as they went in.
  check("the badge palette still orders the column its `values' declared a meta in",
        sorted(), ["arch", "word", "near", "bare"]);
}

/**
 * Org's priority decoration: a cell drawn `[#A]' and meant as `A'. Display
 * wears it and matching reads through it — the stars' rule from the cell's side
 * rather than the vocabulary's — so completion reaches the cell's own spelling
 * from either. What the parity vectors pin is the MATCHING; what belongs here is
 * the offering, and that what a completion COMMITS still answers.
 */
async function decoratedCells() {
  console.log("\n== the priority decoration");
  const cols = [
    { key: "priority", header: "Pri", type: "badge", sortable: true,
      badges: [{ value: "[#A]", color: "#e74c3c" }, { value: "[#B]", color: "#ffcc00" }] },
    { key: "title", header: "Headline", type: "text" },
  ];
  const rows = [
    { id: "hi", cells: { priority: "[#A]", title: "the urgent one" } },
    { id: "mid", cells: { priority: "[#B]", title: "the next one" } },
    { id: "flat", cells: { priority: "", title: "nobody ranked this" } },
  ];
  const P = driver({ title: "priorities", columns: cols, rows });
  const ids = (q) => { P.shown(q); return P.handle.getVisible().map((r) => r.id); };
  const leads = () => P.box.querySelectorAll(".tv-ac-item")
    .findIndex((e) => e.classes.has("tv-ac-on"));

  // --- the domain is the cell's own spelling; the decoration is not vocabulary
  check("the column offers the values as the cells wear them",
        P.type("priority:"), domain("[#A]", "[#B]"));
  check("and each carries the rows behind it", P.counts(), [1, 1]);

  // --- reached bracket-free, the way a meta is reached star-free
  check("the letter alone reaches the value it decorates", P.type("priority:a"), ["[#A]"]);
  check("spelled in full it leads, so RET takes it", leads(), 0);
  check("and the cell's own spelling still answers to itself",
        P.type("priority:[#a"), ["[#A]"]);
  check("a bare word reaches it through the column too",
        P.type("a").indexOf("priority:[#A]") !== -1, true);

  // --- and what commits wears the decoration, and matches
  P.type("priority:a");
  P.b().dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("accepting inserts the decorated spelling",
        P.handle.getQuery().trim(), "priority:[#A]");
  check("which is the query the letter would have asked",
        [P.handle.getVisible().map((r) => r.id), ids("priority:A")], [["hi"], ["hi"]]);

  // --- the fold is the whole decoration's, and the match is still whole-value
  check("half a decoration folds nothing", ids("priority:[#"), []);
  check("and neither side is a substring of the other", ids("priority:AB"), []);
  check("the empty meta reads the cell as ever", ids("priority:*empty*"), ["flat"]);
  check("and a negation is the rows the letter left",
        ids("-priority:A"), ["mid", "flat"]);
}

/** Six rows with two columns, which is enough to page, filter and sort over. */
const MARK_VIEW = {
  title: "marks",
  columns: [{ key: "state", header: "State", type: "text", sortable: true },
            { key: "title", header: "Headline", type: "text" }],
  rows: [["a", "TODO", "alpha"], ["b", "DONE", "bravo"], ["c", "TODO", "charlie"],
         ["d", "DONE", "delta"], ["e", "TODO", "echo"], ["f", "DONE", "foxtrot"]]
    .map(([id, state, title]) => ({ id, cells: { state, title } })),
};

/**
 * Row marking: the chrome column, what a mark survives, and the ground it puts
 * a row on. The feature is renderer-local by SCHEMA, so everything here is
 * about the renderer's own surface — no cell, column or op changes shape.
 */
async function rowMarks() {
  console.log("\n== row marks");

  // --- without the option, nothing at all — and nothing a consumer can turn on
  //     by accident: the calls are on the handle either way (as `nextPage' is
  //     with no page size), so the check is that using one paints nothing.
  {
    const off = driver(10);
    check("no marks option, no mark column", off.box.querySelectorAll(".tv-box").length, 0);
    check("and a row is one cell per declared column",
          off.box.querySelector("tbody tr[data-id]").children.length, columns.length);
    off.handle.toggleMark(off.handle.getVisible()[0].id);
    check("markAll is a no-op without the option, and says so", off.handle.markAll(), 0);
    off.handle.flagRow(off.handle.getVisible()[1].id);
    check("a flag without the chrome paints nothing either",
          [off.box.querySelectorAll("tr.tv-flagged").length,
           off.handle.getFlagged().length], [0, 1]);
    await painted();
    check("marking without the option washes no row",
          off.box.querySelectorAll("tr.tv-marked").length, 0);
    check("and puts no count on the line",
          off.box.querySelector(".tv-hint").textContent.indexOf("marked"), -1);
  }

  // --- the chrome
  const M = driver(10, { marks: true });
  const rows = () => M.box.querySelectorAll(".tv-table tbody tr[data-id]");
  const washed = () => rows().filter((tr) => tr.classes.has("tv-marked"));
  const hint = () => M.box.querySelector(".tv-hint").textContent;
  check("marks:true leads the header with a blank box cell",
        [M.box.querySelectorAll("thead th").length, M.box.querySelector("th.tv-box").text],
        [columns.length + 1, ""]);
  check("and every row with a box cell of its own",
        M.box.querySelectorAll("tbody td.tv-box").length, 10);
  // The glyph is the class's, drawn by ::before, so the cell itself is empty
  // and the state has one home rather than two that can disagree.
  check("which the markup leaves empty, the class carrying the state",
        [rows()[0].children[0].text, washed().length], ["", 0]);
  check("the hint line is untouched while nothing is marked",
        hint(), "10 rows · sort scheduled asc" + ACT);
  {
    const css = cssText();
    // Scoped to `.tv-marking', which only `marks' puts on the root: the gutter
    // belongs to either row state and the box in it to a table that marks.
    check("the box glyph is drawn off the class, both states, under the marking root",
          [css.indexOf('.tv-marking .tv-table td.tv-box::before{content:"[ ]"}') !== -1,
           css.indexOf('.tv-marking .tv-table tbody tr.tv-marked td.tv-box::before'
                       + '{content:"[X]"}') !== -1],
          [true, true]);
    check("and the root a marking mount wears is what turns them on",
          [M.box.querySelector(".tv-root").classes.has("tv-marking"),
           driver(4).box.querySelector(".tv-root").classes.has("tv-marking")],
          [true, false]);
  }

  // --- toggling, and what it answers
  const ids = M.handle.getVisible().map((r) => r.id);
  check("toggleMark answers the state it landed in",
        [M.handle.toggleMark(ids[2]), M.handle.toggleMark(ids[2])], [true, false]);
  check("and leaves nothing behind it", M.handle.markedCount(), 0);

  M.handle.toggleMark(ids[1]);
  M.handle.toggleMark(ids[3]);
  await painted();
  check("a marked row wears the wash class, which is what checks its box",
        washed().map((tr) => tr.dataset.id), [ids[1], ids[3]]);
  check("the count leads the hint line, ahead of what is merely on show",
        hint(), "2 marked · 10 rows · sort scheduled asc" + ACT);

  // --- the pointer: the box is a toggle, and the only cell that is not a
  //     selection. Everything past it still selects, one column over.
  M.handle.select(ids[0]);
  await painted();
  rows()[3].children[0].click();
  await painted();
  check("a click on the box toggles that row", M.handle.getMarked(), [ids[1]]);
  check("and leaves the cursor where the reader put it", M.handle.getSelection().id, ids[0]);
  rows()[5].children[3].click();
  await painted();
  check("a click past the box selects the column it landed on, counted past it",
        [M.handle.getSelection().id, M.handle.getSelection().col], [ids[5], 2]);
  check("and the cell mark lands on that td rather than one over",
        rows()[5].children.findIndex((td) => td.classes.has("tv-cell-sel")), 3);

  // --- the survival matrix. A mark is an entry in a set of ids, which is why
  //     it outlives every re-derivation of the rows and only its row's death.
  {
    const S = driver(MARK_VIEW, { marks: true, pageSize: 4 });
    const h = S.handle;
    h.toggleMark("e");                 // page two, marked first
    h.toggleMark("b");                 // page one, marked second
    check("getMarked reads the shown rows first, whatever order they were marked",
          h.getMarked(), ["b", "e"]);
    check("and a mark on a page nobody is looking at still counts", h.markedCount(), 2);

    h.upsertRow({ id: "b", cells: { state: "WAIT", title: "bravo again" } });
    check("an upsert of a marked id keeps its mark", h.getMarked(), ["b", "e"]);
    h.setRows(MARK_VIEW.rows.slice());
    check("setRows keeps the marks whose ids came back", h.getMarked(), ["b", "e"]);

    S.shown("charlie");                // a filter that hides both marked rows
    check("a filter hiding them leaves them marked", h.markedCount(), 2);
    check("with the shown half empty, getMarked is mark order",
          h.getMarked(), ["e", "b"]);
    check("and the line counts every mark, not the ones on show",
          S.box.querySelector(".tv-hint").textContent, "2 marked · 1/6 rows · unsorted");

    S.reset();
    check("a page flip keeps them", [h.nextPage(), h.markedCount()], [true, 2]);
    S.box.querySelector("th[data-key=state]").click();
    await painted();
    check("a re-sort keeps them", h.getMarked().sort(), ["b", "e"]);

    h.deleteRow("b");
    check("deleteRow takes its mark with it", [h.markedCount(), h.getMarked()], [1, ["e"]]);
    h.clearMarks();
    check("clearMarks takes the rest", h.markedCount(), 0);
  }

  // --- actionHints: false drops the legend and nothing else
  {
    const seen = [];
    const H = driver(10, { actionHints: false, onAction: (c, id) => seen.push(c + " " + id) });
    const line = H.box.querySelector(".tv-hint").textContent;
    check("the action pairs are gone from the line",
          [line.indexOf("materialize"), line.indexOf("Cycle TODO")], [-1, -1]);
    check("and no key is marked up for them",
          H.box.querySelectorAll(".tv-hint .tv-key").length, 0);
    check("while the counts and the sort stand where they were",
          line, "10 rows · sort scheduled asc");

    // Presentation only: the actions are still there and still dispatch.
    H.box.querySelectorAll(".tv-table tbody tr[data-id]")[0]
      .dispatchEvent(new Ev("dblclick"));
    check("the default action still runs", seen.pop(), "materialize " + ids[0]);

    // The pager keeps its place in the line too, the legend being what left.
    const P2 = driver(250, { actionHints: false, pageSize: 100 }, 600);
    check("a paged line keeps its range AND its prev/next, dropping only the pairs",
          P2.box.querySelector(".tv-hint").textContent,
          "1–100 of 250 · ‹ prev · next › · sort scheduled asc");

    const D2 = driver(10);
    check("saying nothing leaves the legend exactly as it was",
          D2.box.querySelector(".tv-hint").textContent, "10 rows · sort scheduled asc" + ACT);
    const T2 = driver(10, { actionHints: true });
    check("and asking for it explicitly is the same line",
          T2.box.querySelector(".tv-hint").textContent, "10 rows · sort scheduled asc" + ACT);
  }

  // --- flags: the pending-action state, beside the standing one
  {
    const F = driver(MARK_VIEW, { marks: true, pageSize: 4 });
    const h = F.handle;
    check("flagRow answers the state it landed in",
          [h.flagRow("a"), h.flagRow("a")], [true, false]);
    h.flagRow("a");
    h.flagRow("e");                    // page two
    check("getFlagged reads the shown rows first, then the hidden",
          h.getFlagged(), ["a", "e"]);
    check("and counts every flag, the hidden ones included", h.flaggedCount(), 2);
    h.unflagRow("e");
    check("unflagRow takes one off", h.getFlagged(), ["a"]);
    h.unflagRow("e");
    check("and says nothing when there was none to take", h.getFlagged(), ["a"]);

    // --- the two sets are two questions
    h.toggleMark("a");
    check("a row can be marked and flagged at once",
          [h.getMarked(), h.getFlagged()], [["a"], ["a"]]);
    h.clearMarks();
    check("clearMarks leaves the flags standing",
          [h.markedCount(), h.getFlagged()], [0, ["a"]]);
    h.toggleMark("b");
    h.clearFlags();
    check("and clearFlags leaves the marks standing",
          [h.flaggedCount(), h.getMarked()], [0, ["b"]]);
    h.clearMarks();

    // --- the survival matrix, the same one marks answer
    h.flagRow("b");
    h.flagRow("e");
    h.upsertRow({ id: "b", cells: { state: "WAIT", title: "bravo again" } });
    check("an upsert of a flagged id keeps its flag", h.getFlagged(), ["b", "e"]);
    h.setRows(MARK_VIEW.rows.slice());
    check("setRows keeps the flags whose ids came back", h.getFlagged(), ["b", "e"]);
    F.shown("charlie");
    check("a filter hiding them leaves them flagged", h.flaggedCount(), 2);
    F.reset();
    check("a page flip keeps them", [h.nextPage(), h.flaggedCount()], [true, 2]);
    F.box.querySelector("th[data-key=state]").click();
    await painted();
    check("a re-sort keeps them", h.getFlagged().sort(), ["b", "e"]);
    h.deleteRow("b");
    check("deleteRow takes its flag with it", [h.flaggedCount(), h.getFlagged()], [1, ["e"]]);

    const DF = driver(MARK_VIEW, { marks: true });
    DF.handle.flagRow("c");
    DF.handle.applyDelta([{ op: "delete", index: 2 }]);
    check("a delta's delete drops the flag with the row", DF.handle.flaggedCount(), 0);
    const NF = driver(MARK_VIEW, { marks: true });
    NF.handle.flagRow("a");
    NF.handle.setView(MARK_VIEW);
    check("setView drops them with the view they were about", NF.handle.flaggedCount(), 0);
  }

  // --- flags alone: the gutter without the checkbox
  // `flags' defaults to `marks', which is the one option flags shipped under,
  // so every mount above is byte for byte what it was. Asked for on its own it
  // draws the flag ground and the edge cell the ground needs, and nothing of
  // marking: no box to check, no click that checks one, no count on the line.
  {
    const A = driver(MARK_VIEW, { flags: true });
    const h = A.handle;
    const rowOfId = (id) => A.box.querySelectorAll("tbody tr[data-id]")
      .find((tr) => tr.dataset.id === id);
    const gutterHead = A.box.querySelector("th.tv-box");
    check("flags:true alone leads every row with the gutter cell",
          [A.box.querySelectorAll("tbody td.tv-box").length,
           gutterHead ? gutterHead.text : "no gutter"], [MARK_VIEW.rows.length, ""]);
    check("and the root does not wear the marking class, so no glyph is drawn in it",
          A.box.querySelector(".tv-root").classes.has("tv-marking"), false);
    h.flagRow("b");
    await painted();
    check("a flag washes its row, the state the mount asked for",
          [rowOfId("b").classes.has("tv-flagged"), h.getFlagged()], [true, ["b"]]);
    check("and the line counts it", A.box.querySelector(".tv-hint").textContent
            .indexOf("1 flagged") === 0, true);
    // The edge lives on the gutter cell, so a flag reads there whatever ground
    // the row is on -- which is the whole reason the cell is drawn at all.
    check("the edge rule is unscoped, the gutter being either state's",
          cssText().indexOf(".tv-table tbody tr.tv-flagged td.tv-box{box-shadow:") !== -1,
          true);
    // Marking is off: the box is inert and the count it would lead with never
    // appears, while the ids still go in and come back -- the option gates the
    // DRAWING, as it always has.
    A.box.querySelectorAll("tbody tr[data-id]")[0].children[0].click();
    await painted();
    check("a click on the gutter marks nothing, and selects the row like any cell",
          [h.getMarked(), h.getSelection().id, h.getSelection().col], [[], "a", null]);
    h.toggleMark("c");
    await painted();
    check("and nothing marks a row it does not draw",
          [A.box.querySelectorAll("tr.tv-marked").length, h.markAll(),
           A.box.querySelector(".tv-hint").textContent.indexOf("marked")],
          [0, 0, -1]);
    // The other half of the default: naming it false under `marks: true' takes
    // the flag drawing off and leaves the marking alone.
    const N = driver(MARK_VIEW, { marks: true, flags: false });
    N.handle.flagRow("a");
    N.handle.toggleMark("a");
    await painted();
    check("flags:false under marks:true draws the mark and not the flag",
          [N.box.querySelectorAll("tr.tv-marked").length,
           N.box.querySelectorAll("tr.tv-flagged").length,
           N.handle.getFlagged()], [1, 0, ["a"]]);
  }

  // --- the precedence stack: one background slot, four things wanting it
  {
    const css = document.head.children.map((e) => e.text).join("");
    // Source order IS the precedence, every rule being one class on `tr'.
    const at = (sel) => css.indexOf(sel);
    check("zebra, then mark, then flag, then cursor",
          [at(".tv-table tbody tr.tv-alt{") < at(".tv-table tbody tr.tv-marked{"),
           at(".tv-table tbody tr.tv-marked{") < at(".tv-table tbody tr.tv-flagged{"),
           at(".tv-table tbody tr.tv-flagged{") < at(".tv-table tbody tr.tv-sel{")],
          [true, true, true]);

    const P = driver(MARK_VIEW, { marks: true });
    const h = P.handle;
    const rowOfId = (id) => P.box.querySelectorAll("tbody tr[data-id]")
      .find((tr) => tr.dataset.id === id);
    h.toggleMark("a"); h.flagRow("a");
    h.flagRow("b");
    h.select("a");
    await painted();
    check("a row that is all three carries all three classes",
          ["tv-marked", "tv-flagged", "tv-sel"].map((c) => rowOfId("a").classes.has(c)),
          [true, true, true]);
    check("and a flagged row keeps its class with no cursor on it",
          [rowOfId("b").classes.has("tv-flagged"), rowOfId("b").classes.has("tv-sel")],
          [true, false]);
    // The cursor takes the one background slot, so the flag needs a second
    // channel or it stops saying anything under the cursor. That is the edge.
    check("the flag's edge is on the box cell, where no other state writes",
          /tr\.tv-flagged td\.tv-box\{box-shadow:inset 3px 0 0 var\(--tv-flag\)\}/
            .test(css), true);
    check("and the checkbox glyph is drawn from the mark, independent of any ground",
          /tr\.tv-marked td\.tv-box::before\{content:"\[X\]"\}/.test(css), true);

    // A column band crosses all of it and contests none of it: the states are
    // on the tr and the band is on the td, so a row that is marked, flagged and
    // under the cursor keeps every class it had while the band washes one of
    // its cells. And the box is nobody's column, so the band is counted past it.
    h.select("a", 1);
    await painted();
    check("a band leaves every row class where it found it",
          ["tv-marked", "tv-flagged", "tv-sel"].map((c) => rowOfId("a").classes.has(c)),
          [true, true, true]);
    const bandIx = () => P.box.querySelectorAll("tbody td.tv-colsel")
      .map((el) => el.parentNode.children.indexOf(el));
    check("and lands one past the box on every row, the box never wearing it",
          [[...new Set(bandIx())], bandIx().length,
           P.box.querySelectorAll("td.tv-box.tv-colsel").length],
          [[2], P.box.querySelectorAll("tbody tr[data-id]").length, 0]);
    check("the crossing is on the cursor row and on no other",
          P.box.querySelectorAll("tbody td.tv-cell-sel")
            .map((el) => el.parentNode.dataset.id), ["a"]);
    check("and a flagged row it merely crosses keeps its own edge cell untouched",
          [rowOfId("b").children[2].classes.has("tv-colsel"),
           rowOfId("b").children[2].classes.has("tv-cell-sel")], [true, false]);
    h.select("a");
    await painted();
    check("giving the column back takes the band with it",
          P.box.querySelectorAll("tbody td.tv-colsel").length, 0);

    // --- the hint segment
    check("both counts lead the line, the pending one first",
          P.box.querySelector(".tv-hint").textContent, "2 flagged · 1 marked · 6 rows · unsorted");
    h.clearFlags();
    await painted();
    check("and the flag segment goes when the last flag does",
          P.box.querySelector(".tv-hint").textContent.indexOf("flagged"), -1);
    h.clearMarks();
    await painted();
    check("leaving the line it always was",
          P.box.querySelector(".tv-hint").textContent, "6 rows · unsorted");
  }

  // --- the flag wash, read out of the sheet like the frost
  {
    const L = washIn("light", "flag", "flag-wash"), D = washIn("dark", "flag", "flag-wash");
    check("both themes wash the one flag var", [L.colour === D.colour, !!L.colour],
          [true, true]);
    check("and each asks for a modest amount of it",
          [L.pct > 0 && L.pct <= 0.3, D.pct > 0 && D.pct <= 0.3], [true, true]);
    check("the flag is a red, which is nothing else the table paints",
          hue(L.colour) <= 15 || hue(L.colour) >= 345, true);
    // The floors are what SET the strengths rather than what they were checked
    // against afterwards: red is dark, and on white the tag ink falls under
    // 4.5:1 by 10%, so the light wash is the most the ink allows and no more.
    for (const [theme, p] of [["light", L], ["dark", D]]) {
      const pal = paletteIn(`:root[data-theme="${theme}"] .tv-root{`);
      check(`${theme}: body ink clears 7:1 on a flagged row`,
            ratio(pal.fg, p.wash) >= 7, true);
      check(`${theme}: the tag ink still clears 4.5:1 on it`,
            ratio(pal.muted, p.wash) >= 4.5, true);
      check(`${theme}: and the wash stays nearer the page than the solid flag`,
            ratio(p.ground, p.wash) < ratio(p.wash, p.colour), true);
    }
    // The two strengths are bound by different things, and only one of them is
    // bound by the ink: on white a red this dark drags --tv-muted under 4.5:1
    // by 10%, so the light wash is the most the ink allows. On black there is
    // room to spare, and the strength is set by what reads rather than by a
    // floor -- which is why the two numbers are far apart.
    check("light is the strength the ink caps; two points more would break it",
          ratio(paletteIn(':root[data-theme="light"] .tv-root{').muted,
                mixed(L.ground, L.colour, L.pct + 0.02)) >= 4.5, false);
    check("dark has headroom the light side does not",
          ratio(paletteIn(':root[data-theme="dark"] .tv-root{').muted,
                mixed(D.ground, D.colour, D.pct + 0.06)) >= 4.5, true);
    // The mark and the flag land at the same lightness on white, so they are
    // told apart by hue rather than by weight — worth pinning, since a future
    // strength change could make them the same wash.
    check("the mark and the flag are different hues, which is what separates them",
          Math.abs(hue(L.wash) - hue(L.colour)) < 45, true);
  }

  // --- the two presentations: a stepped seam flows, an explicit turn snaps
  {
    const P = driver(250, { pageSize: 100 }, 300);
    const h = P.handle;
    // Display order, not store order: the view carries a sort, so an index
    // into `getRows' would be indexing the wrong sequence. An unpaged mount of
    // the same view IS the ordered set.
    const ids = driver(250).handle.getVisible().map((r) => r.id);
    const at = (id) => ids.indexOf(id);

    check("it boots paged, on page one", [h.pageInfo().page, h.getVisible().length],
          [1, 100]);
    h.select(h.getVisible()[50].id);
    await painted();
    check("a step inside the page changes no presentation",
          [h.selectStep(1), h.pageInfo().page, h.getVisible().length], [true, 1, 100]);

    // --- crossing forward: one row, and the pager follows the cursor
    h.select(h.getVisible()[99].id);
    await painted();
    check("parked on the last row of page one", at(h.getSelection().id), 99);
    check("the step across succeeds", h.selectStep(1), true);
    await painted();
    check("and moved the cursor exactly one row", at(h.getSelection().id), 100);
    check("the pager now reads the cursor's page", h.pageInfo().page, 2);
    check("and its range is that page's, from the cursor's side of the seam",
          [h.pageInfo().from, h.pageInfo().to], [101, 200]);
    check("getVisible is the cursor's page, so buffer-end keys stay meaningful",
          [h.getVisible().length, at(h.getVisible()[0].id),
           at(h.getVisible()[99].id)], [100, 100, 199]);

    // --- a held burst, across a second seam
    let steps = 0;
    for (let i = 0; i < 101 && h.selectStep(1); i++) steps++;
    await painted();
    check("a burst crosses the next seam without stopping at it",
          [steps, at(h.getSelection().id)], [101, 201]);
    check("and the pager has followed it onto page three", h.pageInfo().page, 3);

    // --- an explicit turn snaps back to the crisp presentation
    check("previousPage steps back a page from the cursor's", h.previousPage(), true);
    await painted();
    check("landing on that page's LAST row, the paged slice exact",
          [h.pageInfo().page, at(h.getSelection().id), h.getVisible().length,
           at(h.getVisible()[0].id)], [2, 199, 100, 100]);
    check("nextPage lands on the first row of the one after",
          [h.nextPage(), at(h.getSelection().id)], [true, 200]);
    check("with the pager and the slice agreeing again",
          [h.pageInfo().page, at(h.getVisible()[0].id)], [3, 200]);

    // --- the resets put it back to paged page one
    h.select(h.getVisible()[49].id);
    h.selectStep(1);
    P.box.querySelector("th[data-key=state]").click();
    await painted();
    check("a sort toggle resets to paged page one",
          [h.pageInfo().page, h.getVisible().length], [1, 100]);

    const Q = driver(250, { pageSize: 100 }, 300);
    Q.handle.select(Q.handle.getVisible()[99].id);
    Q.handle.selectStep(1);
    check("a filter resets it too", (Q.shown("review"), Q.handle.pageInfo().page), 1);

    const R = driver(250, { pageSize: 100 }, 300);
    R.handle.select(R.handle.getVisible()[99].id);
    R.handle.selectStep(1);
    check("and so does setRows", (R.handle.setRows(view(250).rows),
                                  R.handle.pageInfo().page), 1);

    // --- marks and flags are id-keyed, so a presentation switch is nothing
    const M = driver(250, { pageSize: 100, marks: true }, 300);
    const mh = M.handle;
    const mids = ids;
    mh.toggleMark(mids[5]);
    mh.flagRow(mids[150]);              // a page the cursor has not reached
    mh.select(mh.getVisible()[99].id);
    await painted();
    mh.selectStep(1);                   // into continuous
    await painted();
    check("a mark and a flag both survive the switch to continuous",
          [mh.getMarked(), mh.getFlagged(), mh.pageInfo().page],
          [[mids[5]], [mids[150]], 2]);
    mh.nextPage();                      // and the snap back
    check("and both survive the snap back to paged",
          [mh.getMarked(), mh.getFlagged()], [[mids[5]], [mids[150]]]);
    check("with the column carried through all of it",
          mh.getSelection().col, null);
    // "On show" means one thing across the handle: getMarked, getFlagged and
    // getVisible all read the cursor's page, so a mark on another page sorts
    // after the shown ones in continuous exactly as it does in paged.
    mh.toggleMark(mids[210]);          // page three, the cursor being on two
    check("getMarked reads the cursor's page first, then the rest",
          mh.getMarked(), [mids[5], mids[210]].filter((id) =>
            mh.getVisible().some((r) => r.id === id)).concat(
            [mids[5], mids[210]].filter((id) =>
              !mh.getVisible().some((r) => r.id === id))));
  }

  // --- no pageSize at all: none of this exists
  {
    const N = driver(40);
    N.handle.select(N.handle.getVisible()[0].id);
    let n = 0;
    while (N.handle.selectStep(1)) n++;
    check("with no page size a step walks the whole set and stops at the end",
          [n, N.handle.getVisible().length, N.handle.pageInfo()],
          [39, 40, { page: 1, pages: 1, from: 1, to: 40, total: 40 }]);
  }

  // --- flagHelp: the segment becomes a reminder, on the flagged row alone
  {
    const HELP = "d/D archive · u unflag";
    const F = driver(MARK_VIEW, { marks: true, flagHelp: HELP });
    const line = () => F.box.querySelector(".tv-hint").textContent;
    F.handle.flagRow("b");
    F.handle.select("a");
    await painted();
    check("the cursor off the flagged row leaves the plain count",
          line(), "1 flagged · 6 rows · unsorted");
    F.handle.select("b");
    await painted();
    check("and on it the segment carries the consumer's own words",
          line(), "1 flagged · d/D archive · u unflag · 6 rows · unsorted");
    check("with the keys marked up the way the action legend marks its own",
          F.box.querySelectorAll(".tv-hint .tv-key").map((e) => e.text), ["d/D", "u"]);
    F.handle.flagRow("c");
    await painted();
    check("the count is of every flag, the helper of the row at point",
          line(), "2 flagged · d/D archive · u unflag · 6 rows · unsorted");
    F.handle.unflagRow("b");
    await painted();
    check("unflagging the row under the cursor puts the helper away",
          line(), "1 flagged · 6 rows · unsorted");
    F.handle.clearFlags();
    await painted();
    check("and with no flags at all the segment goes", line(), "6 rows · unsorted");

    // Without the option the line is exactly what it was.
    const P = driver(MARK_VIEW, { marks: true });
    P.handle.flagRow("a");
    P.handle.select("a");
    await painted();
    check("no flagHelp, no helper — the count segment as it always was",
          P.box.querySelector(".tv-hint").textContent, "1 flagged · 6 rows · unsorted");
  }

  // --- markAll: the filtered SET, which is not the page on show
  {
    const A = driver(MARK_VIEW, { marks: true, pageSize: 2 });
    const h = A.handle;
    check("the page holds two of the six", h.getVisible().length, 2);
    check("markAll answers with how many carry a mark", h.markAll(), 6);
    check("and it reached the rows no page was showing",
          h.getMarked().sort(), ["a", "b", "c", "d", "e", "f"]);
    check("it is idempotent — twice is once", h.markAll(), 6);

    h.clearMarks();
    // A filter is what the reader narrowed to; the page is only how much of it
    // fits at a time. So the filter bounds it and the page does not.
    A.shown("TODO");
    check("the filter leaves three, still two to a page",
          [h.getVisible().length, A.handle.pageInfo().total], [2, 3]);
    check("markAll takes the filtered set whole", h.markAll(), 3);
    check("which is the matching rows and no others",
          h.getMarked().sort(), ["a", "c", "e"]);
    await painted();
    check("and the line counts them",
          A.box.querySelector(".tv-hint").textContent.indexOf("3 marked · "), 0);

    // Already-marked rows keep their marks when the set widens under them.
    A.reset();
    check("widening the filter and marking again adds the rest", h.markAll(), 6);
    check("without disturbing the ones already carried",
          h.getMarked().sort(), ["a", "b", "c", "d", "e", "f"]);
    h.clearMarks();
    check("and clearMarks still takes the lot", h.markedCount(), 0);
  }

  // --- the two other ways a row or a view goes away
  {
    const D = driver(MARK_VIEW, { marks: true });
    D.handle.toggleMark("c");
    D.handle.applyDelta([{ op: "delete", index: 2 }]);      // `c' is the window's third
    check("a delta's delete drops the mark with the row",
          [D.handle.markedCount(), D.handle.getRows().length], [0, 5]);

    const N = driver(MARK_VIEW, { marks: true });
    N.handle.toggleMark("a");
    N.handle.setView(MARK_VIEW);
    check("setView drops them with the view they were about", N.handle.markedCount(), 0);
  }

  // --- the spacers span the chrome, or the virtualized table splits in two
  {
    const tall = driver(60, { marks: true }, 300);
    const pad = tall.box.querySelector("tbody tr.tv-pad td");
    check("a spacer spans the mark column as well as the data ones",
          pad.attrs.get("colspan"), String(columns.length + 1));
  }

  // --- the ground: its own wash, and the ink still legible on it
  {
    const css = cssText();
    const at = css.indexOf(".tv-table tbody tr.tv-marked{\n"
                         + "  background:color-mix(in srgb,var(--tv-muted) var(--tv-mark-wash)");
    // One `indexOf' for both halves — that the rule exists, and that what it
    // washes is the muted ink rather than the frost, which is the applied
    // filter's identity. Read as an offset, since the ordering check below
    // compares against it and -1 would let anything past.
    check("the marked row washes the muted ink, in a rule of its own", at !== -1, true);
    // The cursor is the other role, and it is the one that wins on a row
    // wearing both: its rule follows, at equal specificity.
    check("and the cursor's rule follows it", css.indexOf("tr.tv-sel{background") > at, true);
    for (const theme of ["light", "dark"]) {
      const p = paletteIn(`:root[data-theme="${theme}"] .tv-root{`);
      const ground = mixed(p.bg, p.muted, pctOf(p["mark-wash"]));
      check(theme + ": the mark ground is neither the page's nor the cursor's",
            [ground === p.bg, ground === p.sel], [false, false]);
      // The tag ink IS the colour being washed, so it is the floor that binds:
      // body text on this ground can only be further from it.
      check(theme + ": the muted ink the wash is made of still clears AA on it",
            ratio(p.muted, ground) >= 4.5, true);
    }
  }
}

/** Two rows under a title column, one of which leads somewhere. */
const LINK_VIEW = {
  title: "linked",
  columns: [{ key: "state", header: "State", type: "text" },
            { key: "title", header: "Headline", type: "text" }],
  rows: [{ id: "a", cells: { state: "TODO", title: "alpha" }, linked: true },
         { id: "b", cells: { state: "TODO", title: "bravo" } }],
};

/**
 * `linked': a producer's row flag, drawn on the title cell and nowhere else.
 * The whole feature is where the mark lands and what it is made of, so that is
 * what the checks are: the cell it picks, the views it declines to mark, the
 * one rule that inks a link wherever one is drawn, and that ink measured on
 * every ground the other row states write.
 */
async function linkedRows() {
  console.log("\n== linked rows");

  // --- where the mark lands
  {
    const L = driver(LINK_VIEW);
    const rowOfId = (id) => L.box.querySelectorAll("tbody tr[data-id]")
      .find((tr) => tr.dataset.id === id);
    const marked = () => L.box.querySelectorAll("tbody td.tv-linked")
      .map((td) => td.parentNode.dataset.id);
    check("the linked row is marked and the other one is not", marked(), ["a"]);
    check("on one cell of it, and that cell is the title column's",
          [rowOfId("a").children.filter((td) => td.classes.has("tv-linked")).length,
           rowOfId("a").children.findIndex((td) => td.classes.has("tv-linked"))],
          [1, 1]);
    // The cell is chosen by KEY, so a view spelling its columns the other way
    // round marks the other position. Reading it as "the second column" would
    // pass the check above and fail here.
    const R = driver({ title: "linked", columns: LINK_VIEW.columns.slice().reverse(),
                       rows: LINK_VIEW.rows });
    check("by its key rather than by its position",
          R.box.querySelectorAll("tbody tr[data-id]")[0].children
            .findIndex((td) => td.classes.has("tv-linked")), 0);

    // The flag is row data like a cell is, so it arrives and leaves by the
    // ordinary row ops rather than by a call of its own.
    L.handle.upsertRow({ id: "b", cells: { state: "TODO", title: "bravo" }, linked: true });
    await painted();
    check("an upsert can hand a row the mark", marked(), ["a", "b"]);
    L.handle.upsertRow({ id: "b", cells: { state: "TODO", title: "bravo" } });
    await painted();
    check("and take it back off", marked(), ["a"]);
  }

  // --- and the two views it marks nothing in
  {
    const N = driver({ title: "no title column",
                       columns: [{ key: "name", header: "Name" },
                                 { key: "state", header: "State" }],
                       rows: [{ id: "a", cells: { name: "alpha", state: "TODO" },
                                linked: true }] });
    check("a view with no title column carries no mark, and still renders the row",
          [N.box.querySelectorAll("td.tv-linked").length,
           N.box.querySelectorAll("tbody tr[data-id]").length], [0, 1]);
    // The field is additive: a producer that never sends it gets the table it
    // always got, which is the claim the unknown-fields rule rests on.
    const O = driver(10);
    check("and rows that never carry the field are marked nowhere",
          O.box.querySelectorAll("td.tv-linked").length, 0);
  }

  // --- what it is made of: one rule, spelling what a link looks like
  {
    const css = cssText();
    const bare = css.replace(/\/\*[\s\S]*?\*\//g, "");
    const rule = /\.tv-link,\.tv-table tbody td\.tv-linked\{([^}]*)\}/.exec(bare);
    const body = rule ? rule[1].replace(/\s+/g, "") : "";
    // The anchor a cell's own markup produces and the whole cell of a linked
    // row are the SAME declaration, which is what makes a half-markup title one
    // colour: two rules agreeing today is what produced the two-tone cell.
    check("the anchor and the linked cell are one rule, and it is the link treatment",
          [!!rule, body],
          [true, "color:var(--tv-link);text-decoration:underline;text-underline-offset:2px"]);
    check("nothing else in the sheet says either name",
          bare.split("}").filter((r) => /\.tv-link(ed)?\b/.test(r.split("{")[0] || "")).length,
          1);
    // A ground would contest the four the row states already write; the ink
    // does not, which is what lets the colour be the whole cell's.
    check("it writes ink and decoration, and no ground", /background/.test(body), false);
    // The ink is the palette's, never the accent's: the accent is chrome ink
    // and is measured on the page, where this is measured on the row grounds.
    check("and the ink is --tv-link rather than the accent it came from",
          /var\(--tv-accent\)/.test(body), false);

    // The bug, at the DOM: a title that is half link markup and half plain
    // words. The markup is an anchor and the words are bare text, so the cell
    // is uniform only when the one rule inks both -- there is nothing else
    // inside it to carry a colour of its own.
    const M = driver({ title: "linked", columns: LINK_VIEW.columns,
      rows: [{ id: "a", linked: true,
               cells: { state: "TODO", title: "read [[http://x][the paper]] tonight" } }] });
    const mixedCell = M.box.querySelector("tbody td.tv-linked");
    check("a half-markup title is one anchor between two runs of bare text",
          [mixedCell.childNodes.length, mixedCell.children.length,
           mixedCell.children[0].classes.has("tv-link"), mixedCell.text],
          [3, 1, true, "read the paper tonight"]);
    // The other half of one treatment: a row the producer never flagged still
    // draws its cell's own links as links, and takes no cell mark for it.
    const U = driver({ title: "unlinked", columns: LINK_VIEW.columns,
      rows: [{ id: "a", cells: { state: "TODO", title: "see [[http://x][x]]" } }] });
    check("a row with no flag keeps its cell's own links and gains no mark",
          [U.box.querySelectorAll("a.tv-link").length,
           U.box.querySelectorAll("td.tv-linked").length], [1, 0]);

    const P = driver(LINK_VIEW, { marks: true });
    const h = P.handle;
    const cellOf = (id) => P.box.querySelectorAll("tbody tr[data-id]")
      .find((tr) => tr.dataset.id === id).children
      .find((td) => td.classes.has("tv-linked"));
    h.toggleMark("a"); h.flagRow("a");
    h.select("a", 1);
    await painted();
    check("a row that is marked, flagged and under the cursor keeps its mark",
          [P.box.querySelectorAll("tbody tr.tv-sel td.tv-linked").length,
           ["tv-marked", "tv-flagged", "tv-sel"]
             .map((c) => cellOf("a").parentNode.classes.has(c))],
          [1, [true, true, true]]);
    // The washes are the td's own two, and they land on the same cell without
    // touching the decoration: one writes background, the other text.
    check("and the column band crossing that very cell leaves it standing",
          [cellOf("a").classes.has("tv-colsel"), cellOf("a").classes.has("tv-cell-sel")],
          [true, true]);
  }

  // --- the ink, on every ground a cell can wear
  // A colour is only a decision once it is measured, and the grounds here are
  // the ROW's rather than the page: the four row washes, the column band over
  // each of them, and the crosshair. Read out of the sheet rather than
  // re-spelled, so moving a wash moves what is asserted.
  {
    const base = paletteIn(".tv-root{");
    for (const theme of ["light", "dark"]) {
      const p = paletteIn(`:root[data-theme="${theme}"] .tv-root{`);
      const ink = p.link || base.link;
      const rows = { page: p.bg, zebra: p.alt,
                     marked: mixed(p.bg, p.muted, pctOf(p["mark-wash"])),
                     flagged: mixed(p.bg, p.flag || base.flag, pctOf(p["flag-wash"])),
                     cursor: p.sel };
      const grounds = {};
      for (const [what, g] of Object.entries(rows)) {
        grounds[what] = g;
        grounds[what + " under the band"] = mixed(g, base.col, pctOf(p["col-wash"]));
      }
      grounds.crosshair = mixed(rows.cursor, base.col, pctOf(p["cell-wash"]));
      const under = Object.entries(grounds)
        .filter(([, g]) => ratio(ink, g) < 4.5).map(([what]) => what);
      check(`${theme}: the link ink clears 4.5:1 on all ${Object.keys(grounds).length} of them`,
            under, []);
      // Hue held, lightness moved -- the operation the palette comment
      // documents for the light accent, applied to the accent itself.
      check(`${theme}: and it is the accent's own hue, one weight away`,
            [Math.abs(hue(ink) - hue(p.accent)) <= 3, ink === p.accent], [true, false]);
    }
    // Why the ink is a value of its own: on dark the accent, which is what half
    // a linked title used to wear, falls under the floor on the amber grounds,
    // the crosshair being the palest of them.
    const d = paletteIn(':root[data-theme="dark"] .tv-root{');
    const cross = mixed(d.sel, base.col, pctOf(d["cell-wash"]));
    check("the accent would not have cleared the crosshair on dark, and the link ink does",
          [ratio(d.accent, cross) >= 4.5, ratio(d.link, cross) >= 4.5], [false, true]);
    // The identity, spelled in the const block the frost, the flag and the
    // column colour are spelled in -- and in TWO weights, where those are one:
    // a wash can be one colour at two strengths, ink on two grounds cannot.
    check("the ink is one value per theme, in all four palette blocks",
          [base.link, paletteIn(':root[data-theme="light"] .tv-root{').link, d.link,
           paletteIn("@media (prefers-color-scheme:dark){.tv-root{").link],
          ["#30739B", "#30739B", "#7CC9F8", "#7CC9F8"]);
  }
}

/**
 * The ORDER as one of the query's own tokens: `sort:COL', `sort:COL:desc'.
 * SCHEMA's one key that is no predicate — it narrows nothing and states the
 * order instead, written order being precedence — so everything below is about
 * what a token does to the ROW ORDER while the row SET stands still.
 *
 * The refusals are the other half: a sort token names one column in one
 * direction, and a negation, an alternation, a column no view carries and a
 * direction that is neither word are each a query a producer answers as an
 * error. A renderer has nobody to refuse to, so it drops the key and the token
 * narrows nothing, which is what every check below asserts about them.
 */
async function sortTokens() {
  console.log("\n== sort tokens");
  const cols = [
    { key: "dept",  header: "Dept",  sortable: true },
    { key: "score", header: "Score", type: "number", sortable: true },
    { key: "name",  header: "Name" },        // deliberately not sortable
  ];
  const rows = [
    { id: "ada",  cells: { dept: "Eng",   score: 92, name: "Ada" } },
    { id: "bell", cells: { dept: "Eng",   score: 88, name: "Bell" } },
    { id: "dot",  cells: { dept: "Sales", score: 70, name: "Dot" } },
    { id: "gil",  cells: { dept: "Ops",   score: 77, name: "Gil" } },
  ];
  // The view opens on `name', which no reader may promote: a DECLARED sort
  // opens as written whether or not its column opts in, and this is the order
  // every case below falls back to.
  const P = driver({ title: "roster", columns: cols, rows,
                     sort: { column: "name", ascending: true } });
  /** Commit Q from a clean box and read the ids in display order. */
  const ids = (q) => (P.shown(q), P.handle.getVisible().map((r) => r.id));
  const DECLARED = ["ada", "bell", "dot", "gil"];

  // The GRAMMAR — ordering, direction, precedence, and every refusal — is the
  // parity vectors' (`fixtures/parity/sort-tokens.json`), run over this same
  // commit path. What is left here is what a vector cannot express: the STRIP
  // and the headers, promotion writing the query, and the fallback order.
  check("the declared sort opens the view and names no token",
        [ids(""), P.chipsOf()], [DECLARED, []]);
  check("and narrows nothing — the set is the set", P.shown("sort:score"), 4);
  check("taking the tokens off comes home to the declared order", ids(""), DECLARED);

  // --- a predicate and an ordering are different jobs, and compose
  check("a predicate narrows what the token orders",
        ids("dept:Eng sort:score:desc"), ["ada", "bell"]);
  check("and the order is on the headers while the token is in the strip",
        [P.sortsOf(), P.chipsOf()], [["Score▼"], ["dept:Eng", "sort:score:desc"]]);

  // A refused token is still a token: it stays in the query as written, so a
  // producer sees exactly what the reader typed and can say what is wrong with
  // it. Dropping it here would answer a different query than the one asked.
  check("a refused token is left in the query as written",
        (P.shown("-sort:score"), P.handle.getQuery()), "-sort:score");
  check("and orders nothing, having been dropped from the chain",
        P.handle.getVisible().map((r) => r.id), DECLARED);

  // --- promotion is query editing: `^' and a header click both land here
  P.shown("dept:Eng");
  // The first press is where the declared chain becomes tokens, and it becomes
  // ALL of them: promotion moves the key it names and nothing else, so what the
  // reader was reading by is still what the rows are in.
  check("promotion writes the chain into the query, keeping the predicate",
        (P.handle.sortPromote("score"), P.handle.getQuery()),
        "dept:Eng sort:score sort:name");
  check("a second promotion recomposes the tokens rather than adding to them",
        (P.handle.sortPromote("dept"), P.handle.getQuery()),
        "dept:Eng sort:dept sort:score sort:name");
  check("the leading key flips where it already leads",
        (P.handle.sortPromote("dept"), P.handle.getQuery()),
        "dept:Eng sort:dept:desc sort:score sort:name");
  check("and the rows are in that order without waiting for anyone",
        P.handle.getVisible().map((r) => r.id), ["bell", "ada"]);
  check("`sortable' still gates it, and a refusal writes no token",
        [P.handle.sortPromote("name"), P.handle.getQuery()],
        [false, "dept:Eng sort:dept:desc sort:score sort:name"]);
  check("DEL takes a sort token off like any other token",
        (P.handle.stripLastToken(), P.handle.getQuery()),
        "dept:Eng sort:dept:desc sort:score");
  check("and the order follows it down",
        P.handle.getVisible().map((r) => r.id), ["bell", "ada"]);
  check("until the last one goes and the declared order is back",
        (P.handle.stripLastToken(), P.handle.stripLastToken(),
         [P.handle.getQuery(), P.sortsOf()]),
        ["dept:Eng", ["Name▲"]]);

  // --- a stated order is the fallback, and a query naming one outranks it
  check("a producer's sortBy restates what the query falls back to",
        (P.handle.sortBy("score", false), P.shown(""),
         P.handle.getVisible().map((r) => r.id)),
        ["ada", "bell", "gil", "dot"]);
  check("and a token outranks it while it is applied", ids("sort:dept"),
        ["ada", "bell", "gil", "dot"]);

  // --- `*none*': the empty chain, and the only way a reader takes a declared
  // order off. `stated' is score-descending here, from the `sortBy' above, so
  // these are the meta beating a producer's own restatement — which is the
  // whole of what NAMING a sort key means.
  check("`*none*' is the empty chain, and the rows are in the order they arrived",
        [ids("sort:*none*"), P.sortsOf(), P.handle.getSort()],
        [["ada", "bell", "dot", "gil"], [], []]);
  check("it rides as one chip, and DEL takes it off like any other token",
        [P.chipsOf(), (P.handle.stripLastToken(), P.handle.getQuery()), P.sortsOf()],
        [["sort:*none*"], "", ["Score▼"]]);
  check("a key that RESOLVES outranks it, wherever among the tokens it is written",
        [ids("sort:*none* sort:score"), ids("sort:score sort:*none*")],
        [["dot", "gil", "bell", "ada"], ["dot", "gil", "bell", "ada"]]);
  check("and the headers then wear the companion alone", P.sortsOf(), ["Score▲"]);

  // --- the `sort:' stage completes what a reader may order by
  check("`sort:' offers the sortable columns, and the empty chain behind them",
        P.type("sort:"), ["dept", "score", "*none*"]);
  check("a prefix narrows to the column it opens", P.type("sort:sc"), ["score"]);
  check("naming one in full offers the other direction beside it",
        P.type("sort:score"), ["score", "score:desc"]);
  check("and past the colon the two directions are the whole domain",
        P.type("sort:score:"), ["score:asc", "score:desc"]);
  check("a column that opts out of sorting is offered by nothing",
        P.type("sort:na"), []);
  check("the meta completes star-blind, the way every meta does",
        [P.type("sort:non"), P.type("sort:*non")], [["*none*"], ["*none*"]]);
  check("`sortable' gates the OFFER; the token a reader may WRITE it never gated",
        (P.shown("sort:name:desc"), P.handle.getVisible().map((r) => r.id)),
        ["gil", "dot", "bell", "ada"]);

  // --- the strip carries one of each token, however often it is spelled
  check("an exact twin collapses, the first keeping its place",
        (P.shown("dept:Eng dept:Eng dept:Eng"), [P.chipsOf(), P.handle.getQuery()]),
        [["dept:Eng"], "dept:Eng"]);
  check("a near twin is another token and stays",
        (P.shown("dept:Eng dept:Engineering"), P.chipsOf()),
        ["dept:Eng", "dept:Engineering"]);
  check("position is the FIRST occurrence's, so precedence survives the collapse",
        (P.shown("sort:score sort:dept sort:score"), P.chipsOf()),
        ["sort:score", "sort:dept"]);
  check("and a sort token collapses like every other one",
        (P.shown("sort:score sort:score"), [P.chipsOf(), P.handle.getQuery()]),
        [["sort:score"], "sort:score"]);

  // --- and a sort token collapses by its COLUMN, not by how it is spelled.
  // The chain keeps a column's first spelling and drops the rest, so a second
  // chip naming that column describes an order the rows are not in — which is
  // the one thing the strip may not do.
  check("two spellings of one ordering are one chip",
        (P.shown("sort:score sort:score:asc"), [P.chipsOf(), P.handle.getQuery()]),
        [["sort:score"], "sort:score"]);
  check("and a second direction on a column the chain already has is chrome too",
        (P.shown("sort:score sort:score:desc"), [P.chipsOf(), P.handle.getQuery()]),
        [["sort:score"], "sort:score"]);
  check("the FIRST spelling is what stays, its direction with it",
        (P.shown("sort:score:desc sort:score"), [P.chipsOf(), P.handle.getQuery()]),
        [["sort:score:desc"], "sort:score:desc"]);
  check("so the strip and the chain say ONE thing about the column",
        P.handle.getSort().map((k) => k.column + (k.ascending ? "▲" : "▼")),
        ["score▼"]);
  check("a negated one stays as spelled — it is a refusal the reader typed",
        (P.shown("sort:score -sort:score"), P.chipsOf()),
        ["sort:score", "-sort:score"]);
  check("and another column is another token",
        (P.shown("sort:score sort:dept:desc"), P.chipsOf()),
        ["sort:score", "sort:dept:desc"]);

  // --- the headers pay for what they wear
  {
    const el = P.box.querySelectorAll(".tv-table thead th");
    const colEls = P.box.querySelectorAll(".tv-table colgroup col");
    P.shown("sort:dept sort:score");
    const width = (i) => Number(String(colEls[i].style.width).replace(/[^0-9.]/g, ""));
    check("a chained header is paid for in the column's width — arrow and ordinal",
          [width(0) >= el[0].text.length, width(1) >= el[1].text.length], [true, true]);
    check("and the marks are what makes it wider than the bare word",
          [el[0].text, el[1].text], ["Dept▲¹", "Score▲²"]);
  }

  // --- the strip tells ORDERING from NARROWING. The class is the PARSE: a chip
  //     says it orders exactly where the chain is built out of its token.
  {
    /** Whether each live chip says it orders, in strip order. */
    const orders = () => P.box.querySelectorAll(".tv-chip[data-i]")
      .map((c) => c.classes.has("tv-chip-sort"));
    check("a predicate and an ordering are two chips, and one of them orders",
          (P.shown("dept:Eng sort:score:desc"), [P.chipsOf(), orders()]),
          [["dept:Eng", "sort:score:desc"], [false, true]]);
    check("the empty chain states an order like every other sort token",
          (P.shown("sort:*none*"), orders()), [true]);
    check("`sortable' gates the gesture, so a column that opts out orders too",
          (P.shown("sort:name:desc"), orders()), [true]);
    // Every refusal `sortKeyOf' has, one chip each. The renderer drops the key,
    // so such a token orders nothing and narrows nothing; the strip shows what
    // was typed rather than promising an order no rows are in.
    check("and every refusal keeps the ordinary chip",
          (P.shown("-sort:score sort:nope sort:score:sideways sort:score|dept sort:"),
           [P.chipsOf(), orders()]),
          [["-sort:score", "sort:nope", "sort:score:sideways", "sort:score|dept", "sort:"],
           [false, false, false, false, false]]);
    // A crumb is a LABEL. One that happens to spell a sort token is still where
    // the reader came FROM, so the ordering's colour may not reach it.
    P.shown("sort:score");
    P.handle.pushCrumb({ label: "sort:score", query: "sort:score" });
    check("a crumb spelling one is a crumb, and no ordering leaks into it",
          [P.crumbsOf(),
           P.box.querySelectorAll(".tv-chip-muted").map((c) => c.classes.has("tv-chip-sort")),
           orders()],
          [["sort:score"], [false], [true]]);
    P.handle.setCrumbs([]);
  }

  // --- and the ordering's identity, measured. The GROUND carries the whole of
  //     it: the silhouette, the ink, the × and the hover are the chip's own.
  {
    const css = cssText();
    const rule = ".tv-pal .tv-chip-sort";
    check("the sort chip's rule is spelled where the filter chip's is, after it",
          [css.indexOf(rule + "{") > css.indexOf(".tv-pal .tv-chip{"),
           css.indexOf(rule + "{") < css.indexOf(".tv-chips .tv-chip-muted{")],
          [true, true]);
    const sort = boxOf([rule]), frost = boxOf([".tv-pal .tv-chip"]);
    check("it washes the column band's own colour where the filter chip washes frost",
          [/var\(--tv-col\)/.test(sort.background), /var\(--tv-frost\)/.test(frost.background)],
          [true, true]);
    check("at a strength of its own, over the strength every chip's edge takes",
          [/var\(--tv-sort-wash\)/.test(sort.background),
           /var\(--tv-chip-edge\)/.test(sort["border-color"])], [true, true]);
    check("and respells nothing else, the ground being the whole difference",
          Object.keys(sort).sort(), ["background", "border-color"]);
    check("so the filter chip stands as it stood — frost for ink, ground and edge",
          [Object.keys(frost).sort(), /var\(--tv-chip-wash\)/.test(frost.background),
           /var\(--tv-frost\)/.test(frost["border-color"])],
          [["background", "border-color", "color"], true, true]);
    for (const name of ["light", "dark"]) {
      const theme = /** @type {"light"|"dark"} */ (name);
      const s = washIn(theme, "col", "sort-wash"), f = chipIn(theme);
      const p = paletteIn(`:root[data-theme="${name}"] .tv-root{`);
      check(name + ": the chip ink clears the text floor on the sort wash",
            ratio(p.fg, s.wash) >= 4.5, true);
      check(name + ": and so does the hover ink, that being what the chip offers",
            ratio(p.accent, s.wash) >= 4.5, true);
      // Hue is the identity; weight would have made one chip the louder.
      check(name + ": the two identities are told apart by HUE",
            Math.abs(hue(s.wash) - hue(f.wash)) >= 60, true);
      check(name + ": and not by weight — each sits as far from the page as the other",
            Math.abs(apart(s.ground, s.wash) / apart(f.ground, f.wash) - 1) <= 0.1, true);
    }
    // A strength is declared in FOUR blocks — base, the media query and the two
    // stamped themes — so half an edit is a page painting one wash when the
    // system picks the theme and another when the switch does. Read pairwise:
    // a literal here would be a second copy of the palette to keep in step.
    const at = [".tv-root{", ':root[data-theme="light"] .tv-root{',
                "@media (prefers-color-scheme:dark){.tv-root{",
                ':root[data-theme="dark"] .tv-root{']
      .map((r) => paletteIn(r)["sort-wash"]);
    check("and it is one value per theme, in all four palette blocks",
          [at.every(Boolean), at[0] === at[1], at[2] === at[3], at[0] !== at[2]],
          [true, true, true, true]);
  }
}

/**
 * The crumb trail and the chip alias: two things a consumer drives that the
 * renderer only draws. Neither touches the grammar — a crumb's query is never
 * read here and an aliased chip is still its token — so everything below is
 * about the strip, what survives, and who owns applying.
 */
async function crumbTrail() {
  console.log("\n== crumbs and chip labels");
  const crumb = (n) => ({ label: "L" + n, query: "q" + n });

  // --- the strip: crumbs lead, live chips follow
  {
    const C = driver(MARK_VIEW);
    const h = C.handle;
    check("no crumbs, no strip — the row is collapsed as it always was",
          [C.crumbsOf(), C.box.querySelector(".tv-chips").style.display], [[], "none"]);
    check("pushCrumb answers how deep the trail is now",
          [h.pushCrumb(crumb(1)), h.pushCrumb(crumb(2))], [1, 2]);
    check("and the row shows them, oldest first", C.crumbsOf(), ["L1", "L2"]);
    // The labels off the crumbs and the queries off the WHOLE row, so an empty
    // strip cannot answer "no query here" by having nothing in it at all.
    check("a crumb shows its LABEL and never its query",
          [C.crumbsOf().join("|"), C.box.querySelector(".tv-chips").text.indexOf("q")],
          ["L1|L2", -1]);
    check("and the strip is on show with no live chip in it",
          [C.box.querySelector(".tv-chips").style.display, C.chipsOf()], ["", []]);

    C.commit("alpha");
    check("a committed token joins as a live chip", C.chipsOf(), ["alpha"]);
    // Source order in the one row IS the reading order, so the crumbs have to
    // be written before the chips rather than merely styled differently.
    check("crumbs render LEFT of the live chips, in one row",
          C.box.querySelector(".tv-chips").children
            .map((e) => e.classes.has("tv-chip-muted") ? "crumb" : "chip"),
          ["crumb", "crumb", "chip"]);

    // --- a crumb is inert: the click that takes a chip off must pass it by
    const first = C.box.querySelector(".tv-chip-muted");
    if (first) first.click();
    check("clicking a crumb removes nothing — the crumb stands, and so does the chip",
          [C.crumbsOf(), C.chipsOf(), h.getQuery()], [["L1", "L2"], ["alpha"], "alpha"]);
    check("and it carries no index, which is what a live chip is removed by",
          [!!first && first.attrs.has("data-i"),
           C.box.querySelector(".tv-chip[data-i]").attrs.get("data-i")], [false, "0"]);
  }

  // --- pop hands the crumb back and applies nothing
  {
    const C = driver(MARK_VIEW, { onFilter: () => {} });
    const h = C.handle;
    check("an empty trail pops null", h.popCrumb(), null);
    h.setCrumbs([crumb(1), crumb(2)]);
    check("setCrumbs replaces the trail whole", [h.getCrumbs(), C.crumbsOf()],
          [[crumb(1), crumb(2)], ["L1", "L2"]]);
    const got = h.popCrumb();
    check("popCrumb returns the last crumb and takes it off",
          [got, h.getCrumbs(), C.crumbsOf()], [crumb(2), [crumb(1)], ["L1"]]);
    // The point of the whole shape: applying is the consumer's, because the
    // consumer owns the fetching. The renderer must not have run the query.
    check("and applies nothing — the query is where it was",
          [h.getQuery(), C.chipsOf()], ["", []]);
    check("popping the last one empties the strip again",
          [h.popCrumb(), h.getCrumbs(), C.box.querySelector(".tv-chips").style.display],
          [crumb(1), [], "none"]);
    check("and then answers null, as it did before there were any", h.popCrumb(), null);

    // getCrumbs hands out copies: editing what was read must not move the strip.
    h.setCrumbs([crumb(1)]);
    const read = h.getCrumbs();
    read[0].label = "tampered";
    read.push(crumb(9));
    check("getCrumbs answers with copies", [h.getCrumbs(), C.crumbsOf()],
          [[crumb(1)], ["L1"]]);
    // A crumb is an object carrying the two fields; everything else is dropped.
    h.setCrumbs([crumb(1), null, "L", { label: "bare" }]);
    check("a non-object is dropped and a missing field reads empty",
          h.getCrumbs(), [crumb(1), { label: "bare", query: "" }]);
    h.setCrumbs([]);
    check("and an empty list clears the trail", h.getCrumbs(), []);
  }

  // --- overflow: the counter takes a slot, so the strip has a fixed width
  {
    const C = driver(MARK_VIEW);
    const h = C.handle;
    for (let i = 1; i <= 4; i++) h.pushCrumb(crumb(i));
    check("four crumbs are four chips, every one of them a label",
          C.crumbsOf(), ["L1", "L2", "L3", "L4"]);
    h.pushCrumb(crumb(5));
    // The counter needs a chip of its own, so crossing the boundary folds TWO
    // crumbs away rather than one — which is what keeps the width fixed.
    check("the fifth collapses the oldest two into one counter, leftmost",
          C.crumbsOf(), ["… +2", "L3", "L4", "L5"]);
    h.pushCrumb(crumb(6));
    check("and each one after it only raises the count",
          C.crumbsOf(), ["… +3", "L4", "L5", "L6"]);
    check("the strip never draws more than four chips, however deep it went",
          [h.getCrumbs().length, C.crumbsOf().length], [6, 4]);
    check("popping back over the boundary brings the labels out again",
          [h.popCrumb().label, h.popCrumb().label, C.crumbsOf()],
          ["L6", "L5", ["L1", "L2", "L3", "L4"]]);
  }

  // --- what a crumb survives. It is the consumer's trail, so nothing the rows
  //     do moves it; a new VIEW is a new world and takes it.
  {
    const C = driver(MARK_VIEW, { marks: true });
    const h = C.handle;
    h.setCrumbs([crumb(1), crumb(2)]);
    h.toggleMark("a");
    h.flagRow("b");
    h.select("c");
    await painted();

    h.setRows(MARK_VIEW.rows.slice());
    check("setRows leaves the trail standing", C.crumbsOf(), ["L1", "L2"]);
    h.upsertRow({ id: "a", cells: { state: "WAIT", title: "alpha again" } });
    h.deleteRow("f");
    check("an upsert and a delete leave it too", C.crumbsOf(), ["L1", "L2"]);
    // The three id-keyed sets are a different question and the trail touches
    // none of them, in either direction. Asserted before the filter runs: what
    // a filter does to a selection is a rule of its own (the cursor keeps its
    // PLACE, not its id) and is pinned where that rule lives.
    check("marks, flags and the selection are untouched by any of it",
          [h.getMarked(), h.getFlagged(), h.getSelection().id], [["a"], ["b"], "c"]);
    C.commit("alpha");
    check("and so does a filter change, which is the one it exists beside",
          [C.crumbsOf(), C.chipsOf()], [["L1", "L2"], ["alpha"]]);
    C.reset();
    check("clearing the filter leaves it standing as well", C.crumbsOf(), ["L1", "L2"]);
    check("with the marks and flags still where they were",
          [h.getMarked(), h.getFlagged()], [["a"], ["b"]]);
    h.setView(MARK_VIEW);
    check("setView clears the trail with the world it described",
          [h.getCrumbs(), C.crumbsOf(),
           C.box.querySelector(".tv-chips").style.display], [[], [], "none"]);
  }

  // --- chipLabel: the chip lies prettily, the grammar does not
  {
    const asked = [];
    const alias = { "state:DONE": "done", review: "reviewed" };
    const A = driver(40, { onFilter: (q) => asked.push(q),
                           chipLabel: (tok) => alias[tok] || null });
    const h = A.handle;
    A.commit('state:DONE review "two words"');
    check("a mapped token renders its label", A.chipsOf(), ["done", "reviewed", '"two words"']);
    // The whole point: display moved and nothing else did.
    check("while the query the producer was handed is the tokens as written",
          [h.getQuery(), asked], ['state:DONE review "two words"',
                                  ['state:DONE review "two words"']]);
    check("null from the formatter leaves the token raw",
          A.chipsOf()[2], '"two words"');
    // A chip still comes off by its own index, whatever it is showing.
    A.box.querySelectorAll(".tv-chip[data-i]")[1].click();
    check("and an aliased chip takes the token behind it off, its label with it",
          [A.chipsOf(), h.getQuery()], [["done", '"two words"'], 'state:DONE "two words"']);
    check("stripLastToken walks the tokens the labels stand for",
          [h.stripLastToken(), h.getQuery()], [true, "state:DONE"]);
    // Restoration is the remount idiom, so it is the other way a chip is born:
    // the alias has to reach a query that arrives already committed.
    const R = driver(40, { chipLabel: (tok) => alias[tok] || null,
                           initialQuery: "state:DONE review" });
    check("initialQuery's restored chips are aliased too, the query untouched",
          [R.chipsOf(), R.handle.getQuery()], [["done", "reviewed"], "state:DONE review"]);

    // A formatter that answers with something that is not a label is no
    // formatter for that token: the raw text is always the fallback.
    const junk = driver(40, { chipLabel: () => "" });
    junk.commit("review");
    check("an empty string is not a label either", junk.chipsOf(), ["review"]);
    const wrong = driver(40, { chipLabel: () => /** @type {*} */ (7) });
    wrong.commit("review");
    check("nor is anything that is not a string", wrong.chipsOf(), ["review"]);
    const none = driver(40);
    none.commit("review");
    check("and with no formatter the chip is the token, as it always was",
          none.chipsOf(), ["review"]);

    // Crumbs are not tokens and must never reach the formatter.
    const seen = [];
    const K = driver(MARK_VIEW, { chipLabel: (tok) => (seen.push(tok), "ALIAS") });
    K.handle.setCrumbs([{ label: "state:DONE", query: "state:DONE" }]);
    check("a crumb's label is a label: the token formatter never sees it",
          [K.crumbsOf(), seen], [["state:DONE"], []]);
    K.commit("review");
    check("while the live chip beside it is aliased",
          [K.crumbsOf(), K.chipsOf(), seen], [["state:DONE"], ["ALIAS"], ["review"]]);
  }

  // --- the muted identity, measured. A crumb has to read as past rather than
  //     applied, and still be readable — the floor every wash here answers to.
  {
    const css = cssText();
    // The inert identity: a crumb is the one thing in the strip that cannot be
    // clicked off, the order having moved to the headers.
    const inert = ".tv-chips .tv-chip-muted{";
    check("the crumb rule exists, spelled with the row so it outranks the palette's",
          css.indexOf(inert) !== -1, true);
    check("and sits after the frost rule it has to beat at equal specificity",
          css.indexOf(inert) > css.indexOf(".tv-pal .tv-chip{"), true);
    const rule = css.slice(css.indexOf(inert));
    const decl = rule.slice(rule.indexOf("{") + 1, rule.indexOf("}"));
    check("it gives up the chip's ground and takes the muted ink",
          [/background:transparent/.test(decl), /color:var\(--tv-muted\)/.test(decl)],
          [true, true]);
    // Ink and ground carry the whole muting, and the shape carries none of it:
    // a rule that names no border property cannot move the edge.
    check("and respells no border, so a crumb's edge is whatever the chip's is",
          /border/.test(decl), false);
    // Both grounds a chip is drawn on: the palette tints an edge with frost,
    // the bar leaves it the plain hairline, and a crumb takes the SAME one
    // either way.
    for (const [where, live] of [["palette", [".tv-chip", ".tv-pal .tv-chip"]],
                                 ["bar", [".tv-chip"]]]) {
      const chip = boxOf(live), crumb = boxOf([...live, ".tv-chips .tv-chip-muted"]);
      check(where + ": the crumb's border is the live chip's, frost and all",
            [crumb["border-width"], crumb["border-style"], crumb["border-color"],
             crumb["border-radius"]],
            [chip["border-width"], chip["border-style"], chip["border-color"],
             chip["border-radius"]]);
      // The × is what a live chip's right side is short for, so equalizing it
      // is what makes the silhouettes match rather than a departure from them.
      check(where + ": and its padding is the chip's rhythm with the × side equalized",
            [crumb["padding-top"], crumb["padding-bottom"], crumb["padding-left"],
             crumb["padding-right"]],
            [chip["padding-top"], chip["padding-bottom"], chip["padding-left"],
             chip["padding-left"]]);
    }
    const coarse = css.slice(css.indexOf("@media (pointer:coarse)"));
    check("a coarse pointer grows the tap target and equalizes the crumb there too",
          [boxOf([".tv-chip", ".tv-chips .tv-chip-muted"], coarse)["padding-right"]],
          [boxOf([".tv-chip"], coarse)["padding-left"]]);
    check("and no hover, a crumb being nothing to act on — the rules decline it",
          [/\.tv-chip:not\(\.tv-chip-muted\):hover\{/.test(css),
           /\.tv-pal \.tv-chip:not\(\.tv-chip-muted\):hover\{/.test(css),
           /\.tv-chip-muted:hover/.test(css)], [true, true, false]);
    for (const theme of ["light", "dark"]) {
      const p = paletteIn(`:root[data-theme="${theme}"] .tv-root{`);
      // Transparent, so what a crumb is drawn on is the page itself.
      check(theme + ": the crumb ink clears the text floor on the page it sits on",
            ratio(p.muted, p.bg) >= 4.5, true);
      // Distinct from a live chip on BOTH axes — ink and ground — and quieter
      // on the one that carries the reading.
      const live = chipIn(/** @type {"light"|"dark"} */ (theme));
      check(theme + ": and is a quieter reading than a live chip's, on a different ground",
            [ratio(p.muted, p.bg) < ratio(p.fg, live.wash), p.muted !== p.fg,
             p.bg !== live.wash], [true, true, true]);
    }
  }
}

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
  const Q = driver(40);
  const box = Q.box, q = Q.handle;
  const { reset, shown, type, items, counts } = Q;
  const all = shown("");
  check("the fixture is 40 rows", all, 40);
  check("badge predicates match a value exactly", shown("state:DONE"), 8);
  check("and only exactly — no substring", shown("state:DON"), 0);
  check("text predicates are substrings", shown("title:system") > 0, true);
  check("date cells match by prefix", shown("scheduled:2026-03"), 4);
  check("and not by substring", shown("scheduled:03"), 0);
  check("the empty meta matches an empty cell", shown("deadline:*empty*"), 30);
  // And the bare word is a literal now, which no date cell spells.
  check("where the bare word it replaced is text like any other",
        shown("deadline:none"), 0);
  // The half-typed state the suggestion list serves: it must not narrow, and
  // must not narrow differently per column type.
  check("a key with nothing typed after it narrows nothing",
        [shown("state:"), shown("title:"), shown("deadline:")], [40, 40, 40]);
  check("negation excludes", shown("-state:DONE"), 32);
  check("tokens AND together", shown("state:DONE tag:web"), 3);
  // SCHEMA's one combination rule: TOKENS AND, ALTERNATIVES OR.
  const done = shown("state:DONE"), next = shown("state:NEXT");
  check("a repeated key narrows like any other token",
        shown("state:DONE state:NEXT"), 0);
  check("and the same value twice is that value",
        shown("state:DONE state:DONE"), done);
  check("a row in either state is ONE token", shown("state:DONE|NEXT"), done + next);
  check("three alternatives too",
        shown("state:DONE|NEXT|TODO"), done + next + 8);
  check("an empty alternative drops out",
        [shown("state:DONE|"), shown("state:|DONE"), shown("state:DONE||NEXT")],
        [done, done, done + next]);
  check("and a value of bars alone narrows nothing, the way key: does",
        [shown("state:|"), shown("state:||")], [40, 40]);
  check("distinct keys still AND across an alternation",
        shown("state:DONE|NEXT tag:web"), 6);
  check("free text ANDs with one",
        shown("state:DONE|NEXT system") < done + next, true);
  check("a negation covers the whole token",
        shown("-state:DONE|NEXT"), 40 - done - next);
  check("which De Morgan makes the two negations too",
        shown("-state:DONE -state:NEXT"), 40 - done - next);
  check("a bar in free text is the character it is, never the operator",
        shown("system|nothing"), 0);
  check("free text still searches every cell", shown("system") > 0, true);
  check("free text and a predicate AND too",
        shown("system state:DONE") <= shown("state:DONE"), true);
  check("an unknown key filters as the free text it is", shown("nope:x"), 0);
  shown("");

  // The suggestion list.
  check("a bare word suggests the column keys it opens, under the literal",
        type("sta"), [`"sta"`, "state:"]);
  // A bare word offers the keys it opens, which are the view's columns and the
  // two reserved ones — never a tag, which is a VALUE of the tags column.
  check("the prefix narrows them",
        type("s").filter((x) => x.endsWith(":")), ["state:", "scheduled:", "sort:"]);
  check("a word matching no key still offers the literal", type("zzz"), [`"zzz"`]);
  check("an empty box offers nothing", type(""), []);
  check("a quoted token offers nothing", type('"sta'), []);
  check("free text carrying punctuation offers nothing", type(":work"), []);
  check("key: offers the badge palette, then the meta every key answers",
        type("state:"), domain(...STATES));
  check("and the prefix narrows it", type("state:d"), ["DONE"]);
  check("a declared values list wins", type("priority:"), domain(...PRI));
  check("the tag column's values are the tags themselves, not the cells",
        type("tag:").sort(),
        ["*empty*", "daemon", "emacs", "glance", "ops", "read", "system", "web"]);
  // 40 distinct titles, and the cap is 12 — a ceiling of 12 can fail, one of
  // "some number less than everything" cannot.
  check("the list is capped at twelve, out of forty", type("title:").length, 12);

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
  // The literal leads a prefix that spells nothing, so one arrow is what stands
  // between the caret and the key it opens.
  const down = () => b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
  type("sta");
  const held = b.blurs || 0;
  down();
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("Tab on a key suggestion completes to key:", b.value, "state:");
  check("and stays in the box for the value", (b.blurs || 0) - held, 0);
  check("and the list moves to the value stage", items(), domain(...STATES));
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("Tab accepts the value at row one, with a trailing space",
        b.value, "state:" + STATES[0] + " ");
  type("sta");
  down();
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("and an arrow moves which value that is", b.value, "state:" + STATES[1] + " ");
  check("and the list closes once the token is finished", items(), []);

  // A `|' RE-OPENS the domain, so an alternation is completed one alternative
  // at a time and stays ONE token.
  check("a bar asks for the value domain again", type("state:DONE|"), domain(...STATES));
  check("and the prefix is what follows the LAST bar", type("state:DONE|N"), ["NEXT"]);
  type("state:DONE|N");
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("accepting lands the alternative behind the bar, token intact",
        b.value, "state:DONE|NEXT ");
  check("a third one the same way", type("state:DONE|NEXT|W"), ["WAITING"]);
  type("state:DONE|NEXT|W");
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("and it appends rather than replacing what is there",
        b.value, "state:DONE|NEXT|WAITING ");

  type("state:DONE tit");
  down();
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("accepting replaces the caret's token and keeps the rest",
        b.value, "state:DONE title:");
  type("-sta");
  down();
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("a negated token keeps its -", b.value, "-state:");
  // Including the literal, which is a token like any other and negates like one.
  type("-sta");
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("and so does the literal, which is a token like any other", b.value, "-sta ");

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
  // The other axis: the band is the column, so it is read across the whole
  // window rather than off one row.
  const bandCells = () => box.querySelectorAll(".tv-table tbody td.tv-colsel");
  const bandHead = () => box.querySelectorAll(".tv-table th.tv-colsel");
  const dataRows = () => box.querySelectorAll(".tv-table tbody tr[data-id]");
  /** The column index every band cell sits at — -1 unless they agree on one. */
  const bandAt = () => {
    const ix = bandCells().map((el) => el.parentNode.children.indexOf(el));
    return ix.length && ix.every((v) => v === ix[0]) ? ix[0] : -1;
  };
  const headAt = () => {
    const th = bandHead()[0];
    return th ? th.parentNode.children.indexOf(th) : -1;
  };
  /**
   * Whether the band reaches every rendered row and the header, once each —
   * and that there were rows to reach, so an empty window cannot pass it.
   */
  const banded = () => [bandAt(), bandCells().length === dataRows().length,
                        bandHead().length, dataRows().length > 0];

  // --- cell selection
  const id = t.getVisible()[3].id;
  const ok = t.select(id);
  check("select answers before it paints", [ok, t.getSelection()], [true, { id, col: null }]);
  await painted();
  check("select with no column is a whole-row selection, as it always was",
        [!!rowOf(id).classes.has("tv-sel"), cellSel().length], [true, 0]);
  check("and draws no band at all — head or body, nothing to undo",
        [bandCells().length, bandHead().length], [0, 0]);
  check("select with a column stamps that cell", t.select(id, 2), true);
  check("and reports it before the frame", t.getSelection(), { id, col: 2 });
  await painted();
  check("the cell is stamped once the frame lands", colOfSel(), 2);
  check("only one cell is ever stamped", cellSel().length, 1);
  check("the row stays selected too", rowOf(id).classes.has("tv-sel"), true);
  // The column is the second axis, so it is drawn on every row of the window —
  // and on the header, a band stopping short of which reads as broken.
  check("the band washes that column on every rendered row, and its header",
        [banded(), headAt()], [[2, true, 1, true], 2]);
  check("the crosshair carries both classes: one td, one background slot, the cell winning",
        [cellSel()[0].classes.has("tv-colsel"), cellSel()[0] === rowOf(id).children[2]],
        [true, true]);
  // --- walking off the ends. Cell movement is the consumer's loop — read the
  //     column, add a step, hand it back — so the index one past an end is what
  //     a reader's forward key produces on the last column. `step' is that loop
  //     as a consumer writes it, the entry rule (a row-only selection enters at
  //     the first column, whichever way asked) included.
  const step = (d) => {
    const at = t.getSelection().col;
    return t.select(id, at === null ? 0 : at + d);
  };
  t.select(id, nCols - 1);
  await painted();
  check("the cursor is on the last column, band and all",
        [t.getSelection().col, bandAt()], [nCols - 1, nCols - 1]);
  check("stepping forward off it selects no column, and says so before it paints",
        [step(1), t.getSelection()], [true, { id, col: null }]);
  await painted();
  check("leaving no band anywhere — crossing, column or header",
        [cellSel().length, bandCells().length, bandHead().length], [0, 0, 0]);
  check("and the row cursor exactly where it was: this is the whole-row selection",
        [t.getSelection().id, rowOf(id).classes.has("tv-sel")], [id, true]);
  check("the next step is an entry, landing on the first column",
        [step(1), t.getSelection().col], [true, 0]);
  await painted();
  check("with the band drawn where the entry named it", [bandAt(), headAt()], [0, 0]);
  check("stepping back off the first column exits the same way",
        [step(-1), t.getSelection().col], [true, null]);
  await painted();
  check("with nothing banded at that end either",
        [cellSel().length, bandCells().length, bandHead().length], [0, 0, 0]);
  check("and re-entry from there is the first column too",
        [step(-1), t.getSelection().col], [true, 0]);
  // Re-anchored rather than carried on from the exits above: a step in the
  // middle is the case the ends were carved out of, and it has to read the same
  // whatever the ends do.
  t.select(id, 0);
  check("a step between the ends is one column, as it always was",
        [step(1), step(1), t.getSelection().col], [true, true, 2]);
  check("back the same", [step(-1), t.getSelection().col], [true, 1]);
  // A column named far outside the table is the same answer as one stepped
  // there: no such cell, so no cell selection.
  check("a column past the end is no column rather than the last one",
        [t.select(id, 99), t.getSelection().col], [true, null]);
  check("nor is one before the start",
        [t.select(id, -5), t.getSelection().col], [true, null]);
  t.select(id, 2);
  await painted();

  t.upsertRow(makeRow(Number(id.slice(2))));
  check("the stamp survives an upsert", [t.getSelection().col, colOfSel()], [2, 2]);
  check("and so does the band it is the crossing of", banded(), [2, true, 1, true]);
  t.setRows(view(40).rows);
  check("and a setRows that still carries the id",
        [t.getSelection().col, colOfSel()], [2, 2]);
  check("band included", banded(), [2, true, 1, true]);

  const sc = box.querySelector(".tv-scroll");
  const at = t.getVisible().findIndex((r) => r.id === id);
  // Far enough down that the selected row is off the window while rows still
  // fill it. The band belongs to the COLUMN, so it draws on rows the cursor is
  // nowhere near, which is the whole of what makes it a locator.
  sc.scrollTop = 700;
  sc.dispatchEvent(new Ev("scroll"));
  await sleep(50);
  check("the band draws on the rows of a window the selection has left",
        [cellSel().length, banded()], [0, [2, true, 1, true]]);
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
  check("moving the whole band with it", [bandAt(), headAt()], [3, 3]);

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
    // The discarded design put a sliding bar over the table; the shipped one
    // marks the row itself. Both halves are asserted -- an absence alone would
    // pass just as well in a renderer that drew no highlight at all.
    check("the mark is a class on the selected row",
          box.querySelectorAll(".tv-table tbody tr.tv-sel").length, 1);
    check("and no overlay is rendered", box.querySelectorAll(".tv-hl").length, 0);

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

  // --- a whole-row selection is exactly what it was before there were columns
  {
    // The classes every rendered row and cell carries, sorted, since the two
    // ways one is written -- the window's HTML and a `classList.toggle' --
    // leave them in different orders.
    const shape = (el) => el.querySelectorAll(".tv-table tbody tr").map((r) =>
      [[...r.classes].sort().join(" "),
       r.children.map((c) => [...c.classes].sort().join(" ")).join("|")]);
    // Tall enough, in a short enough port, that a scroll genuinely re-windows:
    // 40 rows behind a 15-row overscan are the whole window at every scroll
    // position, and `renderRows' turns back at the door without rewriting one.
    const mounted = async () => {
      const el = new El("div");
      const h = TableView.mount(el, view(300));
      el.querySelector(".tv-scroll").clientHeight = 300;
      await painted();
      return { el, h };
    };
    const A = await mounted(), B = await mounted();
    const rowId = A.h.getVisible()[2].id;
    A.h.select(rowId);                       // never had a column
    B.h.select(rowId, 3);                    // had one, and gave it back
    await painted();
    B.h.select(rowId);
    await painted();
    check("giving the column back leaves the rows exactly as a row-only mount draws them",
          JSON.stringify(shape(B.el)) === JSON.stringify(shape(A.el)), true);
    check("with the band written nowhere rather than merely undone",
          [B.el.querySelectorAll(".tv-colsel").length,
           B.el.querySelectorAll(".tv-cell-sel").length,
           shape(A.el).length > 0], [0, 0, true]);
    // And still nowhere after a re-window. `renderRows' writes the rows from
    // scratch and a scroll asks for no re-stamp afterwards, so a band the
    // window's own HTML wrote would survive here with nothing to clear it --
    // which is the whole difference between not writing one and undoing one.
    const scB = B.el.querySelector(".tv-scroll");
    await sleep(400);                     // the ease is done asking for stamps
    scB.scrollTop = 3000;
    scB.dispatchEvent(new Ev("scroll"));
    await sleep(50);
    check("and none written by a window the scroll drew fresh",
          [B.el.querySelectorAll(".tv-colsel").length,
           B.el.querySelector(".tv-table tbody tr[data-id]").dataset.id
             !== A.el.querySelector(".tv-table tbody tr[data-id]").dataset.id],
          [0, true]);
  }

  // --- two bands and their crossing, and every one of them a ground
  {
    const css = cssText();
    const at = (s) => css.indexOf(s);
    // One background slot on the one td, settled the way the row stack settles
    // its own four: equal specificity, and source order is the precedence.
    check("the column's rule is declared before the cell's, which is what wins the crossing",
          [at(".tv-table tbody td.tv-colsel{") !== -1,
           at(".tv-table tbody td.tv-colsel{") < at(".tv-table tbody td.tv-cell-sel{")],
          [true, true]);
    // Translucent on the rows, which is what leaves the four row washes reading
    // through the band; opaque on the sticky header, under which rows scroll.
    check("the body band is a translucent film of the one column var",
          /tbody td\.tv-colsel\{background:color-mix\(in srgb,var\(--tv-col\) var\(--tv-col-wash\),transparent\)\}/
            .test(css), true);
    check("and the header's is the same wash mixed into the page, so it stays opaque",
          /th\.tv-colsel\{background:color-mix\(in srgb,var\(--tv-col\) var\(--tv-col-wash\),var\(--tv-bg\)\)\}/
            .test(css), true);
    check("the crossing is one step more of that same colour, on the same slot",
          /tbody td\.tv-cell-sel\{background:color-mix\(in srgb,var\(--tv-col\) var\(--tv-cell-wash\),transparent\)\}/
            .test(css), true);
    // The sweep. A background assertion cannot catch an outline sitting beside
    // it, so every rule whose SELECTOR names any part of the selection is read
    // whole -- and counted, or a rename would empty the sweep and pass it.
    // Comments come out first: the ones above these rules say the words this is
    // hunting for, and a sweep that read them would answer about the prose.
    const sel = css.replace(/\/\*[\s\S]*?\*\//g, "").split("}")
      .filter((r) => /\.tv-(sel|colsel|cell-sel)\b/.test((r.split("{")[0] || "")));
    check("the whole selection is four rules and not one of them draws an edge",
          [sel.length, sel.some((r) => /border|outline|box-shadow/.test(r))],
          [4, false]);
    // The flag's edge is a different channel and must survive the sweep: it is
    // on the box cell, which no selection rule names.
    check("while the flag keeps the one edge the table does draw",
          /tr\.tv-flagged td\.tv-box\{box-shadow:/.test(css), true);

    // The identity, spelled once for both themes the way the frost and the flag
    // are, in a hue neither they nor the cursor nor the mark occupies.
    const COL = paletteIn(".tv-root{").col;
    const gap = (a, b) => Math.min(Math.abs(a - b), 360 - Math.abs(a - b));
    check("the column identity is one colour, declared once and inherited by both themes",
          [!!COL, paletteIn(':root[data-theme="dark"] .tv-root{').col,
           paletteIn(':root[data-theme="light"] .tv-root{').col],
          [true, undefined, undefined]);
    check("and its hue is nothing else the table paints",
          ["#D0E1F9", "#E74C3C", paletteIn(':root[data-theme="light"] .tv-root{').sel,
           paletteIn(':root[data-theme="light"] .tv-root{').muted,
           paletteIn(':root[data-theme="dark"] .tv-root{').muted]
            .every((c) => gap(hue(COL), hue(c)) >= 30), true);

    // The strengths, measured against the grounds each wash can land on -- and
    // they are different grounds: the band lands on the page, the stripe, a
    // mark and a flag, while the crossing lands on the cursor row and nowhere
    // else, the band's own rule losing that one cell to it.
    for (const theme of ["light", "dark"]) {
      const p = paletteIn(`:root[data-theme="${theme}"] .tv-root{`);
      const base = paletteIn(".tv-root{");
      const band = washIn(theme, "col", "col-wash");
      const grounds = {
        page: p.bg,
        stripe: p.alt,
        marked: mixed(p.bg, p.muted, pctOf(p["mark-wash"])),
        flagged: mixed(p.bg, p.flag || base.flag, pctOf(p["flag-wash"])),
      };
      for (const [what, g] of Object.entries(grounds)) {
        const on = mixed(g, band.colour, band.pct);
        check(`${theme}: the tag ink clears 4.5:1 in the band over ${what}`,
              ratio(p.muted, on) >= 4.5, true);
        check(`${theme}: and body text clears 7:1 there`, ratio(p.fg, on) >= 7, true);
      }
      // Visible, and quieter than the state it crosses: a locator under a
      // meaning. Contrast says nothing about either -- the light cursor row is
      // 1.04:1 against its page -- so both are read as sRGB distance, against
      // the mark's own step as the yardstick. The zebra will not serve as one:
      // it is a tenth of the light page and two thirds of the dark one, so a
      // rule written against it says different things in the two themes.
      const moved = Object.values(grounds).map((g) => apart(mixed(g, band.colour, band.pct), g));
      const markStep = apart(grounds.marked, p.bg);
      check(`${theme}: the band shifts every ground it lands on`,
            Math.min(...moved) > markStep / 5, true);
      check(`${theme}: and never as far as a mark shifts the page, a locator staying under a state`,
            Math.max(...moved) < markStep * 0.9, true);
      // Translucency is what keeps the four row washes telling themselves apart
      // inside the band as well as outside it.
      for (const what of ["stripe", "marked", "flagged"]) {
        const inside = apart(mixed(grounds[what], band.colour, band.pct),
                             mixed(grounds.page, band.colour, band.pct));
        check(`${theme}: a ${what} row still reads as one under the band`,
              inside > apart(grounds[what], p.bg) / 2, true);
      }
      // The crossing. Its one ground is the cursor row, and it has to stay the
      // most legible cell on the table, being the one being read.
      const cross = mixed(p.sel, band.colour, pctOf(p["cell-wash"]));
      check(`${theme}: the crossing keeps the tag ink above 4.5:1`,
            ratio(p.muted, cross) >= 4.5, true);
      check(`${theme}: and body text above 7:1`, ratio(p.fg, cross) >= 7, true);
      check(`${theme}: it steps off its row at least as far as the band steps off its grounds`,
            apart(cross, p.sel) >= Math.min(...moved), true);
      check(`${theme}: and takes more of the colour than the band does`,
            pctOf(p["cell-wash"]) > band.pct, true);
    }
    // Which of the two numbers a floor SET, and which was chosen: the same
    // asymmetry the flag has, the other way up. Dark's cursor row is the
    // lightest ground either wash lands on, so the ink caps the crossing there
    // and one point more breaks it; light has room and is set by what reads.
    const inkAt = (theme, pct) => {
      const p = paletteIn(`:root[data-theme="${theme}"] .tv-root{`);
      return ratio(p.muted, mixed(p.sel, paletteIn(".tv-root{").col, pct));
    };
    const dpct = pctOf(paletteIn(':root[data-theme="dark"] .tv-root{')["cell-wash"]);
    const lpct = pctOf(paletteIn(':root[data-theme="light"] .tv-root{')["cell-wash"]);
    check("dark's crossing is the most the ink allows; one point more would break it",
          [inkAt("dark", dpct) >= 4.5, inkAt("dark", dpct + 0.01) >= 4.5], [true, false]);
    check("light has headroom dark does not, and is set by what reads",
          inkAt("light", lpct + 0.01) >= 4.5, true);
    // Pale colours need far more of themselves over white than over black --
    // the frost's story, and this amber's for the same reason.
    check("which is why the two strengths are far apart, as the chip's are",
          washIn("light", "col", "col-wash").pct > washIn("dark", "col", "col-wash").pct * 3,
          true);
  }

  // --- the viewport ease: scroll-margin targeting, one retargeting loop
  {
    const sc = box.querySelector(".tv-scroll");
    sc.clientHeight = 300;                        // ten rows on screen
    const rowH = ROW_PX, head = HEAD_PX, port = 300;
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
          qs.scrollTop, HEAD_PX + 30 * ROW_PX + ROW_PX - 300 * 2 / 3);
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
  const { box: box2, handle: t2, b: b2El, commit, chipsOf: chipText } = driver(40);
  const b2 = b2El();
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
    const F = driver(40);
    const boxF = F.box, tF = F.handle, bF = F.b(), chipsOf = F.chipsOf;
    const sel = () => boxF.querySelector(".tv-table tbody tr.tv-sel");

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
    // `view(10)' sorts by scheduled ascending, and row 0 is the earliest — named
    // here rather than asked of the handle the assertion is about.
    check("and the selection was handed over at once, both times",
          [rowsAt[0], boxR.querySelector(".tv-table tbody tr.tv-sel").dataset.id],
          ["h-0", "h-0"]);
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

/** The keys a predicate may name: the view's columns and `planned'. */
async function queryKeys() {
  console.log("\n== query keys");
  const P = driver(40);
  const box = P.box, t = P.handle, b = P.b();
  const KEYS = columns.map((c) => c.key);
  const { reset, shown, items, counts, countOf, type } = P;
  /**
   * The rows of one tier: keys end in `:', a producer meta is dimmed. The
   * free-text offers — the literal and the whole titles — are neither, and are
   * told apart by the aside they carry in place of a count.
   */
  const tier = (n) => box.querySelectorAll(".tv-ac-item").filter((e) => {
    const label = e.querySelector(".tv-ac-label").text;
    if (e.querySelectorAll(".tv-ac-aside").length) return false;
    if (n === 1) return label.endsWith(":");
    return !label.endsWith(":") && !e.classes.has("tv-ac-dim");
  }).map((e) => e.querySelector(".tv-ac-label").text);

  // --- a tag names no key
  // The fixture tags rows `:web:glance:', `:emacs:', `:ops:system:', `:read:',
  // `:web:', `:glance:daemon:' in turn.
  check("a tag is not a key, and neither is an unknown word",
        [TableView.parseQuery("glance:review", KEYS)[0].key,
         TableView.parseQuery("tag:glance", KEYS)[0].key], [null, "tag"]);
  check("so the renderer reads the bare form as the text it is",
        shown("glance:review"), 0);
  check("where the two tokens it stands for answer",
        shown("tag:glance review") > 0, true);
  check("a word that names no tag was always free text", shown("nosuchtag:x"), 0);
  // `:web:' names a real tag, and parses as free text: a token opening with a
  // colon is never a key, which is the trap the rule exists for. It matches the
  // rows whose tags cell spells it, the way any free text would.
  check("and the org-tag trap holds — a leading colon is never a key",
        [TableView.parseQuery(":web:", KEYS)[0].key, shown(":web:")], [null, 13]);

  // --- semantics
  const web = shown("tag:web");
  const glance = shown("tag:glance");
  check("tag: is the one spelling of a facet", [web, glance], [13, 13]);
  check("and it reads the CELL, so a prefix of a tag reaches it",
        shown("tag:gla"), glance);
  check("facet and text AND as two tokens do", shown("tag:glance review") < glance, true);
  check("negation is the rows without the tag", shown("-tag:web"), 40 - web);
  {
    // SCHEMA's one combination rule: tokens AND, alternatives OR. Repeating the
    // tags column asks for all of them, which a row carrying several tags can
    // meet; repeating the state column asks a one-value cell for two, which no
    // row meets — either state is the alternation.
    const ids = (q) => { shown(q); return t.getVisible().map((r) => r.id).sort(); };
    const web = ids("tag:web"), glance = ids("tag:glance");
    const carries = web.filter((x) => glance.indexOf(x) !== -1);
    check("repeating the multi-valued column asks for both",
          ids("tag:web tag:glance"), carries);
    check("and that is an intersection, not a union",
          [carries.length > 0, carries.length < web.length + glance.length], [true, true]);

    const todo = ids("state:TODO"), done = ids("state:DONE");
    check("repeating a one-value key asks for two values at once — no row",
          ids("state:TODO state:DONE"), []);
    check("and the union is the alternation",
          ids("state:TODO|DONE"), Array.from(new Set(todo.concat(done))).sort());

    // One query with both shapes, plus free text, plus a negation.
    const mixed = ids("state:TODO|DONE tag:web tag:glance 2026 -priority:C");
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
  check("and AND across different tags", shown("tag:web tag:glance") <= Math.min(web, glance),
        true);

  // --- a tag cannot take a column's key
  {
    const shadow = new El("div");
    const rows = view(6).rows.map((r) => ({ id: r.id, cells: { ...r.cells, tag: ":title:" } }));
    const st = TableView.mount(shadow, { columns, rows });
    const sb = filterOf(shadow);
    sb.value = "title:review";
    sb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    // Every row carries the tag, so a tag reading would keep all six; the column
    // reading keeps the one whose title holds the word. Counted off the fixture
    // rather than derived from the renderer the assertion is about.
    check("a column keeps its key against a tag spelled alike", st.getVisible().length, 1);
    check("and the fixture would have told the two readings apart", (() => {
      const withWord = rows.filter((r) => String(r.cells.title).indexOf("review") !== -1).length;
      return [rows.length, withWord];
    })(), [6, 1]);
  }

  // --- the value domain follows the rows, where the vocabulary used to
  check("a tag no row carries any more leaves the tags column's domain",
        (() => { t.setRows([makeRow(1)]); return type("tag:").indexOf("daemon"); })(), -1);
  t.setRows(view(40).rows);
  check("and comes back with them", type("tag:").indexOf("daemon") !== -1, true);
  reset();

  // Tier 2: values a column has, reached by prefix as well as in full.
  type("TODO");
  check("a word that names a column value completes to it", tier(2), ["state:TODO"]);
  check("with the rows behind it", counts()[0], Math.round(40 / 5));
  check("and is not dimmed itself",
        box.querySelectorAll(".tv-ac-item")[0].classes.has("tv-ac-dim"), false);
  check("a value of a declared list counts too", (type("A"), tier(2)), ["priority:A"]);

  type("TOD");
  check("a prefix of a value reaches it too", tier(2), ["state:TODO"]);
  type("sy");
  check("a tag reaches its column by prefix, and as a value",
        tier(2).indexOf("tag:system") !== -1, true);
  type("we");
  check("the tag column answers by prefix as well", tier(2).indexOf("tag:web") !== -1, true);
  check("and there is no key row beside it — a tag is not a key",
        items().some((x) => x === "web:"), false);
  type("d");
  check("a one-letter prefix still reaches values", tier(2).length > 0, true);
  // Row one is the choice whatever tier it came from. A prefix that spells
  // nothing leads with the literal, and everything the tiers found sits behind
  // it — an open list always has an answer for RET.
  const guesses = type("rev");
  check("the literal leads where nothing spells the word",
        [guesses[0], guesses.length > 1,
         box.querySelectorAll(".tv-ac-on").length], [`"rev"`, true, 1]);
  check("and where a column completion leads",
        (() => { type("sta"); return box.querySelectorAll(".tv-ac-on").length; })(), 1);
  // A whole word no key or value completes still has the literal to choose,
  // which is the free text RET always applied there.
  check("a word no key or value completes still leads with the literal",
        [type("sync")[0], tier(1).length, tier(2).length,
         box.querySelectorAll(".tv-ac-on").length], [`"sync"`, 0, 0, 1]);
  check("and RET applies it as the free text it is", shown("sync") > 0, true);

  reset();
  b.value = "sta";
  b.dispatchEvent(new Ev("input"));
  check("a list that opens at all opens with its first row chosen",
        box.querySelectorAll(".tv-ac-on").length, 1);
  b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));   // past the literal
  const first = items()[1];
  b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
  check("Tab on a key completion leaves the value to type", [b.value, first],
        ["state:", "state:"]);
  check("and the column's domain is what it then offers", items(), domain(...STATES));
  b.value = "sta";
  b.dispatchEvent(new Ev("input"));
  b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
  check("an arrow steps on from row one rather than into the list",
        box.querySelectorAll(".tv-ac-item").findIndex((e) => e.classes.has("tv-ac-on")), 1);
  check("and `planned', the one key with no column, offers no value list",
        (() => { reset(); return type("planned:"); })(), []);

  // A tag completes to the tags COLUMN, value and all: one token, finished.
  reset();
  const keyed = type("sys");
  check("a tag prefix completes through the column, under the literal",
        keyed.slice(0, 2), [`"sys"`, "tag:system"]);
  check("with the rows that hold it", countOf("tag:system"), shown("tag:system"));
  check("and it is not dimmed — a value the column has is an exact fact",
        (() => { type("sys");
                 return box.querySelectorAll(".tv-ac-item")[1].classes.has("tv-ac-dim"); })(),
        false);
  reset();
  b.value = "sys";
  b.dispatchEvent(new Ev("input"));
  b.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
  b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
  check("and RET commits it whole, there being nothing left to type",
        [t.getQuery(), t.getVisible().length > 0], ["tag:system", true]);

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
    const C = driver({ columns: own, rows });
    const cbox = C.box, ct = C.handle, cb = C.b();
    const offer = C.type;
    const list = offer("tan");
    check("tan offers the rows it is inside, whole, and no tag pairing",
          [list.some((x) => x.indexOf("tanik") !== -1),
           list.some((x) => x.indexOf("contact:") !== -1)], [true, false]);
    check("and the facet the pairing stood for is two tokens, which answer",
          (() => {
            cb.value = "tag:contact tanik";
            // Typed rather than assigned: the box the previous case left open
            // still holds a list over the OLD text, and RET is the list's key
            // before it is the query's.
            cb.dispatchEvent(new Ev("input"));
            cb.dispatchEvent(new Ev("keydown", { key: "Escape" }));
            cb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
            return ct.getVisible().length;
          })(), 2);

    // A prefix of a tag reaches it through the tags column, which is now the
    // only door: there is no key row beside it.
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
    check("and nothing offers it as a key of its own",
          partial.some((x) => x === "alberblanc:"), false);
    offer("alberblanc");
    check("typed in full it is exact, and nothing is a guess",
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
            domain("ada lovelace", "alan turing"));
      // The meta shows no count, so a column of two values still prints two.
      check("counted as cells", single.querySelectorAll(".tv-ac-n").map((e) => Number(e.text)),
            [2, 1]);
    }

    offer("boo");
    check("boo offers the tag as a value of the tags column, and only that",
          [plain().indexOf("tag:book") !== -1, plain().some((x) => x === "book:")],
          [true, false]);

    // --- ROW ONE IS THE CHOICE, and the ordering is the whole of what RET means
    const chosen = () => cbox.querySelectorAll(".tv-ac-item")
      .findIndex((e) => e.classes.has("tv-ac-on"));
    // Typed in full, the value leads: it is the one offer that needs no more
    // typing, and the literal beside it is the letters back again.
    offer("book");
    check("a word that SPELLS a tag leads with the value, ahead of the literal",
          plain().slice(0, 2), ["tag:book", `"book"`]);
    check("and that row is the chosen one", chosen(), 0);
    cb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("so RET commits it with no arrow at all",
          [ct.getQuery(), cb.value], ["tag:book", ""]);
    check("finding the rows the tag holds", ct.getVisible().length, 2);

    // A prefix has nothing spelled in full to lead with, so the literal takes
    // row one and the value it opens is one arrow behind.
    check("a prefix leads with the literal, the value being only opened",
          offer("boo").slice(0, 2), [`"boo"`, "tag:book"]);
    check("chosen there too", chosen(), 0);
    cb.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
    cb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("and RET on it commits the whole token",
          [ct.getQuery(), cb.value], ["tag:book", ""]);
    offer("boo");
    cb.dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
    check("an arrow still walks on from row one", chosen(), 1);

    // A token that already OPENS with a quote is free text as written, so it
    // asks for no suggestions — the literal row would be the token back again.
    check("a quoted word offers nothing to hijack RET", offer(`"boo"`).length, 0);
    cb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("so RET applies it as written",
          [ct.getQuery(), ct.getVisible().length > 0], [`"boo"`, true]);
    check("and a word nothing else completes offers the literal alone",
          offer("zzz"), [`"zzz"`]);
    cb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("so it too applies literally", [ct.getQuery(), ct.getVisible().length], ["zzz", 0]);

    // The value stage ranks the same way, against a domain whose DECLARED
    // order buries the exact match — row one is what RET takes, so the value
    // typed in full has to be there whatever the column's own order says.
    {
      const deep = new El("div");
      const dt = TableView.mount(deep, {
        columns: [{ key: "title", header: "H", type: "text" },
                  { key: "kind", header: "Kind", type: "text",
                    values: ["course-notes", "coursework", "course"] }],
        rows: [{ id: "1", cells: { title: "a", kind: "course-notes" } },
               { id: "2", cells: { title: "b", kind: "course" } },
               { id: "3", cells: { title: "c", kind: "coursework" } }],
      });
      const db = filterOf(deep);
      db.value = "kind:course";
      db.dispatchEvent(new Ev("input"));
      check("the value typed in full leads the ones it merely opens",
            deep.querySelectorAll(".tv-ac-label").map((e) => e.text),
            ["course", "course-notes", "coursework"]);
      // And the domain is the whole of what it offers: a half-typed `key:value'
      // is already an intent, so neither free-text offer belongs under it.
      check("with no free-text offer among them — the value stage has none",
            deep.querySelectorAll(".tv-ac-aside").length, 0);
      db.dispatchEvent(new Ev("keydown", { key: "Enter" }));
      check("so RET commits that one, not the first the column declared",
            dt.getQuery(), "kind:course");
    }
  }

  // --- the two free-text offers: the literal, and the whole titles
  // Row one is what RET takes, so a plain search has to BE an offer; and a
  // reader typing a fragment of a headline is after the row, so the row's own
  // title is one too. Both commit free text, and each says which it is.
  {
    const cols = [{ key: "title", header: "Headline", type: "text" },
                  { key: "tag", header: "Tags", type: "text" }];
    const rows = [
      { id: "1", cells: { title: "tanik's birthday gift and party", tag: ":contact:" } },
      { id: "2", cells: { title: "rfcs worth reading this winter", tag: ":article:" } },
      { id: "3", cells: { title: "a second look at the rfcs", tag: ":article:" } },
    ];
    const L = driver({ columns: cols, rows });
    const lb = L.b(), lt = L.handle;
    const offer = L.type, at = () => L.box.querySelectorAll(".tv-ac-item")
      .findIndex((e) => e.classes.has("tv-ac-on"));
    const key = (k) => lb.dispatchEvent(new Ev("keydown", { key: k }));

    // --- the literal
    check("a prefix nothing spells leads with the text itself, quoted",
          [offer("rf")[0], L.asideOf(`"rf"`), at()], [`"rf"`, "text search", 0]);
    key("Enter");
    check("and RET commits it BARE — quotes are the notation, not the token",
          [lt.getQuery(), lb.value], ["rf", ""]);
    check("finding what a text search finds", lt.getVisible().length, 2);
    L.reset();
    check("a word that SPELLS a key still outranks it",
          offer("tag").slice(0, 2), ["tag:", `"tag"`]);
    check("and so does one that spells a value", offer("article").slice(0, 2),
          ["tag:article", `"article"`]);
    // Whitespace can only reach a bare token through a quote written inside
    // one, and there the bare spelling would break into two tokens.
    check("text holding whitespace commits quoted, since bare would break up",
          offer(`a"b c"`)[0], `"ab c"`);
    key("Enter");
    check("and that is what lands", lt.getQuery(), `"ab c"`);

    // --- the titles
    L.reset();
    const said = offer("tanik");
    check("a title fragment offers the whole title, shown in full",
          [said[1], L.asideOf(said[1])],
          ["tanik's birthday gift and party", "title"]);
    key("ArrowDown");
    key("Enter");
    check("one arrow past the literal, and RET commits it QUOTED — titles hold spaces",
          [lt.getQuery(), lt.getVisible().length],
          [`"tanik's birthday gift and party"`, 1]);

    L.reset();
    const rf = offer("rf");
    check("a title the text merely holds comes after one it opens",
          rf.slice(1, 3), ["rfcs worth reading this winter", "a second look at the rfcs"]);

    // Two rows spelling one title are one offer: the tier is the distinct
    // titles, and a query naming one finds every row that carries it.
    {
      const twin = driver({ columns: cols, rows: rows.concat([
        { id: "4", cells: { title: "rfcs worth reading this winter", tag: ":read:" } }]) });
      const twice = twin.type("rfcs");
      check("one title on two rows is offered once",
            twice.filter((x) => x === "rfcs worth reading this winter").length, 1);
      twin.b().dispatchEvent(new Ev("keydown", { key: "ArrowDown" }));
      twin.b().dispatchEvent(new Ev("keydown", { key: "Enter" }));
      check("and committing it finds both of them", twin.handle.getVisible().length, 2);
    }

    // Five is the cap, inside the twelve the whole list takes.
    {
      const many = driver({ columns: cols, rows: Array.from({ length: 9 }, (_, i) =>
        ({ id: "m" + i, cells: { title: `quarterly report ${i}`, tag: ":ops:" } })) });
      const capped = many.type("quarterly");
      check("no more than five whole titles, however many hold the text",
            capped.filter((x) => x.indexOf("quarterly report") === 0).length, 5);
      check("and the list is inside its own ceiling", capped.length <= 12, true);
    }

    // A title is a fact about a row, so it stands even where a value is spelled
    // in full — what an exact match suppresses is the guessing tier alone.
    {
      const ex = driver({ columns: cols, rows: [
        { id: "1", cells: { title: "book the flight", tag: ":book:" } },
        { id: "2", cells: { title: "nothing here", tag: ":idea:" } }] });
      const spelled = ex.type("book");
      check("an exact value leads, the literal behind it, the title still there",
            [spelled.slice(0, 2), spelled.indexOf("book the flight") !== -1,
             ex.box.querySelectorAll(".tv-ac-dim").length],
            [["tag:book", `"book"`], true, 0]);
    }
  }

  // --- `planned': the reserved key over the date columns
  // The semantics are the parity vectors' (fixtures/parity/filter-query.json);
  // what belongs here is the key's standing in the vocabulary, which vectors
  // over one query cannot show.
  {
    const cols = [
      { key: "title", header: "Headline", type: "text" },
      { key: "tag", header: "Tags", type: "text" },
      { key: "scheduled", header: "Scheduled", type: "text" },
      { key: "deadline", header: "Deadline", type: "text" },
    ];
    const rows = [
      { id: "1", cells: { title: "dated both ways", tag: ":planned:",
                          scheduled: "2026-08-01", deadline: "2026-08-05" } },
      { id: "2", cells: { title: "a deadline alone", tag: ":planned:",
                          scheduled: "", deadline: "2026-08-10" } },
      { id: "3", cells: { title: "no day at all", tag: ":planned:",
                          scheduled: "", deadline: "" } },
    ];
    const P2 = driver({ columns: cols, rows });
    const pbox = P2.box, pt = P2.handle, pb = P2.b();
    // Each query from a clean box: a committed one becomes a chip, and two of
    // them would AND rather than replace.
    const run = (q) => { P2.shown(q); return pt.getVisible().map((r) => r.id); };
    check("planned reads every date column, not one of them",
          run("-planned:*empty*"), ["1", "2"]);
    check("and the empty meta is the row neither column speaks for",
          run("planned:*empty*"), ["3"]);
    // The fixture tags every row `:planned:', so a tag reading would keep all
    // three of them where the key's own reading keeps one.
    check("a tag spelled like it is shadowed, the way a column would shadow it",
          [run("planned:*empty*").length, rows.length], [1, 3]);
    check("the tag is still reachable through the column that holds it",
          run("tag:planned").length, 3);
    const keys = P2.type("plan");
    check("it is offered as a key, so a reader can find it",
          keys.indexOf("planned:") !== -1, true);
    check("and only once, the tag of that name not offering a second",
          keys.filter((x) => x === "planned:").length, 1);
    check("it offers no value list — what follows is a date prefix, not a domain",
          P2.type("planned:").length, 0);
  }

  // --- C-n and C-p drive the list, and only while it is open
  {
    const at = () => box.querySelectorAll(".tv-ac-item")
      .findIndex((e) => e.classes.has("tv-ac-on"));
    const press = (key, ctrl) => P.press(key, { ctrlKey: ctrl });
    type("sy");
    check("row one is active to begin with", at(), 0);
    press("n", true);
    check("C-n steps down the list", at(), 1);
    press("n", true);
    check("and again", at(), 2);
    press("p", true);
    check("C-p steps back up", at(), 1);
    check("and they are taken from the page", press("n", true).defaultPrevented, true);

    // Up from row one wraps to the end — a list is a ring, and reaching the
    // last offer should not mean walking the whole of it.
    type("sy");
    const many = box.querySelectorAll(".tv-ac-item").length;
    check("there is more than one offer to wrap between", many > 1, true);
    press("p", true);
    check("C-p from row one wraps to the last", at(), many - 1);
    type("sy");
    press("ArrowUp");
    check("and ArrowUp is that same motion", at(), many - 1);

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
    // Nothing is applied, so the row collapses: the declared sort is written
    // over the column it orders rather than into a chip, and a strip with
    // nothing in it claims nothing about the filter.
    check("which is collapsed until something is applied",
          [hero.querySelector(".tv-chips").style.display,
           sortMarks(hero),
           hero.querySelectorAll(".tv-chip[data-i]").length],
          ["none", ["Scheduled▲"], 0]);
    check("while the classic bar keeps its inline chips",
          plain.querySelector(".tv-bar").children.map((e) => e.className),
          ["tv-title", "tv-chips", "tv-filter-wrap"]);
    // The box teaches the grammar, which is the part nobody can guess, in
    // every mode — the control is the same control wherever it is put.
    const TEACH = `tag:book · state:TODO|DONE · -word · "some phrase"`;
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

    const light = paletteIn(".tv-root{");
    const dark = paletteIn("@media (prefers-color-scheme:dark){.tv-root{");
    check("both palettes were found in the sheet",
          [Object.keys(light).length >= 8, Object.keys(dark).length >= 8], [true, true]);
    check("and they are not the same palette", light.bg === dark.bg, false);

    for (const [name, p] of [["light", light], ["dark", dark]]) {
      const dimmed = mixed(p.fg, p.bg, 0.4);          // the .6 opacity, resolved
      check(`${name} palette is complete`,
            [p.bg, p.fg, p.alt, p.muted, p.sel, p.accent, p.link].every(Boolean), true);
      for (const [what, fgc, bgc, floor] of [
        ["body", p.fg, p.bg, 7], ["body on zebra", p.fg, p.alt, 7],
        ["muted", p.muted, p.bg, 4.5], ["muted on zebra", p.muted, p.alt, 4.5],
        ["selected row", p.fg, p.sel, 7], ["chip text", p.fg, p.alt, 4.5],
        ["dropdown active", p.fg, p.sel, 4.5], ["dimmed suggestion", dimmed, p.bg, 4.5],
        ["accent as text", p.accent, p.bg, 4.5],
        ["link as text", p.link, p.bg, 4.5], ["link on zebra", p.link, p.alt, 4.5]])
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
    wb.value = "sy"; wb.dispatchEvent(new Ev("input"));

    const cold = new El("div");
    TableView.mount(cold, many(6000));      // no wait: the keystroke arrives first
    const cb2 = filterOf(cold);
    cb2.value = "sy"; cb2.dispatchEvent(new Ev("input"));
    check("a keystroke that beats it still gets an answer",
          cold.querySelectorAll(".tv-ac-item").length > 0, true);
    // What the two paths cost is no longer worth timing: the index is the
    // distinct TITLES, where it used to be every title word with the tags it
    // sat under, and the build a cold keystroke pays for is small enough that
    // the two orders overlap run to run. What still holds — and is the whole
    // point of building early — is that neither answer depends on the timing.
    check("both answer the same thing",
          warm.querySelectorAll(".tv-ac-label").map((e) => e.text),
          cold.querySelectorAll(".tv-ac-label").map((e) => e.text));

    // Invalidation re-queues it rather than leaving a stale index behind.
    const before = idles;
    const wt = TableView.mount(warm, many(200));
    wt.setRows(many(300).rows);
    await sleep(400);
    check("a rows change queues another build", idles > before, true);
    const again = filterOf(warm);
    again.value = "sy";
    again.dispatchEvent(new Ev("input"));
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
    const P = driver(40, { palette: true });
    const pal = P.box, pt = P.handle, pb = P.b(), chipsOf = P.chipsOf;
    const sortsOf = P.sortsOf;
    const veil = () => pal.querySelector(".tv-veil");
    /** Whether the overlay is up -- the palette's own sense of "shown". */
    const shown = () => veil().style.display !== "none";

    check("the page carries the chip row and nothing else",
          pal.querySelector(".tv-root").children.map((e) => e.className),
          ["tv-chips", "tv-scroll", "tv-hint", "tv-veil"]);
    check("no bar at all", pal.querySelectorAll(".tv-bar").length, 0);
    check("an unfiltered page has no filter chrome whatever",
          [chipsOf(), shown()], [[], false]);
    check("the declared sort is on the header it orders", sortsOf(), ["Scheduled▲"]);
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
    check("a list opens in the palette on its first row, as on the page",
          [pal.querySelectorAll(".tv-ac-item").length > 0, pAt()], [true, 0]);
    check("C-n steps down it", [pPress("n", true).defaultPrevented, pAt()], [true, 1]);
    check("and again", (pPress("n", true), pAt()), 2);
    check("C-p steps back up", [pPress("p", true).defaultPrevented, pAt()], [true, 1]);
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

    // --- frost chips: the hue is the identity, the volume is low
    // The chip wears the theme's frost as a wash: a fraction of it over
    // whatever the theme's own background is, a hairline of more of the same,
    // and the ordinary foreground for ink. Every value below is read out of
    // the emitted sheet, so swapping the identity swaps what is asserted —
    // what is pinned here is that it stays pale, stays a wash, and stays
    // apart from the accent.
    // Both properties come off `--tv-frost', so the identity is one constant:
    // asserted as a shape rather than as a colour, since the colour is read
    // from the sheet below.
    check("both chip properties mix the one frost var with the page",
          (css.match(/color-mix\(in srgb,var\(--tv-frost\) var\(--tv-chip-\w+\),transparent\)/g)
           || []).length, 2);
    check("and the ink is the theme's own foreground",
          /\.tv-pal \.tv-chip\{color:var\(--tv-fg\)/.test(css), true);
    check("the rule is still one rule — the strengths live with the palettes",
          css.split(".tv-pal .tv-chip{").length, 2);
    check("and the selected row is a background and nothing else",
          /\.tv-table tbody tr\.tv-sel\{background:var\(--tv-sel\)\}/.test(css), true);
    check("no stripe, no border, no shadow on it",
          /tr\.tv-sel\{[^}]*(border|box-shadow)/.test(css), false);

    // What the browser paints, per theme, resolved from the sheet: the frost
    // cascades from the base rule and each theme says how much of it it wants.
    const L = chipIn("light"), D = chipIn("dark");
    const FROST = L.frost;
    check("both themes resolve a chip colour from the one frost var",
          [L.frost === D.frost, !!FROST, L.ground !== D.ground], [true, true, true]);
    check("the cursor row is a different role and never wears it",
          [paletteIn(':root[data-theme="light"] .tv-root{').sel !== FROST,
           paletteIn(':root[data-theme="dark"] .tv-root{').sel !== FROST], [true, true]);
    // Frost is pale, so the two strengths are far apart on purpose: a sixth of
    // it reads over black, and it takes nearly half to read over white. Both
    // stay under the half that would make the chip a panel.
    check("both themes ask for a modest amount of it",
          [L.washPct > 0 && L.washPct <= 0.5, D.washPct > 0 && D.washPct <= 0.25],
          [true, true]);
    check("and the pale hue needs more of itself over white than over black",
          L.washPct > D.washPct, true);
    check("the hairline takes more than the ground, in both",
          [L.edgePct > L.washPct, D.edgePct > D.washPct], [true, true]);
    check("light ink clears the text floor on its tint",
          ratio(paletteIn(':root[data-theme="light"] .tv-root{').fg, L.wash) >= 4.5, true);
    check("dark ink clears it on its own",
          ratio(paletteIn(':root[data-theme="dark"] .tv-root{').fg, D.wash) >= 4.5, true);
    check("and both clear the stricter one too, the ink being ordinary text",
          [ratio(L.ground === "#FFFFFF" ? "#000000" : "#FFFFFF", L.wash) >= 7,
           ratio(D.ground === "#000000" ? "#FFFFFF" : "#000000", D.wash) >= 7], [true, true]);
    // A wash is a wash: the tint has to sit nearer its own ground than the
    // solid frost, or it is a slab again. Measured as a distance to each
    // rather than as an absolute, because contrast against a black ground
    // exaggerates any lift at all. This is what caps the light strength — at
    // 55% the tint crosses over and is nearer the solid than the page.
    check("each tint sits nearer its ground than the solid frost",
          [ratio(L.ground, L.wash) < ratio(L.wash, FROST),
           ratio(D.ground, D.wash) < ratio(D.wash, FROST)], [true, true]);
    check("and the solid is a long way off in the dark, where the wash bites",
          ratio(D.wash, FROST) > 5, true);
    // Integer compositing moves a hue by a degree; the point is that it is the
    // same colour, not that the arithmetic is exact.
    check("the hue survives the wash, so it still reads as the frost",
          [Math.abs(hue(L.wash) - hue(FROST)) <= 3,
           Math.abs(hue(D.wash) - hue(FROST)) <= 6], [true, true]);

    // Frost and the link accent are both blue; they have to stay tellable
    // apart, or an applied filter reads as a link. What separates them is
    // saturation, not lightness: against the dark accent frost is only 1.7:1,
    // which would pass a luminance test while looking like the same colour.
    const satFrost = sat(FROST);
    check("frost is a pale blue, not a saturated one", satFrost <= 0.25, true);
    for (const theme of ["light", "dark"]) {
      const accent = paletteIn(`:root[data-theme="${theme}"] .tv-root{`).accent;
      const satAccent = sat(accent);
      check(`${theme}: the chip frost and the link accent are different colours`,
            FROST.toLowerCase() !== accent.toLowerCase(), true);
      check(`${theme}: the accent is saturated where frost is washed out`,
            [satAccent >= 0.5, satAccent - satFrost >= 0.4], [true, true]);
    }

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
    check("and it is the omnibox, not the palette",
          omni.querySelector(".tv-root").classes.has("tv-omni"), true);
  }

  // --- RET is stage-aware: a key completes and waits, a value completes and goes
  {
    const asked = [];
    const S = driver(40, { onFilter: (q) => asked.push(q) });
    const st = S.box, t = S.handle, b = S.b();
    const labels = S.items, counts = S.counts;
    // Types without clearing first: this section walks one query forward.
    const type = (q) => { b.value = q; b.dispatchEvent(new Ev("input")); };
    const on = () => st.querySelectorAll(".tv-ac-on").length;

    // A prefix spells nothing, so the literal has row one and the key it opens
    // is behind it. Typed in full the key IS an answer, and leads again.
    type("ta");
    check("a prefix leads with the literal, the key behind it",
          labels().slice(0, 2), [`"ta"`, "tag:"]);

    // The contract: `tag:' by RET, then the tags with their counts.
    type("tag");
    check("a bare word spelling the column key offers it first", labels()[0], "tag:");
    check("which is the one thing preselected", on(), 1);
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    check("RET completes it to `key:' and stays", [b.value, b.blurs || 0], ["tag:", 0]);
    check("with the caret past the colon", b.selectionStart, 4);
    check("nothing was delivered — the token is half a predicate", asked, []);
    check("and the list is already showing that key's values",
          labels().sort(),
          ["*empty*", "daemon", "emacs", "glance", "ops", "read", "system", "web"]);
    check("each with the rows behind it", counts().every((n) => n > 0), true);
    check("with row one of them chosen, the way every list opens", on(), 1);

    // From there: RET again takes that row. A list with something to offer has
    // an answer for RET, so the value is one keystroke rather than two.
    const leading = labels()[0];
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("a second RET commits the value at row one",
          [st.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")), asked],
          [["tag:" + leading], ["tag:" + leading]]);
    check("and hands the table over", b.blurs, 1);

    // And RET on a value finishes the whole thing.
    asked.length = 0;
    b.focus();
    type("state:");
    check("a value list opens on its first row too", on(), 1);
    const picked = labels()[0];
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("RET on that value completes and goes",
          [st.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")).pop(),
           b.value, st.querySelectorAll(".tv-ac-item").length],
          ["state:" + picked, "", 0]);
    check("delivering once, with the table taking over", [asked.length, b.blurs], [1, 2]);

    // Tab is unchanged at both stages: accept and stay, either way.
    b.focus();
    type("tag");
    b.dispatchEvent(new Ev("keydown", { key: "Tab" }));
    check("Tab on a key completes it and stays", [b.value, b.blurs], ["tag:", 2]);
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
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("and a finished token offered beside a bare word goes on RET",
          [st.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")).pop(),
           b.value], ["state:TODO", ""]);

    // The presence predicate is reached by putting the list away first, which
    // is the one ladder Escape has always walked.
    b.focus();
    type("tag");
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));      // `tag:', values listed
    b.dispatchEvent(new Ev("keydown", { key: "Escape" }));     // the list, not the text
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    check("Escape then RET commits the presence predicate as typed",
          [st.querySelectorAll(".tv-chip").map((c) => c.text.replace("×", "")).pop(),
           b.value], ["tag:", ""]);
  }

  // --- where the browser eats C-n, the list says so rather than going quiet
  {
    const { box, b: bEl } = driver(40);
    const b = bEl();
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

    ua("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) "
       + "Chromium/126.0.0.0 Safari/537.36");
    open();
    check("and so is the family's other spelling", note().length, 1);

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

    // The version slash is what makes the token the product rather than a word
    // that starts the same way. A shell naming itself after the engine still
    // gets its own keys, and is told nothing about somebody else's.
    ua("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) "
       + "Chromeless/2.1 Safari/537.36");
    open();
    check("nor a product whose name merely begins with the word", note(), []);

    ua("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) "
       + "Chrome/126.0.0.0 Safari/537.36");
    open();
    b.dispatchEvent(new Ev("keydown", { key: "Escape" }));
    check("and with no list there is nothing to say", note(), []);
    ua(null);
  }

  // --- prose never composes a key, there being no key it could compose
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
    const W = driver({ columns: own, rows });
    const offer = W.type;

    // The reported title, verbatim. A word out of a title is offered as the
    // WHOLE TITLE now — free text, quoted — so a colon in it is the title's own
    // and can compose nothing: the only keys are `title', `tag' and `planned'.
    check("a title wearing a colon is offered whole, colons and all",
          offer("lis").some((x) => x.indexOf("Lisp:") !== -1), true);
    // The free-text offers aside — a whole title shows the title, colons and
    // all, which is the one place a colon here is nobody's doing.
    check("and no predicate offer names a key the view does not have",
          ["lisp", "gabriel", "radio", "quot", "snake_"].every(
            (q) => (offer(q), W.offers().every((x) => {
              const at = x.indexOf(":");
              return at === -1 || ["title", "tag", "planned"].indexOf(x.slice(0, at)) !== -1;
            }))), true);
  }

  // --- the multi-valued verdict dies with the rows it was read from
  {
    const own = [{ key: "title", header: "H", type: "text" },
                 { key: "tag", header: "T", type: "text" }];
    const box = new El("div");
    // Mounted before its rows arrive, which is what a store still loading, or
    // a query that matched nothing, looks like.
    const P = driver({ columns: own, rows: [] });
    const t = P.handle, b = P.b();
    check("nothing to go on yet", t.getVisible().length, 0);

    t.setRows([
      { id: "a", cells: { title: "one", tag: ":alpha:beta:" } },
      { id: "b", cells: { title: "two", tag: ":alpha:" } },
      { id: "c", cells: { title: "three", tag: ":beta:" } },
    ]);
    const labels = P.type("alp");
    check("the rows arriving give it a value domain after all",
          labels.indexOf("tag:alpha") !== -1, true);

    check("and the column resolves against it", P.shown("tag:alpha"), 2);
    check("and repeated ones intersect, the arity being known",
          P.shown("tag:alpha tag:beta"), 1);
    check("rather than offering the raw cell as a value",
          P.type("tag:").sort(), ["*empty*", "alpha", "beta"]);
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
    const D = driver({ columns: own, rows });
    check("one stamp it cannot parse does not cost the column its prefix matching",
          D.shown("scheduled:2026-08"), 2);
    check("and prefix it is, not substring", D.shown("scheduled:08"), 0);

    // A column of prose is still no date column, whatever dates fall in it.
    const R = driver({ columns: own, rows: rows.map((r, i) => ({
      id: r.id, cells: { title: i < 2 ? "2026-08-0" + i : "a sentence about things",
                         scheduled: r.cells.scheduled, tag: ":x:" } })) });
    check("so a title column matches by substring as it always did",
          R.shown("title:sentence"), 2);
  }

  // --- three roles, three shapes: filled pill, frost chip, ghost tag
  {
    const css = document.head.children.map((e) => e.text).join("");
    const T = driver(40, { pageSize: 0 });
    const box = T.box, t = T.handle, b = T.b();
    const tagCell = () => box.querySelectorAll(".tv-table tbody tr[data-id]")[0]
      .children[columns.findIndex((c) => c.key === "tag")];

    // --- the cell
    const cell = tagCell();
    const chips = cell.querySelectorAll(".tv-tag").map((e) => e.text);
    check("a multi-valued cell renders one tag per value",
          chips, TAGS[0].split(":").filter(Boolean));
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
    for (const [theme, ink, grounds] of [
      ["dark", "#A4C2EB", ["#000000", "#21252B", "#373D4F"]],
      ["light", "#667071", ["#FFFFFF", "#F8F8FF", "#F0FFF0"]]])
      check(`${theme} tag ink clears the floor on every ground it sits on`,
            grounds.every((g) => ratio(ink, g) >= 4.5), true);
    check("the theme's own comment colour would not have, on light",
          ratio("#7F8C8D", "#FFFFFF") < 4.5, true);

    // --- the dropdown
    // A suggestion is a token, drawn as the text it commits: with no tag KEY
    // left to name, no row of the list wears a tag of its own.
    for (const typed of ["sys", "sy", "sta", "tag:"]) {
      b.value = typed;
      b.dispatchEvent(new Ev("input"));
      check(`no suggestion row wears a tag for ${typed}`,
            box.querySelectorAll(".tv-ac-item")
               .every((e) => e.querySelectorAll(".tv-tag").length === 0), true);
    }
    b.dispatchEvent(new Ev("keydown", { key: "Escape" }));

    // --- the applied filter outranks the tag it names
    b.value = "tag:web";
    b.dispatchEvent(new Ev("keydown", { key: "Enter" }));
    await painted();
    const chip = box.querySelector(".tv-chip");
    check("an applied filter is a frost chip, whatever it names",
          [!!chip, chip.querySelectorAll(".tv-tag").length], [true, 0]);

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

    // The page's own choice outranks the system's, and is read off the root's
    // `data-theme'. Both directions are driven: an attribute agreeing with the
    // system proves nothing, since the system alone would give that answer.
    const DARK = "#b6e63e";
    const root$ = document.documentElement;
    const themed = (asked, system) => {
      global.matchMedia = mediaStub({ "prefers-color-scheme": system });
      if (asked) root$.setAttribute("data-theme", asked);
      else root$.removeAttribute("data-theme");
      const el = new El("div");
      TableView.mount(el, badged);
      return inkIn(el);
    };
    check("the page asking for dark outranks a system saying light",
          themed("dark", "light"), DARK);
    check("and the page asking for light outranks a system saying dark",
          themed("light", "dark") !== DARK, true);
    check("with nothing asked, the system is what answers",
          [themed(null, "dark"), themed(null, "light") !== DARK], [DARK, true]);

    // The attribute moving under a mounted table is what the observer is for.
    Watcher.made.length = 0;
    global.MutationObserver = Watcher;
    global.matchMedia = mediaStub({ "prefers-color-scheme": "light" });
    const asked$ = new El("div");
    TableView.mount(asked$, badged);
    const wasSystem = inkIn(asked$);
    root$.setAttribute("data-theme", "dark");
    Watcher.made[Watcher.made.length - 1].fire();
    check("and the page changing its mind redraws to what it asked for",
          [wasSystem !== DARK, inkIn(asked$)], [true, DARK]);
    root$.removeAttribute("data-theme");
    delete global.MutationObserver;
    delete global.matchMedia;
  }

  // --- the paginator
  {
    const P = driver(250, { pageSize: 100 }, 600);
    const box = P.box, t = P.handle, b = P.b();
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
    check("and neither carries a way to turn one", (() => {
      const small = new El("div");
      TableView.mount(small, view(40), { pageSize: 100 });
      const off = new El("div");
      TableView.mount(off, view(40));
      return [small.querySelectorAll(".tv-pg").length, off.querySelectorAll(".tv-pg").length];
    })(), [0, 0]);
    check("while the paged one does", box.querySelectorAll(".tv-pg").length, 2);

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
    const before = sc.scrollTop;
    check("stepping past it crosses the seam", pt.selectStep(1), true);
    await sleep(400);
    check("landing on the first row of the next, column carried",
          [pt.pageInfo().page, pt.getSelection().id, pt.getSelection().col],
          [2, pt.getVisible()[0].id, 2]);
    // The seam is where the old presentation turned a page and jumped the
    // scroller to 0. It now steps one row and the band eases, which is one
    // row of travel rather than a hundred -- what makes a held key flow.
    // The old presentation turned the page and snapped the scroller to 0 --
    // a 2,724px jump from where this sits. It now travels the width of the
    // scrolloff band re-establishing itself (the paged scroller was clamped at
    // its own page's end, so the band had no room below the cursor until the
    // whole set was under it), which is a fraction of a viewport and eases.
    check("the viewport eases by a fraction of a screen rather than snapping",
          [sc.scrollTop !== 0, Math.abs(sc.scrollTop - before) < 300], [true, true]);
    // The seam itself: the window now holds rows from BOTH pages at once,
    // which is the thing a page turn can never do and the reason there is no
    // blink to see.
    const spans = pg.querySelectorAll(".tv-table tbody tr[data-id]").map((tr) => tr.dataset.id);
    const all = pt.getRows();
    const pageOf = (id) => Math.floor(all.findIndex((r) => r.id === id) / 100);
    check("and the window spans the seam, holding rows of both pages",
          [spans.some((id) => pageOf(id) === 0), spans.some((id) => pageOf(id) === 1)],
          [true, true]);
    check("and the mark is on the row it stepped to",
          pg.querySelector(".tv-table tbody tr.tv-sel").dataset.id, pt.getSelection().id);

    check("stepping back crosses it the other way", pt.selectStep(-1), true);
    await sleep(400);
    check("landing on the last row of the one before, and the same column",
          [pt.pageInfo().page, pt.getSelection().id, pt.getSelection().col],
          [1, wasLast, 2]);
    check("and the viewport eases back rather than snapping to the page end",
          Math.abs(sc.scrollTop - before) < 300, true);

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

    // --- nothing to page through
    // An empty set is one page of nothing: no first row, so no row one, and
    // nowhere to turn either way. The zeros are the arm a set with rows in it
    // never reaches, and the arm a reader sees the moment a query misses.
    {
      const none = new El("div");
      const nt = TableView.mount(none, view(250), { pageSize: 100 });
      const nb = filterOf(none);
      nt.nextPage(); nt.nextPage();
      nb.value = "no-such-headline";
      nb.dispatchEvent(new Ev("keydown", { key: "Enter" }));
      await painted();
      check("a query matching nothing leaves one page of nothing",
            nt.pageInfo(), { page: 1, pages: 1, from: 0, to: 0, total: 0 });
      check("and nowhere to turn from it",
            [nt.nextPage(), nt.previousPage(), nt.selectStep(1), nt.selectStep(-1)],
            [false, false, false, false]);
      check("with the line back to a plain count, there being no pages",
            [none.querySelectorAll(".tv-pg").length,
             none.querySelector(".tv-hint").textContent.split(" · ")[0]],
            [0, "0/250 rows"]);
      check("and with no page size the empty set reads the same",
            (() => {
              const e = new El("div");
              const et = TableView.mount(e, view(40));
              et.setRows([]);
              return et.pageInfo();
            })(), { page: 1, pages: 1, from: 0, to: 0, total: 0 });
    }

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
    // To the media block's own closing brace, counted — `indexOf("}")' stops at
    // the first rule inside it, so everything after the first declaration was
    // being read as though it were outside the query.
    const coarse = (() => {
      const at = css.indexOf("@media (pointer:coarse){");
      let depth = 0;
      for (let i = at; i < css.length; i++) {
        if (css[i] === "{") depth++;
        else if (css[i] === "}" && --depth === 0) return css.slice(at, i + 1);
      }
      return css.slice(at);
    })();
    check("there is a coarse-pointer block", coarse.indexOf("@media (pointer:coarse){"), 0);
    for (const [what, rule] of [
      ["rows grow by padding", ".tv-table th,.tv-table td{padding:12px}"],
      // The one target a finger has to hit dead on: three characters of box are
      // narrower than a fingertip whatever the padding does for the height.
      ["and the mark box widens to a real target", ".tv-table td.tv-box{min-width:44px}"],
      ["suggestions too", ".tv-ac-item{padding:12px 12px}"],
      // Every chip in the strip, crumbs included: the row is one row and a
      // finger meets all of it at once.
      ["and chips", ".tv-chip{padding:13px 8px 13px 12px}"],
      ["the remove mark stops waiting for a hover", ".tv-chip-x{opacity:1"],
      ["and the box clears iOS's zoom threshold", ".tv-panel .tv-filter{font-size:16px}"]])
      check(what, coarse.indexOf(rule) !== -1, true);
    check("nothing in it sets a row height — the height is the padding's business",
          /(^|[;{])height:/.test(coarse), false);

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
          first, Math.max(0, Math.floor((44 * 20 - HEAD_PX) / 44) - 15));
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

    // The mark box takes no long press: a finger resting on it is still aiming
    // at it, and the touchend that completed a press would swallow the click
    // the toggle arrives on — leaving the box unreachable on the one pointer
    // its 44px target exists for.
    {
      const mbox = new El("div");
      const acts = [];
      const mt = TableView.mount(mbox, view(40), {
        marks: true, onAction: (command, id2) => acts.push(command + " " + id2),
      });
      mbox.querySelector(".tv-scroll").clientHeight = 600;
      const mrow = mbox.querySelectorAll(".tv-table tbody tr[data-id]")[3];
      mrow.children[0].dispatchEvent(
        new Ev("touchstart", { touches: [{ clientX: 10, clientY: 10 }] }));
      await sleep(600);
      check("a long press on the box runs no row action",
            [acts.length, mt.getSelection().id], [0, null]);
      const tap = new Ev("touchend", { touches: [] });
      mrow.dispatchEvent(tap);
      check("and its touchend is left alone, so the tap's click still lands",
            tap.defaultPrevented, false);
      mrow.children[0].click();
      check("which is what checks the box", mt.getMarked(), [mrow.dataset.id]);
    }

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
  check("filter narrows", hint().split(" ")[0], "11/40");
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
  // With no handler given, the renderer opens an http link itself — and only
  // an http one, an org link being the consumer's to resolve.
  {
    const bare = new El("div");
    TableView.mount(bare, { columns: [{ key: "title", header: "H", type: "text" }],
                            rows: [{ id: "a", cells: { title: "[[https://example.com][site]]" } },
                                   { id: "b", cells: { title: "[[org-glance:x][local]]" } }] });
    const links = bare.querySelectorAll(".tv-link");
    opened = null;
    links[0].click();
    check("an http link with no handler is opened, safely", opened,
          ["https://example.com", "_blank", "noopener"]);
    opened = null;
    links[1].click();
    check("and any other scheme is left to the consumer", opened, null);
  }

  // The view declared `scheduled asc'; a click PROMOTES state above it rather
  // than throwing it away, and the hint spells the whole chain.
  box.querySelector("th[data-key=state]").click();
  check("a header click promotes the column it lands on",
        hint(), "40 rows · sort state asc → scheduled asc" + ACT);
  box.querySelector("th[data-key=state]").click();
  check("and clicking the leading column flips just that key",
        hint(), "40 rows · sort state desc → scheduled asc" + ACT);
  check("the chain is two keys deep, in precedence order",
        t.getSort().map((k) => k.column + (k.ascending ? "+" : "-")),
        ["state-", "scheduled+"]);

  t.upsertRow({ id: "h-0", cells: { state: "DONE", priority: "A", title: "changed" } });
  check("upsert of a known id keeps the count",
        hint(), "40 rows · sort state desc → scheduled asc" + ACT);
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

  // --- what an upsert does to the lists standing between the store and the page
  {
    // Unsorted, the cached list mirrors the store, so a row that is upserted
    // goes back where it was rather than to the end — the order on screen is
    // the producer's, and an edit is not a reordering.
    const keep = new El("div");
    const kt = TableView.mount(keep, {
      columns: [{ key: "t", header: "T", type: "text" }],
      rows: ["alpha", "beta", "gamma"].map((s, i) => ({ id: "abc"[i], cells: { t: s } })),
    });
    kt.upsertRow({ id: "b", cells: { t: "beta, edited" } });
    check("an unsorted upsert keeps the row's place",
          kt.getVisible().map((r) => r.id), ["a", "b", "c"]);
    kt.upsertRow({ id: "d", cells: { t: "delta" } });
    check("while an unknown id lands at the end",
          kt.getVisible().map((r) => r.id), ["a", "b", "c", "d"]);

    // Widths: sorted, so the upsert is spliced into the cached order and the
    // cached widths are what the page is drawn to. Nothing recomputes them
    // there, so the upsert has to widen them itself or the longer cell is drawn
    // into a column measured before it existed.
    const wide = new El("div");
    const wt = TableView.mount(wide, {
      columns: [{ key: "t", header: "T", type: "text" }],
      rows: [{ id: "a", cells: { t: "aa" } }, { id: "b", cells: { t: "bb" } }],
      sort: { column: "t", ascending: true },
    });
    const ch = () => Number(/calc\((\d+)ch/.exec(wide.querySelector("col").style.width)[1]);
    const narrow = ch();
    const LONG = "a much longer cell than any of these";
    wt.upsertRow({ id: "b", cells: { t: LONG } });
    check("a longer upserted cell widens its column",
          [narrow < LONG.length, ch()], [true, LONG.length]);
    // An upsert can only add text: the widths are a high-water mark until the
    // order is recomputed, so a shorter cell does not pull the column back in
    // under the rows still holding the long one.
    wt.upsertRow({ id: "b", cells: { t: "bb" } });
    check("and a shorter one does not narrow it back", ch(), LONG.length);
  }

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
    rbox.dispatchEvent(new Ev("keydown", { key: "Escape" }));   // the list, not the text
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
    kbox.dispatchEvent(new Ev("keydown", { key: "Escape" }));   // the list, not the text
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
                      "nextPage", "previousPage", "pageInfo",
                      "toggleMark", "markAll", "getMarked", "clearMarks", "markedCount"])
    check(`handle exposes ${name}`, typeof t[name], "function");
  check("handle exposes el", !!t.el && typeof t.el === "object", true);
  for (const name of ["mount", "parseQuery", "displayText", "comparator"])
    check(`TableView exposes ${name}`, typeof TableView[name], "function");

  // Nothing, handed in: a producer between answers, a view that has not
  // arrived, a mount that will be filled a moment later. Each is an empty
  // table rather than an exception thrown into the consumer's page — asserted
  // by value, since a throw here would take the whole suite with it and say
  // only where it landed.
  const answer = (fn) => { try { return fn(); } catch (e) { return "threw: " + (e && e.message); } };
  check("setRows with nothing is an empty table",
        answer(() => {
          const e = new El("div"), h = TableView.mount(e, view(5));
          h.setRows(null);
          return [h.getRows().length, e.querySelector(".tv-empty").style.display];
        }), [0, ""]);
  check("setView with nothing is an empty table with no columns",
        answer(() => {
          const e = new El("div"), h = TableView.mount(e, view(5));
          h.setView(null);
          return [h.getRows().length, e.querySelectorAll("th").length];
        }), [0, 0]);
  check("and a mount with no view at all still mounts",
        answer(() => {
          const e = new El("div"), h = TableView.mount(e);
          return [h.getRows().length, e.querySelectorAll(".tv-root").length];
        }), [0, 1]);

  await filterQuery();
  await cellsChipsPills();
  await queryKeys();
  await sortOrder();
  await sortTokens();
  await metaValues();
  await starredMetas();
  await decoratedCells();
  await rowMarks();
  await linkedRows();
  await crumbTrail();
  await parityVectors();

  console.log("\n== the window");
  // The header and a row measure differently, and everything below sums over
  // both. Asserted here so a shim that ever collapses them again is caught by
  // the check that says they are apart, not by five that quietly still pass.
  check("the header and a row are not the same height", HEAD_PX === ROW_PX, false);
  const W = driver(500, undefined, 300);      // 10 rows on screen
  const far = W.box, big = W.handle;
  const sc = far.querySelector(".tv-scroll");
  sc.scrollTop = 3000;
  sc.dispatchEvent(new Ev("scroll"));
  await sleep(50);
  const shown = () => far.querySelectorAll(".tv-table tbody tr[data-id]");
  check("only a window has DOM", shown().length, 10 + 2 * 15);
  check("spacers stand in for the rest", far.querySelectorAll("tbody tr.tv-pad").length, 2);

  const at = big.getVisible().findIndex((r) => r.id === shown()[0].dataset.id);
  check("the window sits at the scroll position",
        at, Math.floor((3000 - HEAD_PX) / ROW_PX) - 15);
  check("striping follows the global index",
        [shown()[0], shown()[1]].map((tr) => tr.classes.has("tv-alt")),
        [at % 2 === 1, at % 2 === 0]);

  // The header stands above row zero, so which row the window starts at is the
  // scroll position less the header's height — a row's height is a different
  // number and gives a different row. Parked where the two answers differ by a
  // whole row, the window says which of them was subtracted: (3024 - 24) / 30
  // is a row boundary and (3024 - 30) / 30 is not.
  sc.scrollTop = 3024;
  sc.dispatchEvent(new Ev("scroll"));
  await sleep(50);
  const parked = big.getVisible().findIndex((r) => r.id === shown()[0].dataset.id);
  check("the window is offset by the header's height",
        parked, Math.floor((3024 - HEAD_PX) / ROW_PX) - 15);
  check("which at this parking is not the row's",
        Math.floor((3024 - HEAD_PX) / ROW_PX) === Math.floor((3024 - ROW_PX) / ROW_PX), false);

  const last = big.getVisible()[499].id;
  check("select() reaches a row with no element", big.select(last), true);
  await sleep(400);                       // the viewport eases the whole way there
  check("and the ease carries the window to it",
        far.querySelector("tbody tr.tv-sel").dataset.id, last);

  // --- the ease aims at a row, and a row is measured when it is drawn
  // A move works its target out from the geometry the last render read, so a
  // measure landing after that target was set describes a table the target no
  // longer fits. Standing in for a web font arriving mid-run by moving what the
  // shim reports a row and the header measure, the way the coarse-pointer check
  // moves what it reports about the pointer.
  {
    const queue = [];
    const realFrame = global.requestAnimationFrame;
    global.requestAnimationFrame = (fn) => queue.push(timed(fn));
    /** Run the queued frame callbacks once. */
    const oneFrame = () => queue.splice(0).forEach((fn) => fn());
    /** Run them, and whatever they queue, to a standstill. */
    const settle = () => { for (let i = 0; i < 200 && queue.length; i++) oneFrame(); };
    /** How far the last row's foot falls below the fold. */
    const hidden = (sc, rows, port) =>
      Math.max(0, HEAD_PX + rows * ROW_PX - (sc.scrollTop + port));

    // Moves outrunning the frames: every target lands before a single render,
    // so the one that survives is the one worked out from the stalest geometry
    // of the run and nothing follows to work it out again.
    const burst = new El("div");
    const bt = TableView.mount(burst, view(300));
    const bs = burst.querySelector(".tv-scroll");
    bs.clientHeight = 300;
    bt.select(bt.getVisible()[0].id);
    settle();
    ROW_PX = 44;
    for (let i = 0; i < 320; i++) bt.selectStep(1);
    settle();
    check("a burst to the end lands the last row whole, and rendered",
          [hidden(bs, 300, 300), !!burst.querySelector("tbody tr.tv-sel")], [0, true]);
    ROW_PX = 30;

    // One move a frame, which is the cadence a held key runs at. Every target
    // but the last is corrected by the move after it; the last one is measured
    // against on the frame the run ends on, and there is no move after it. The
    // header is the thing that re-measures here, so what the stale target is
    // short by is its 16px whatever the set is long.
    const held = new El("div");
    const ht = TableView.mount(held, view(300));
    const hs = held.querySelector(".tv-scroll");
    hs.clientHeight = 150;
    ht.select(ht.getVisible()[0].id);
    settle();
    for (let i = 0; i < 298; i++) { ht.selectStep(1); oneFrame(); }
    HEAD_PX = 40;
    ht.selectStep(1);
    settle();
    check("and so does a run of one move a frame",
          [hidden(hs, 300, 150), !!held.querySelector("tbody tr.tv-sel")], [0, true]);
    HEAD_PX = 24;
    global.requestAnimationFrame = realFrame;
  }

  // --- the tail is never under the hint bar
  // The hint is the scroller's next sibling, so ITS TOP IS THE FOLD and "the
  // last row is covered" is exactly "the content runs past the viewport at the
  // end of the travel". A row's box is fractional -- 13px/1.5, padding and a
  // hairline -- and a browser hands back a SNAPPED rect, so a viewport clamped
  // to `head + rows * one sampled rect' stops a fraction of a pixel per row
  // short: over a page of a hundred, twenty, which is the last row two thirds
  // under the bar. Run at a fractional row height, because at a whole one the
  // sample IS the height and there is nothing here to catch.
  {
    ROW_PX = 30.4;
    const port = 300;
    const tail = new El("div");
    const tt = TableView.mount(tail, view(250), { pageSize: 100, palette: true });
    const ts = tail.querySelector(".tv-scroll");
    ts.clientHeight = port;
    // The worst case for the strip, which is what glance shows: crumbs from a
    // drill-down and live filter chips, the order among them as its own tokens.
    tt.pushCrumb({ label: "inbox", query: "q1" });
    tt.pushCrumb({ label: "2026", query: "q2" });
    probe(tail, tt).commit("2026 sort:state sort:scheduled:desc");
    await sleep(50);
    check("the strip is populated — crumbs, and the applied tokens with them",
          [tail.querySelectorAll(".tv-chip-muted").length,
           tail.querySelectorAll(".tv-chip[data-i]").length,
           sortMarks(tail)],
          [2, 3, ["State▲¹", "Scheduled▼²"]]);

    /**
     * How much of the page's last row falls past the fold, in whole pixels:
     * the scroller's own content less the travel and the port. Positive is the
     * row hanging under the hint bar, negative is the viewport run on past the
     * rows; zero is its foot ON the fold, which is what the clamp is for. Read
     * off the CONTENT rather than off `head + rows * ROW_PX', because the
     * spacers are sized in `geom.row' and the drawn rows are not — which is the
     * very gap this is about.
     */
    const pastFold = () => Math.round(trueHeight(ts) - (ts.scrollTop + port));

    /** Walk to the end of what is on show and answer where the tail landed. */
    const toTail = async () => {
      const on = tt.getVisible();
      tt.select(on[on.length - 1].id);
      await sleep(400);
      return pastFold();
    };

    check("page one's last row ends on the fold, not under the hint",
          await toTail(), 0);
    tt.nextPage();
    check("and page two's", await toTail(), 0);
    tt.nextPage();
    check("and the last page's, which is a partial one", await toTail(), 0);

    // Continuous: the seam turns the window over the WHOLE set, so the travel
    // is 250 rows rather than 100 and the same clamp has to hold over it.
    tt.previousPage(); tt.previousPage();
    tt.select(tt.getVisible()[99].id);
    await sleep(400);
    tt.selectStep(1);                         // across the seam, into continuous
    await sleep(400);
    while (tt.selectStep(1)) ;                // to the last row of the set
    await sleep(600);
    check("and in continuous the end of the whole set does the same",
          [pastFold(), !!tail.querySelector("tbody tr.tv-sel")], [0, true]);

    // A viewport that will not take the step it is given: a browser at its own
    // end, where `scrollHeight' is rounded over content that is not. The ease
    // has to read that as an arrival, or it runs a frame loop for as long as
    // the page is open.
    const stuck = new El("div");
    const st = TableView.mount(stuck, view(250), { pageSize: 100 });
    const ss = stuck.querySelector(".tv-scroll");
    ss.clientHeight = port;
    let at = 0, refused = 0;
    Object.defineProperty(ss, "scrollTop", {
      configurable: true,
      get() { return at; },
      set(v) { if (v > 40) refused++; else at = v; },   // clamped forty in
    });
    st.select(st.getVisible()[99].id);
    await sleep(500);
    const settled = refused;
    await sleep(300);
    check("an ease against a clamp ends rather than running for ever",
          [refused > 0, refused - settled], [true, 0]);
    ROW_PX = 30;
  }
}

measure()
  .then(smoke)
  .then(() => {
    console.log(fails ? "\n" + fails + " FAILED" : "\nall ok");
    process.exit(fails ? 1 : 0);
  })
  .catch((e) => { console.error(e); process.exit(2); });

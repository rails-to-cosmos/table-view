/* Renderer contract: ../SCHEMA.md; interaction rules: ../docs/web-renderer.org.
 * Cell-ground selection avoids overlay geometry drift.
 */
// @ts-check

/**
 * @typedef {string|number|null} Cell  A cell value; null/missing render as "".
 * @typedef {{ value: string, color: string }} Badge
 * @typedef {{ module: string, symbol: string }} TypeSource
 * @typedef {{ name: string, source?: TypeSource, proposed?: boolean }} ValueType
 * @typedef {{ key: string,
 *             header?: string,
 *             type?: "text"|"number"|"badge",
 *             align?: "left"|"right",
 *             sortable?: boolean,
 *             badges?: Badge[],
 *             values?: string[],
 *             multi?: boolean,
 *             editable?: boolean,
 *             compare?: string,
 *             valueType?: ValueType }} Column
 * @typedef {{ key?: string, command: string, label?: string }} Action
 * @typedef {{ column: string, ascending?: boolean, direction?: string,
 *             nullsFirst?: boolean }} Sort
 * @typedef {{ column: string, ascending: boolean, nullsFirst: boolean }} SortKey
 * @typedef {{ id: string, cells?: Record<string, Cell>, linked?: boolean,
 *             producer?: boolean, under?: string|null,
 *             refused?: string }} Row
 * @typedef {{ name: string, query?: string }} SavedView
 * @typedef {{ title?: string,
 *             columns: Column[],
 *             actions?: Action[],
 *             sort?: Sort | Sort[],
 *             views?: SavedView[],
 *             rows?: Row[] }} View
 * @typedef {{ op: "insert", index: number, row: Row }
 *        | { op: "delete", index: number }
 *        | { op: "reset", rows: Row[] }} Op
 * @typedef {{ label: string, query: string }} Crumb
 * @typedef {{ id: string | null, col: number, key: string, value: string,
 *             raw: string, token: number }} OpenCell
 * @typedef {{ onAction?: (command: string, id: string, row: Row) => void,
 *             onLink?: (target: string, row: Row | null) => void,
 *             onFilter?: (q: string) => void,
 *             onFilterInput?: (value: string) => void,
 *             onEdit?: (id: string | null, col: number, value: string,
 *                       kind: "cell" | "header") => void,
     *             onCellKey?: (e: KeyboardEvent, cell: OpenCell) => boolean,
     *             onFilterKey?: (e: KeyboardEvent) => boolean,
 *             omnibox?: boolean,
 *             palette?: boolean,
 *             marks?: boolean,
 *             flags?: boolean,
 *             actionHints?: boolean,
 *             flagHelp?: string,
 *             pageSize?: number,
 *             initialQuery?: string,
 *             chipLabel?: (token: string) => string|null,
 *             composer?: boolean,
 *             inline?: boolean,
 *             filterDock?: "overlay"|"strip",
 *             onPin?: () => void,
 *             onRefused?: (token: string) => void,
 *             pinned?: boolean }} MountOptions
 * @typedef {{ el: HTMLElement,
 *             setView: (v: View) => void,
 *             setRows: (rows: Row[]) => void,
 *             upsertRow: (row: Row) => void,
 *             deleteRow: (id: string) => void,
 *             applyDelta: (ops: Op[]) => void,
 *             getRows: () => Row[],
 *             getVisible: () => Row[],
 *             fitColumns: () => void,
 *             select: (id: string, col?: number) => boolean,
 *             getSelection: () => { id: string|null, col: number|null },
 *             editCell: (id: string, col: number) => boolean,
 *             closeEditor: () => void,
 *             cellRect: (id: string, col: number) => DOMRect|null,
 *             getEditing: () => { id: string|null, col: number,
 *                                 key: string } | null,
 *             editHeader: (col: number) => boolean,
 *             getQuery: () => string,
 *             setCrumbs: (list: Crumb[]) => void,
 *             getCrumbs: () => Crumb[],
 *             setPinned: (on: boolean) => void,
 *             setQuery: (q: string) => void,
 *             pushCrumb: (c: Crumb) => number,
 *             popCrumb: () => Crumb|null,
 *             stripLastToken: () => boolean,
 *             filtering: () => boolean,
 *             destroy: () => void,
 *             openFilter: (how?: { narrow?: boolean }) => void,
 *             closeFilter: () => void,
 *             selectStep: (step: number) => boolean,
 *             nextPage: () => boolean,
 *             previousPage: () => boolean,
 *             pageInfo: () => { page: number, pages: number,
 *                               from: number, to: number, total: number },
 *             sortBy: (column: string, ascending: boolean) => void,
 *             sortPromote: (column: string) => boolean,
 *             getSort: () => SortKey[],
 *             setSort: (sort?: Sort|Sort[]|SortKey[]|null) => void,
 *             toggleMark: (id: string) => boolean,
 *             markAll: () => number,
 *             flagRow: (id: string) => boolean,
 *             unflagRow: (id: string) => void,
 *             getFlagged: () => string[],
 *             clearFlags: () => void,
 *             flaggedCount: () => number,
 *             getMarked: () => string[],
 *             clearMarks: () => void,
 *             markedCount: () => number }} Handle
 * @typedef {{ ids: Set<string>,
 *             shows: (id: string) => boolean,
 *             toggle: (id: string) => boolean,
 *             drop: (id: string) => void,
 *             addAll: (rows: Row[]) => number,
 *             clear: () => void,
 *             list: () => string[] }} RowState
 * @typedef {{ search: string, len: number[], cells: string[] }} RowText
 * @typedef {{ negated: boolean,
 *             added: boolean,
 *             key: string|null,
 *             value: string,
 *             quoted: boolean,
 *             start: number,
 *             end: number,
 *             sep: number }} Token  One filter-query token; see `parseQuery'.
 */

/** @param {*} root  The global object (`window`, or CommonJS `this`). */
(function (root) {
  "use strict";


  const esc = (s) =>
    String(s).replace(/[&<>"']/g, (c) =>
      ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c]));

  const ORG_LINK = /\[\[([^\]]+?)\](?:\[([^\]]*?)\])?\]/g;

  /** @param {Cell|undefined} val  @returns {string} */
  function displayText(val) {
    if (val === null || val === undefined) return "";
    let s = typeof val === "string" ? val : String(val);
    if (s.indexOf("[[") !== -1)
      s = s.replace(ORG_LINK, (_, target, desc) => desc || target);
    return s.replace(/[\u0000-\u001f\u007f]+/g, " ");
  }

  // badge ink (hue kept, lightness moved to WCAG AA): docs/web-renderer.org

  // Chrome reserves C-n/C-p; Firefox and webviews deliver them to the page.
  function swallowsCtrlN() {
    const ua = typeof navigator === "object" && navigator ? navigator.userAgent || "" : "";
    return /Chrom(e|ium)\//.test(ua) && !/Firefox|Electron\//.test(ua);
  }

  /**
   * @param {string} cell
   */
  function tagsIn(cell) { return cell.split(":").filter(Boolean); }

  const TAG_SEP = " · ";
  const TAG_MORE = "…";

  /** The characters TAGS take drawn, middots and all. @param {string[]} tags */
  function tagsWide(tags) {
    let n = 0;
    for (let i = 0; i < tags.length; i++) n += tags[i].length + (i ? TAG_SEP.length : 0);
    return n;
  }

  /**
   * @param {string[]} tags  @param {number} room  @returns {number}
   */
  function tagsFit(tags, room) {
    if (tagsWide(tags) <= room) return tags.length;
    let used = 0, kept = 0;
    for (const t of tags) {
      const w = used + (kept ? TAG_SEP.length : 0) + t.length;
      if (w + 1 + TAG_MORE.length > room) break;   // the mark rides a space behind
      used = w;
      kept++;
    }
    return kept;
  }

  const ORG_TAGS = /^:[^:]+(:[^:]+)*:$/;

  const HEX = /^#?([0-9a-f]{3}|[0-9a-f]{6})$/i;
  /** @param {string} hex  @returns {number[]|null} */
  function rgbOf(hex) {
    const m = HEX.exec(String(hex).trim());
    if (!m) return null;
    const h = m[1].length === 3 ? m[1].replace(/./g, (c) => c + c) : m[1];
    return [0, 2, 4].map((i) => parseInt(h.slice(i, i + 2), 16));
  }
  const channel = (c) => (c / 255 <= 0.03928 ? c / 255 / 12.92
                                             : Math.pow((c / 255 + 0.055) / 1.055, 2.4));
  /** WCAG relative luminance. @param {number[]} c */
  const luma = (c) => 0.2126 * channel(c[0]) + 0.7152 * channel(c[1]) + 0.0722 * channel(c[2]);
  /** WCAG contrast ratio. @param {number[]} a  @param {number[]} b */
  function contrast(a, b) {
    const x = luma(a) + 0.05, y = luma(b) + 0.05;
    return x > y ? x / y : y / x;
  }
  /** @param {number[]} a  @param {number[]} b  @param {number} t */
  const blend = (a, b, t) => a.map((v, i) => Math.round(v + (b[i] - v) * t));
  const hexOf = (c) => "#" + c.map((v) => v.toString(16).padStart(2, "0")).join("");

  /** @type {Map<string, string>} */
  const inkCache = new Map();

  /**
   * @param {string} color  @param {boolean} dark  @returns {string}
   */
  function inkFor(color, dark) {
    const key = color + (dark ? "|d" : "|l");
    const had = inkCache.get(key);
    if (had !== undefined) return had;
    const hue = rgbOf(color), ground = rgbOf(dark ? "#000000" : "#FFFFFF");
    let ink = color;
    if (hue && ground) {
      const pill = blend(ground, hue, 0.15);          // what the wash comes out as
      const toward = dark ? [255, 255, 255] : [0, 0, 0];
      let out = hue;
      for (let t = 0; t < 0.95 && contrast(out, pill) < 4.5; ) {
        t += 0.05;
        out = blend(hue, toward, t);
      }
      ink = hexOf(out);
    }
    inkCache.set(key, ink);
    return ink;
  }

  /** @param {Column} col  @param {Cell|undefined} val  @param {boolean} [dark]
   *  @param {number|null} [room]  Characters a MULTI-VALUED cell may draw in,
   *  @returns {string} */
  function cellHTML(col, val, dark, room) {
    if (room !== null && room !== undefined) {
      const raw = displayText(val);
      const tags = tagsIn(raw);
      if (!tags.length) return esc(raw);
      const kept = tagsFit(tags, room);
      return `<span class="tv-tags">`
           + tags.slice(0, kept).map((t) => `<span class="tv-tag">${esc(t)}</span>`).join(TAG_SEP)
           + (kept === tags.length ? "" : (kept ? " " : "") + TAG_MORE)
           + `</span>`;
    }
    if (col.type === "badge") {
      const raw = displayText(val);
      const badge = (col.badges || []).find((b) => b.value === raw);
      const color = badge && badge.color;
      if (color)
        return `<span class="tv-pill" style="--tv-badge:${esc(color)};`
             + `--tv-ink:${esc(inkFor(color, !!dark))}">${esc(raw)}</span>`;
      return esc(raw);
    }
    const s = typeof val === "string" ? val : displayText(val);
    let out = "", last = 0, m;
    ORG_LINK.lastIndex = 0;
    while ((m = ORG_LINK.exec(s))) {
      out += esc(s.slice(last, m.index).replace(/[\u0000-\u001f\u007f]+/g, " "));
      const target = m[1], desc = m[2] || m[1];
      out += `<a class="tv-link" href="#" data-target="${esc(target)}">${esc(desc)}</a>`;
      last = m.index + m[0].length;
    }
    out += esc(s.slice(last).replace(/[\u0000-\u001f\u007f]+/g, " "));
    return out;
  }

  // filter micro-syntax, exported as TableView.parseQuery: docs/web-renderer.org (mirrors SCHEMA.md)

  const isSep = (c) => c === "&" || c === " " || c === "\t" || c === "\n";

  /** The first `:' or `=' in S, or -1. @param {string} s */
  function splitAt(s) {
    const a = s.indexOf(":"), b = s.indexOf("=");
    return a === -1 ? b : (b === -1 ? a : Math.min(a, b));
  }

  const ALT = "|";

  /**
   * @param {string} value  @returns {string[]}
   */
  const alternatives = (value) => value.split(ALT).filter((v) => v !== "");

  /**
   * @param {string} q
   */
  function scanQuery(q) {
    const out = [];
    let start = 0, body = "", neg = false, add = false, quoted = false;
    let seen = false, hasBody = false, inQ = false, sep = -1;
    const flush = (end) => {
      if (seen) out.push({ start, end, body, negated: neg, added: add, quoted, sep });
      body = ""; neg = false; add = false; quoted = false; seen = false; hasBody = false; sep = -1;
    };
    for (let i = 0; i < q.length; i++) {
      const c = q[i];
      if (c === '"') {
        if (!seen) start = i;
        if (!hasBody) quoted = true;      // a token that opens with a quote is free text
        seen = hasBody = true;
        inQ = !inQ;
      } else if (!inQ && isSep(c)) {
        flush(i);
      // Only the first sign is syntax; later signs belong to the token body.
      } else if (!seen && (c === "-" || c === "+")) {
        start = i; seen = true;
        if (c === "-") neg = true; else add = true;
      } else {
        if (!seen) start = i;
        if (!inQ && !quoted && sep === -1 && (c === ":" || c === "=")) sep = i;
        body += c;
        seen = hasBody = true;
      }
    }
    flush(q.length);
    return out;
  }

  /**
   * @param {string} q  @param {string[]} keys  @returns {Token[]}
   */
  function parseQuery(q, keys) {
    const known = new Set(keys || []);
    return scanQuery(q).map((t) => {
      const at = t.quoted ? -1 : splitAt(t.body);
      const key = at > 0 ? t.body.slice(0, at) : null;
      const pred = key !== null && known.has(key);
      return {
        negated: t.negated,
        added: t.added,
        key: pred ? key : null,
        value: pred ? t.body.slice(at + 1) : t.body,
        quoted: t.quoted,
        start: t.start,
        end: t.end,
        sep: pred ? t.sep : -1,
      };
    });
  }

  /**
   * @param {Token} tok  @returns {string}
   */
  const signMark = (tok) => (tok.added ? "+" : tok.negated ? "-" : "");

  /** @param {Cell|undefined} v  @returns {number|null} */
  const asNumber = (v) => {
    const n = typeof v === "number" ? v : parseFloat(displayText(v));
    return Number.isNaN(n) ? null : n;
  };

  // metas are not sort positions: docs/web-renderer.org
  /** @param {Column} col  @returns {string[]|null} */
  function valueOrder(col) {
    const declared = col.values ? col.values.map(String).filter((v) => !META.test(v)) : null;
    if (declared && declared.length) return declared;
    if (col.type === "badge") return (col.badges || []).map((b) => String(b.value));
    return null;
  }

  const META = /^\*.+\*$/;

  const starless = (v) => (META.test(v) ? v.slice(1, -1) : v);

  const DECORATED = /^\[#(.*)\]$/;

  const undecorated = (v) => {
    const m = DECORATED.exec(v);
    return m ? m[1] : v;
  };

  const meant = (v) => undecorated(starless(v));
  const opensWith = (lower, p) => lower.startsWith(p) || meant(lower).startsWith(p);
  const spells = (lower, p) => lower === p || meant(lower) === p;

  const ACTIVE_META = "*active*";

  const EMPTY_META = "*empty*";

  // date comparisons (the value forms, the day words): docs/web-renderer.org

  const TODAY = "today";

  /**
   * @type {[string, number][]}
   */
  const DAY_WORDS = [[TODAY, 0], ["tomorrow", 1]];

  const DAY_WORD_LIST = DAY_WORDS.map((p) => p[0]);

  /**
   * @param {string} v  @param {boolean} onDate  @returns {boolean}
   */
  const reserved = (v, onDate) =>
    META.test(v) || (onDate && DAY_WORD_LIST.indexOf(v) !== -1);

  const TODAY_META = "*today*";

  const CMP_GE = ">=", CMP_LE = "<=", CMP_GT = ">", CMP_LT = "<";

  const CMPS = [CMP_GE, CMP_LE, CMP_GT, CMP_LT];

  const RANGE = "..";

  const DATE_LIT = /^\d/;

  // date shifts and the quoted spelling: docs/web-renderer.org

  const UNITS = ["d", "w", "m", "y"];

  const SHIFT_SIGNS = ["+", "-"];

  const UNIT_WORDS = [["days", "d"], ["day", "d"], ["weeks", "w"], ["week", "w"],
                      ["months", "m"], ["month", "m"], ["years", "y"], ["year", "y"]];

  const SHIFT = /([+-])(\d+)([dwmy])$/;

  const HALF_SHIFT = /\+\d*$/;

  const AC_SHIFT = /([+-])(\d+)$/;

  const DAY_LIT = /^(\d{4})-(\d{2})-(\d{2})$/;

  const DIGIT = /\d/;

  /**
   * @param {string} l
   * @returns {{base: string, n: number, unit: string}|null}
   */
  function shiftOf(l) {
    const m = SHIFT.exec(l);
    if (!m) return null;
    return { base: l.slice(0, m.index),
             n: Number(m[2]) * (m[1] === "-" ? -1 : 1), unit: m[3] };
  }

  /**
   * @param {string} l  @returns {boolean}
   */
  const halfShift = (l) => HALF_SHIFT.test(l);

  /**
   * @param {string} p  @returns {string|null}
   */
  function shiftBase(p) {
    if (p === "") return "";
    if (DAY_WORD_LIST.indexOf(p) !== -1) return p;
    if (p === TODAY_META) return TODAY;
    return validDay(p) ? p : null;
  }

  /**
   * @param {string} v  @returns {string}
   */
  function unspaced(v) {
    let out = "", last = "";
    for (let i = 0; i < v.length; i++) {
      const c = v[i];
      if (c === " " && !(DIGIT.test(last) && DIGIT.test(v[i + 1] || ""))) continue;
      out += c;
      last = c;
    }
    return out;
  }

  /**
   * @param {string} l  @returns {string}
   */
  function unitFolded(l) {
    for (const [word, letter] of UNIT_WORDS) {
      if (!l.endsWith(word)) continue;
      const short = l.slice(0, l.length - word.length) + letter;
      if (shiftOf(short)) return short;
    }
    return l;
  }

  /**
   * @param {string} v
   * @returns {{op: string, lo: string, hi: string}}
   */
  function dateValue(v) {
    const s = unspaced(v);
    for (const op of CMPS)
      if (s.startsWith(op)) return { op, lo: unitFolded(s.slice(op.length)), hi: "" };
    const at = s.indexOf(RANGE);
    if (at !== -1)
      return { op: RANGE, lo: unitFolded(s.slice(0, at)),
               hi: unitFolded(s.slice(at + RANGE.length)) };
    return { op: "", lo: unitFolded(s), hi: "" };
  }

  /**
   * @param {string} v  @returns {string}
   */
  function compacted(v) {
    const d = dateValue(v);
    return d.op === RANGE ? d.lo + RANGE + d.hi : d.op + d.lo;
  }

  /**
   * @param {(c: string) => boolean} p  @returns {(c: string) => boolean}
   */
  const dated = (p) => (c) => c !== "" && p(c);

  /**
   * @param {string} op  @param {string} d  @param {string} c  @returns {boolean}
   */
  function cmpTest(op, d, c) {
    if (op === CMP_LT) return c < d;
    if (op === CMP_GE) return c >= d;
    if (op === CMP_LE) return c < d || c.startsWith(d);
    if (op === CMP_GT) return c > d && !c.startsWith(d);
    return false;
  }

  /**
   * @param {Date} [now]  @returns {string}
   */
  function localDay(now) {
    const t = now || new Date();
    return `${t.getFullYear()}-${pad2(t.getMonth() + 1)}-${pad2(t.getDate())}`;
  }

  const pad2 = (n) => String(n).padStart(2, "0");

  const isoDay = (y, m, d) => `${String(y).padStart(4, "0")}-${pad2(m)}-${pad2(d)}`;

  const leapYear = (y) => (y % 4 === 0 && y % 100 !== 0) || y % 400 === 0;

  const MONTH_DAYS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  const lastDay = (y, m) => (m === 2 && leapYear(y) ? 29 : MONTH_DAYS[m - 1]);

  /**
   * @param {string} l  @returns {boolean}
   */
  function validDay(l) {
    const m = DAY_LIT.exec(l);
    if (!m) return false;
    const y = Number(m[1]), mo = Number(m[2]), d = Number(m[3]);
    return mo >= 1 && mo <= 12 && d >= 1 && d <= lastDay(y, mo);
  }

  /**
   * @param {string} base  @param {number} n  @param {string} unit
   * @returns {string}
   */
  function shiftDay(base, n, unit) {
    // UTC arithmetic avoids daylight-saving transitions adding or losing a day.
    const y = Number(base.slice(0, 4)), m = Number(base.slice(5, 7));
    const d = Number(base.slice(8, 10));
    if (unit === "d" || unit === "w") {
      const t = new Date(0);
      t.setUTCFullYear(y, m - 1, d);      // set whole: a two-digit year stays itself
      t.setUTCDate(t.getUTCDate() + n * (unit === "w" ? 7 : 1));
      return isoDay(t.getUTCFullYear(), t.getUTCMonth() + 1, t.getUTCDate());
    }
    const gm = y * 12 + (m - 1) + n * (unit === "y" ? 12 : 1);
    const ty = Math.floor(gm / 12), tm = gm - ty * 12 + 1;
    return isoDay(ty, tm, Math.min(d, lastDay(ty, tm)));
  }

  /**
   * @param {string} w  @param {string} today  @returns {string}
   */
  function dayWord(w, today) {
    for (const [word, off] of DAY_WORDS)
      if (w === word) return shiftDay(today, off, "d");
    return w === TODAY_META ? today : "";
  }

  /**
   * @param {string} base  @param {string} today  @returns {string}
   */
  const dayIn = (base, today) =>
    base === "" ? today : dayWord(base, today) || (validDay(base) ? base : "");

  /**
   * @param {string} l  @param {string} today  @returns {string}
   */
  function literalIn(l, today) {
    const s = shiftOf(l);
    if (!s) return dayWord(l, today) || l;
    const base = dayIn(s.base, today);
    return base ? shiftDay(base, s.n, s.unit) : "";
  }

  const PLANNED_KEY = "planned";

  const SUBSTRING_KEY = "substring";

  const SORT_KEY = "sort";

  const COLUMNS_KEY = "columns";

  const VIEW_KEY = "view";

  const VIEW_KEYS = [SORT_KEY, COLUMNS_KEY, VIEW_KEY];

  /**
   * @param {string|null} key  @returns {boolean}
   */
  const shapesView = (key) => key !== null && VIEW_KEYS.indexOf(key) !== -1;

  const SORT_DIRS = { "": true, asc: true, desc: false };

  const SORT_ARROW = "->";

  const NONE_META = "*none*";

  /**
   * @param {string} seg  @param {(k: string) => boolean} known
   * @returns {SortKey|null}
   */
  function sortKeyOf(seg, known) {
    if (seg.indexOf(ALT) !== -1) return null;
    const at = seg.indexOf(":");
    const column = at === -1 ? seg : seg.slice(0, at);
    const dir = at === -1 ? "" : seg.slice(at + 1).toLowerCase();
    if (!column || !known(column) || !(dir in SORT_DIRS)) return null;
    return { column, ascending: SORT_DIRS[dir], nullsFirst: false };
  }

  /**
   * @param {Token} tok  @returns {string[]}
   */
  function sortSegments(tok) {
    return tok.negated || tok.added ? [] : tok.value.split(SORT_ARROW);
  }

  /**
   * @param {string} q  @param {string[]} keys  @param {(k: string) => boolean} known
   * @returns {SortKey[]|null}
   */
  function sortsIn(q, keys, known) {
    /** @type {SortKey[]} */
    const chain = [];
    let none = false;
    for (const tok of parseQuery(q, keys)) {
      if (tok.key !== SORT_KEY) continue;
      for (const seg of sortSegments(tok)) {
        if (seg.toLowerCase() === NONE_META) { none = true; continue; }
        const k = sortKeyOf(seg, known);
        if (k && !chain.some((c) => c.column === k.column)) chain.push(k);
      }
    }
    if (chain.length) return chain;   // a key that resolves outranks `*none*'
    return none ? chain : null;       // the empty chain, or nothing said at all
  }

  /** KEY as the segment that spells it. @param {SortKey} key  @returns {string} */
  function sortSegment(key) {
    return `${key.column}${key.ascending ? "" : ":desc"}`;
  }

  /**
   * @param {SortKey[]} chain  @returns {string}
   */
  function sortToken(chain) {
    return SORT_KEY + ":" + chain.map(sortSegment).join(SORT_ARROW);
  }

  const SUPERS = "⁰¹²³⁴⁵⁶⁷⁸⁹";
  /** N in superscript. @param {number} n  @returns {string} */
  const superscript = (n) =>
    String(n).split("").map((d) => SUPERS[Number(d)] || d).join("");

  /**
   * @param {Column} col  @returns {string[]|null}
   */
  function domainValues(col) {
    const declared = col.values ? col.values.map(String) : null;
    const badges = col.type === "badge"
      ? (col.badges || []).map((b) => String(b.value)) : null;
    if (!declared) return badges;
    if (!badges) return declared;
    const named = new Set(declared.map((v) => v.toLowerCase()));
    return declared.concat(badges.filter((v) => !named.has(v.toLowerCase())));
  }

  /**
   * @param {Column} col  @returns {string[]}
   */
  function declaredMetas(col) {
    return (col.values || []).map(String).filter((v) => META.test(v));
  }

  /**
   * @param {Column} col
   * @returns {(a: Cell|undefined, b: Cell|undefined) => number}
   */
  function comparator(col) {
    const compare = col.compare;
    if (compare === "number" || compare === "numeric")
      return (a, b) => (asNumber(a) ?? Infinity) - (asNumber(b) ?? Infinity);
    if (compare === "natural" || compare === "version")
      return (a, b) =>
        displayText(a).localeCompare(displayText(b), undefined, { numeric: true });
    if (compare === "string" || compare === "text")
      return (a, b) => displayText(a).localeCompare(displayText(b));
    const order = valueOrder(col);
    if (order) {
      const pos = (v) => {
        const i = order.indexOf(displayText(v));
        return i === -1 ? order.length : i;
      };
      return (a, b) => pos(a) - pos(b);
    }
    if (col.type === "number")
      return (a, b) => (asNumber(a) ?? Infinity) - (asNumber(b) ?? Infinity);
    return (a, b) => displayText(a).localeCompare(displayText(b));
  }


  const OVERSCAN = 15;         // rows rendered above and below the viewport
  const SAMPLE = 40;           // non-empty cells a column's shape is read off
  const SHAPED = 2;            // of them that have to carry the shape
  const ROW_H = 30;            // row height until a rendered row can be measured
  const CELL_PAD = 24;         // a cell's horizontal padding, both sides
  // column geometry (a pill's ground is paid in pixels, +1px): docs/web-renderer.org
  const PILL_PAD = 17;         // a badge pill's ground, both sides, in px
  const BOX_CH = 3;            // the gutter's glyph, `[X]', in characters
  // column geometry (COL_MAX, TITLE_MIN): docs/web-renderer.org
  const COL_MAX_CH = 40;       // ceiling on a sized column, in characters
  const TITLE_MIN_CH = 40;     // the fill column's floor, in characters
  // whole-value truncation (why a tag cell is measured and cut in this unit): docs/web-renderer.org
  const TAG_EM = 0.92;         // the tag type's size, as a share of the table's
  const DEBOUNCE = 120;        // ms of quiet before a filter keystroke re-renders
  const SETTLE = 200;          // ms of quiet before the rows are taken to have settled
  const LONG_PRESS = 500;      // ms of a still finger before it means the row action
  const PRESS_SLOP = 10;       // px of drift that makes it a scroll instead
  const EASE = 0.3;            // fraction of the remaining scroll covered per frame
  const SNAP_PX = 0.5;         // closer than this and the ease is over
  const CRUMB_MAX = 4;         // crumb chips drawn before the oldest collapse

  /**
   * @param {string} cell  @returns {number}
   */
  function tagsCh(cell) {
    const tags = tagsIn(cell);
    return tags.length ? Math.ceil(tagsWide(tags) * TAG_EM) : cell.length;
  }

  /**
   *  written at — `tagsCh' read the other way. @param {number} ch */
  const tagRoom = (ch) => Math.floor(ch / TAG_EM);

  const idle = (cb) =>
    typeof requestIdleCallback === "function" ? requestIdleCallback(cb) : setTimeout(cb, 0);

  const frame = (cb) =>
    typeof requestAnimationFrame === "function" ? requestAnimationFrame(cb)
                                                : setTimeout(cb, 16);

  let styleInjected = false;
  function injectStyle() {
    if (styleInjected) return;
    styleInjected = true;
    // palette & contrast (identity consts): docs/web-renderer.org
    const FROST = "#D0E1F9";
    const FLAG = "#E74C3C";
    const WARN = "#FFA500";
    const COL = "#FFF3D0";
    const LINK_LIGHT = "#30739B";
    const LINK_DARK = "#7CC9F8";
    const POINT_LIGHT = "#005A8D";
    const POINT_DARK = "#FFC777";
    const css = `
/* Both palettes are the author's Emacs theme, mapped role for role from its
   default faces for dark, its light-* block for light. Three values are
   lightness-only adjustments where the theme's own colour missed a contrast
   floor in this context, the hue held: light muted #7F8C8D -> #667071 (3.5:1
   -> 5.1:1 on white) and light accent #4CB5F5 -> #31769F (2.3:1 -> 5.0:1 on
   white). --tv-link is that same operation on the accent itself, in both
   themes and measured against the grounds a ROW can wear rather than against
   the page (LINK_LIGHT and LINK_DARK above).
   The selected row takes the theme's own highlight (light-golden #FFD600),
   which a host may override like any other token -- the cursor row is one
   role and a consumer draws it in one hue wherever it appears.

   Borders are the exception and stay hairlines: they carry no information, so
   contrast is not a goal for them and a visible rule only adds noise. Light
   keeps the quiet #E3E6EA (1.25:1 on white) rather than the theme's #BDC3C7,
   and dark takes #2a2d3d over the theme's #223959 (1.54:1 against true black
   against 1.80:1) — the quieter of the two. Every rule is 1px. */
/* THE PALETTE IS A DEFAULT, at zero specificity (:where), so a host that
   themes this widget wins with an ordinary rule whatever order the two
   stylesheets land in -- this one is injected into <head> at mount time, which
   is after a served page's own. The custom properties ARE the theming API;
   these are the values a consumer who declares none gets. Everything below
   this block is layout and keeps its specificity. */
:where(.tv-root){
  --tv-fg:#000000;
  --tv-muted:#667071;
  --tv-bg:#FFFFFF;
  --tv-alt:#F8F8FF;
  --tv-border:#E3E6EA;
  --tv-accent:#31769F;
  --tv-sel:#FFD600;
  --tv-point:${POINT_LIGHT};
  --tv-hover:#FAFAFA;
  --tv-link:${LINK_LIGHT};
  --tv-frost:${FROST};
  --tv-chip-wash:45%;
  --tv-chip-edge:95%;
  --tv-mark-wash:8%;
  --tv-flag:${FLAG};
  --tv-flag-wash:8%;
  --tv-warn:${WARN};
  --tv-col:${COL};
  --tv-veil:#00000066;
  --tv-shadow:#00000033;
  --tv-col-wash:35%;
  --tv-sort-wash:52%;
  --tv-cols-wash:52%;
}
.tv-root{
  color:var(--tv-fg);
  background:var(--tv-bg);
  font:13px/1.5 ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;
  border:1px solid var(--tv-border);
  border-radius:8px;
  overflow:hidden;
  display:flex;
  flex-direction:column;
  max-height:100%;
}
@media (prefers-color-scheme:dark){
  :where(.tv-root){
    --tv-fg:#FFFFFF;
    --tv-muted:#A4C2EB;
    --tv-bg:#000000;
    --tv-alt:#21252B;
    --tv-border:#2a2d3d;
    --tv-accent:#4CB5F5;
    --tv-sel:#373D4F;
    --tv-point:${POINT_DARK};
    --tv-link:${LINK_DARK};
    --tv-hover:#1F1F1F;
    --tv-veil:#00000099;
    --tv-shadow:#00000077;
    --tv-chip-wash:18%;
    --tv-chip-edge:34%;
    --tv-mark-wash:30%;
    --tv-flag-wash:30%;
    --tv-col-wash:8%;
    --tv-sort-wash:18%;
    --tv-cols-wash:18%;
  }
}
:where(:root[data-theme="dark"] .tv-root){
  --tv-fg:#FFFFFF;
  --tv-muted:#A4C2EB;
  --tv-bg:#000000;
  --tv-alt:#21252B;
  --tv-border:#2a2d3d;
  --tv-accent:#4CB5F5;
  --tv-sel:#373D4F;
  --tv-point:${POINT_DARK};
  --tv-link:${LINK_DARK};
  --tv-hover:#1F1F1F;
  --tv-veil:#00000099;
  --tv-shadow:#00000077;
  --tv-chip-wash:18%;
  --tv-chip-edge:34%;
  --tv-mark-wash:30%;
  --tv-flag-wash:30%;
  --tv-col-wash:8%;
  --tv-sort-wash:18%;
  --tv-cols-wash:18%;
}
:where(:root[data-theme="light"] .tv-root){
  --tv-fg:#000000;
  --tv-muted:#667071;
  --tv-bg:#FFFFFF;
  --tv-alt:#F8F8FF;
  --tv-border:#E3E6EA;
  --tv-accent:#31769F;
  --tv-sel:#FFD600;
  --tv-point:${POINT_LIGHT};
  --tv-hover:#FAFAFA;
  --tv-link:${LINK_LIGHT};
  --tv-veil:#00000066;
  --tv-shadow:#00000033;
  --tv-chip-wash:45%;
  --tv-chip-edge:95%;
  --tv-mark-wash:8%;
  --tv-flag-wash:8%;
  --tv-col-wash:35%;
  --tv-sort-wash:52%;
  --tv-cols-wash:52%;
}
.tv-bar{
  display:flex;
  align-items:center;
  gap:10px;
  padding:8px 12px;
  border-bottom:1px solid var(--tv-border);
  flex-wrap:wrap;
}
.tv-title{
  font-weight:600;
  font-size:14px;
  margin-right:auto;
}
.tv-filter{
  font:inherit;
  padding:4px 8px;
  border:1px solid var(--tv-border);
  border-radius:6px;
  background:var(--tv-bg);
  color:var(--tv-fg);
  min-width:140px;
}
/* THE IN-CELL EDITOR fills the cell it stands in, its accent edge the one sign
   it is an input and not the drawn value. */
.tv-cell-edit{
  font:inherit;
  box-sizing:border-box;
  width:100%;
  padding:0;
  margin:0;
  border:none;
  outline:2px solid var(--tv-accent);
  outline-offset:-2px;
  background:var(--tv-bg);
  color:var(--tv-fg);
}
/* Quiet enough to be read past, not so quiet it cannot be read. Firefox dims
   placeholders on top of the colour, which is what the opacity is undoing. */
.tv-filter::placeholder{
  color:var(--tv-muted);
  opacity:1;
}
.tv-filter-wrap{
  position:relative;
  display:flex;
}
/* A LEADING NEGATION IS AN OPERATOR, not punctuation the reader has to decode.
   The input keeps the literal minus -- parsing, selection, completion and query
   delivery all continue to read the same bytes -- while this badge covers its
   glyph and leaves the caret at the operand.  Text and shape carry the meaning;
   the bad hue is confirmation rather than the only cue. */
.tv-filter-neg{
  display:none;
  position:absolute;
  z-index:2;
  inset:1px auto 1px 1px;
  width:43px;
  align-items:center;
  justify-content:center;
  border-right:1px solid var(--tv-flag);
  border-radius:5px 0 0 5px;
  background:color-mix(in srgb,var(--tv-flag) var(--tv-flag-wash),var(--tv-bg));
  color:var(--tv-fg);
  font-size:10px;
  font-weight:700;
  letter-spacing:.06em;
  pointer-events:none;
}
.tv-filter-wrap.tv-negating .tv-filter-neg{
  display:flex;
}
.tv-filter-wrap.tv-negating .tv-filter{
  padding-left:50px;
  text-indent:-1ch;
  border-color:var(--tv-flag);
}
/* Omnibox: the filter is the bar's one control, and it takes the width the
   title was holding. The dropdown hangs under the whole of it. */
.tv-omni .tv-bar{
  gap:8px;
  padding:10px 12px;
}
.tv-omni .tv-filter-wrap{
  flex:1 1 auto;
}
.tv-omni .tv-filter{
  flex:1 1 auto;
  font-size:15px;
  padding:7px 11px;
}
/* Its own row under the box, and no gap at all when nothing is applied. The
   suggestion list is positioned and z-indexed, so it lays over this rather
   than being pushed down by it. A SUMMONED mount's strip is the same strip
   however the box is docked — the row is there whether or not the box is. */
.tv-omni > .tv-chips,.tv-pal > .tv-chips,.tv-summon > .tv-chips{
  padding:8px 12px;
  border-bottom:1px solid var(--tv-border);
}
/* Palette: the control is summoned, not resident. The veil dims the page and
   the panel sits in the upper third, where a minibuffer or a Telescope prompt
   sits — near the eye rather than centred in it. 90/91 leaves 100/101 free for
   a consumer's own modal, so a materialize sheet still wins over this. */
.tv-veil{
  position:fixed;
  inset:0;
  z-index:90;
  background:var(--tv-veil);
  display:flex;
  justify-content:center;
  align-items:flex-start;
  padding-top:18vh;
}
.tv-panel{
  z-index:91;
  width:min(560px,80vw);
  padding:10px;
  border-radius:8px;
  background:var(--tv-alt);
  border:1px solid var(--tv-border);
  box-shadow:0 10px 30px var(--tv-shadow);
}
.tv-panel .tv-filter{
  font-size:15px;
  padding:7px 11px;
  width:100%;
}
/* The applied filter's identity: the theme's frost, washed over whatever the
   page's ground is, with ordinary foreground for ink. Why frost and why a wash
   rather than the solid it was: CHANGELOG, "chips are a frost wash".

   IT IS THE SUMMONED MOUNT'S, whichever dock the box landed in: where the box
   is away until it is called for, the strip is the only standing evidence of
   the query, and it is coloured to carry that. The picker declines all four
   voices — it sits in someone else's chrome, which owns the page's colour.
   ONE CLASS DEEP, every one of them: the .tv-chips .tv-chip-muted rule below
   is what keeps a crumb quiet, and a selector heavier than that one outranks
   it. */
.tv-pal .tv-chip,.tv-summon .tv-chip{
  color:var(--tv-fg);
  background:color-mix(in srgb,var(--tv-frost) var(--tv-chip-wash),transparent);
  border-color:color-mix(in srgb,var(--tv-frost) var(--tv-chip-edge),transparent);
}
/* An ORDERING's identity, washed the way the applied filter's is: the column
   band's own amber, which already means COLUMN everywhere else here — the
   crosshair, the selected band — and a sort token is about a column. The GROUND
   carries the whole difference: one silhouette, the same ink, the same × and
   the same hover, so ordering and narrowing are told apart by hue.

   The two washes are the same WEIGHT, sitting within a step of each other in
   distance from the page they are drawn on (light 24.7 against frost's 24.9,
   dark 73.6 against 71.2), so neither chip reads as the louder. Amber is the
   paler hue (luminance .899 against frost's .741), and the light theme's 52
   against the chip's 45 is what that costs; over black the two travel alike, so
   dark asks for the chip's own 18. The edge takes the chip's strength in either
   theme, a hairline carrying no information. Only a token this renderer ACCEPTS
   as sort wears it — "ordersRows" is that test. */
.tv-pal .tv-chip-sort,.tv-summon .tv-chip-sort{
  background:color-mix(in srgb,var(--tv-col) var(--tv-sort-wash),transparent);
  border-color:color-mix(in srgb,var(--tv-col) var(--tv-chip-edge),transparent);
}
/* THE ARROWS ARE DRAWN, not spelled. A chained sort chip carries "->" between
   its columns and the renderer's face is monospace, so a coding font with
   contextual alternates (JetBrains Mono, Fira Code, Cascadia) ligates the pair
   into one arrow and the chip reads as the chain it is. Asked for explicitly
   because it is a fact about this chip rather than a default to inherit: a page
   that turns ligatures off wholesale would otherwise turn this one off with
   them, and a face without the alternate loses nothing but the join. */
.tv-chip-sort{
  font-variant-ligatures:contextual;
}
/* THE COLUMNS CHIP WEARS THE LINK HUE — the third chip voice: frost is the
   applied filter, the column band is the order, and the accent-derived link
   colour marks the token that shapes what the table SHOWS. Same shape, same
   edge rule, same wash arithmetic as the sort chip, one hue over. Only a
   token that names at least one column wears it — "showsColumns" is that
   test — so the half-typed "columns:" keeps the ordinary chip. */
.tv-pal .tv-chip-cols,.tv-summon .tv-chip-cols{
  background:color-mix(in srgb,var(--tv-link) var(--tv-cols-wash),transparent);
  border-color:color-mix(in srgb,var(--tv-link) var(--tv-chip-edge),transparent);
}
/* THE SAVED-VIEW CHIP WEARS THE ACCENT — the fourth chip voice, and the token
   that names a whole view rather than shaping one. Same shape, same edge rule,
   same wash arithmetic as its two siblings, one hue over. Only a token naming a
   view the producer DECLARED wears it — "namesView" is that test — so a
   half-typed "view:" and a name nobody carries keep the ordinary chip. */
.tv-pal .tv-chip-view,.tv-summon .tv-chip-view{
  background:color-mix(in srgb,var(--tv-accent) var(--tv-cols-wash),transparent);
  border-color:color-mix(in srgb,var(--tv-accent) var(--tv-chip-edge),transparent);
}
.tv-pal .tv-chip:not(.tv-chip-muted):hover,
.tv-summon .tv-chip:not(.tv-chip-muted):hover{
  border-color:var(--tv-accent);
  color:var(--tv-accent);
}
.tv-chips{
  display:flex;
  flex-wrap:wrap;
  gap:5px;
  align-items:center;
}
/* One silhouette, spelled once, for every chip in the strip: a live filter
   token and a crumb. What each of them then respells is ink, ground and
   cursor. */
.tv-chip{
  display:inline-flex;
  align-items:center;
  gap:5px;
  padding:1px 4px 1px 8px;
  border-radius:999px;
  font-size:12px;
  cursor:pointer;
  color:var(--tv-fg);
  border:1px solid var(--tv-border);
  background:var(--tv-alt);
}
.tv-chip:not(.tv-chip-muted):hover{
  border-color:var(--tv-accent);
  color:var(--tv-accent);
}
/* The same operator face survives commit.  Its source token remains minus-led
   in the chip model; only the face drops the punctuation for a word a glance
   can read. */
.tv-pal .tv-chip-negated,.tv-summon .tv-chip-negated,.tv-chip-negated{
  background:color-mix(in srgb,var(--tv-flag) var(--tv-flag-wash),transparent);
  border-color:color-mix(in srgb,var(--tv-flag) var(--tv-chip-edge),transparent);
}
.tv-chip-neg{
  color:var(--tv-fg);
  font-size:9px;
  font-weight:700;
  letter-spacing:.05em;
}
/* A crumb: where the reader came FROM. Same silhouette and same edge as the
   live chip beside it, so the strip reads as one row: the rule respells no
   border at all, which leaves a crumb wearing whatever chip rule reaches it —
   frost-tinted inside the palette, the plain hairline outside it. The right
   padding goes back to the left's wherever the chip's padding is spelled, the
   remove mark being what a live chip is lopsided for. Inertness is carried by
   the cursor and by the hover rules declining to select a crumb, so hovering
   one moves nothing.

   Ink and ground are the whole difference: --tv-muted instead of the
   foreground, the page's own ground instead of the chip panel's. The ink is
   the floor that binds, as everywhere else here. --tv-muted is the tag ink and
   the ground is --tv-bg, which is what a transparent chip is drawn on in every
   mode, so it clears 4.5:1 in both themes (light 5.1, dark 11.5) while sitting
   quieter than a live chip's ink does on its own ground (19.9 and 15.4).
   Spelled with the row it lives in so it outranks the palette's own chip rule,
   the one other place a chip's ground is set.

   AND IT IS STRUCK THROUGH, because a crumb is a query that is NO LONGER IN
   FORCE: the mute alone says quiet, where the rule says the tokens under it
   are not narrowing anything on screen. A drill -- glance's shell binds it to
   the @ key -- leaves
   the whole query it came from standing in the strip, and a reader has to be
   able to tell it from the one that is applied at a glance. */
.tv-chips .tv-chip-muted{
  color:var(--tv-muted);
  background:transparent;
  cursor:default;
  padding-right:8px;
  text-decoration:line-through;
}
.tv-chip-x{
  font-style:normal;
  opacity:.55;
  padding:0 3px;
}
.tv-chip:hover .tv-chip-x{
  opacity:1;
}
/* The pin button-badge: far edge of the strip, dim until it is true. */
.tv-pin{
  cursor:pointer;
  opacity:.35;
  font-size:12px;
  line-height:1.4;
  user-select:none;
  filter:grayscale(1);
}
.tv-pin:hover{
  opacity:.7;
}
.tv-pin.tv-pinned{
  opacity:1;
  filter:none;
}
/* The suggestion list hangs under the box, over the table. .tv-root clips with
   overflow:hidden, so it scrolls internally rather than growing past it. */
.tv-ac{
  position:absolute;
  top:100%;
  left:0;
  min-width:100%;
  z-index:5;
  margin-top:2px;
  max-height:min(288px,40vh);
  overflow-y:auto;
  background:var(--tv-bg);
  border:1px solid var(--tv-border);
  border-radius:6px;
  box-shadow:0 4px 12px var(--tv-shadow);
}
.tv-ac-item{
  display:flex;
  justify-content:space-between;
  align-items:baseline;
  gap:14px;
  padding:3px 10px;
  white-space:nowrap;
  cursor:pointer;
  color:var(--tv-fg);
}
.tv-ac-n{
  color:var(--tv-muted);
  font-variant-numeric:tabular-nums;
}
/* An offer that is free text rather than a predicate says so where the counts
   are, in the ink the counts wear: it annotates the row, and no row carries
   both. */
.tv-ac-aside{
  color:var(--tv-muted);
}
/* A producer meta names a set only the producer can enumerate, and reads as
   the notation it is rather than as a value beside the concrete ones. */
.tv-ac-dim{
  opacity:.6;
  font-style:italic;
}
.tv-ac-note{
  padding:5px 10px;
  border-top:1px solid var(--tv-border);
  color:var(--tv-muted);
  font-size:11px;
  white-space:nowrap;
}
.tv-ac-item:hover{
  background:var(--tv-hover);
  color:var(--tv-accent);
}
/* The theme's own selections (ivy-current-match, company-tooltip-selection)
   are full-strength golden with bold weight and the default foreground — an
   accent-coloured label on that ground would be unreadable. */
.tv-ac-on{
  background:var(--tv-sel);
  color:var(--tv-fg);
  font-weight:600;
}
/* THE SCROLLER SCROLLS AND DRAWS NO BAR. The rows are driven by key and by
   wheel, so the bar is a stripe of chrome that carries nothing the header and
   the count do not already say — and a classic bar takes LAYOUT WIDTH, which
   the fill column then loses and the sideways scroll begins a bar's width
   early. Both spellings: Firefox reads the property, Chromium the pseudo. */
.tv-scroll{
  overflow:auto;
  position:relative;
  scrollbar-width:none;
}
.tv-scroll::-webkit-scrollbar{
  width:0;
  height:0;
}
/* THE DOCK: A SUMMONED BOX COMES ON THE CHIP STRIP'S OWN ROW, a grid row the
   two share — the chips take their width, the box takes the slack — rather than
   a second stripe of chrome over the table or an overlay across it. The row is
   the strip's whether or not the box is in it, so summoning moves nothing but
   the box appearing beside the chips: tv-typing is that summons, put on
   before the focus (display:none takes no keys) and taken off by the blur.
   Every mount that docks wears these, the tv-inline picker included. */
.tv-dock{
  display:grid;
  grid-template-columns:auto minmax(0,1fr) auto;
  align-items:center;
}
/* One hairline under the strip, and it is the scroller's own top edge. */
.tv-dock > .tv-chips{
  grid-area:1 / 1;
  border-bottom:none;
}
.tv-dock > .tv-chips:empty{
  display:none;
}
.tv-dock > .tv-bar{
  grid-area:1 / 2;
  display:none;
}
.tv-dock > .tv-pin{
  grid-area:1 / 3;
  margin-right:12px;
}
.tv-dock.tv-typing > .tv-bar{
  display:flex;
}
.tv-dock > .tv-scroll{
  grid-area:2 / 1 / 2 / -1;
  border-top:1px solid var(--tv-border);
}
/* THE HINT LINE IS THE THIRD ROW, spanning both columns. A picker has none, and
   a mount that keeps its page furniture has to say where this one goes: an
   auto-placed hint takes the first free cell, which carries its top edge across
   one column of the two. */
.tv-dock > .tv-hint{
  grid-area:3 / 1 / 3 / -1;
}
/* A DOCK OVER A WHOLE PAGE. The rows are named so the table takes the slack the
   strip and the hint line leave: under a max-height a grid sized by its content
   grows past the mount and is clipped, where the flex column this replaces
   shrank. The box then fills its half of the row, in the mount's own face and
   on the strip's own rhythm — a docked box is the page's control, and only the
   picker wants a small one. */
.tv-dock.tv-summon{
  grid-template-rows:auto minmax(0,1fr) auto;
}
/* THE ROW DOES NOT GROW WHEN THE BOX ARRIVES: the strip's own padding is the
   air the box is centred in, so the table under it does not jump 8px down on
   every summons. The right edge keeps the strip's rhythm; the left is the
   chips' own right padding, already there. */
.tv-dock.tv-summon > .tv-bar{
  padding:0 12px 0 0;
  border-bottom:none;
}
.tv-dock.tv-summon .tv-filter-wrap{
  flex:1 1 auto;
}
.tv-dock.tv-summon .tv-filter{
  flex:1 1 auto;
}
/* The row is centred, which the table declines: it takes the row it was given
   and scrolls inside it. */
.tv-dock.tv-summon > .tv-scroll{
  align-self:stretch;
  min-height:0;
}
/* INLINE: the host has already drawn the box, so the mount brings none of its
   own, caps its window and marks no order — a picker is chosen from, not sorted.
   ITS BOX IS SUMMONED, NOT RESIDENT, and the dock above is where it lands; what
   is left here is the compact furniture, the small face included. */
.tv-inline{
  border:none;
  border-radius:0;
}
.tv-inline .tv-scroll{
  max-height:calc(12 * 2.05em);
}
.tv-inline th .tv-arrow{
  display:none;
}
.tv-inline > .tv-chips{
  padding:5px 8px;
}
.tv-inline > .tv-bar{
  padding:5px 8px 5px 0;
}
.tv-inline .tv-filter{
  font-size:12px;
  padding:2px 6px;
}
.tv-table{
  border-collapse:collapse;
  width:100%;
}
/* THE TITLE COLUMN FILLS; EVERY OTHER COLUMN IS EXACTLY ITS CONTENT, AS IT WAS
   FITTED — once per view, and never from content after that. A draft typed into
   and a row arriving with a longer value both move 0px; a query change refits
   (fitColumns), and so does a window resize.
   table-layout:fixed is what makes that real. Under auto a col width is a hint
   and the browser hands the window's slack to every column in proportion, so
   the gutter and the date columns grew with the window while the one column
   whose text runs long stayed as narrow as the rest. Fixed makes the col
   widths authoritative and leaves the ONE column carrying no width — the
   title's — to take what the others left; it is also what lets text-overflow
   reach a cell at all. The table keeps a min-width, written by applyWidths, so
   a window narrower than the sized columns plus the title's floor scrolls
   sideways, which is what overflow:auto on the scroller already did. A view
   with no title column has nothing to fill with and keeps the auto layout. */
.tv-table.tv-fill{
  table-layout:fixed;
}
/* A capped column, and a title narrower than its own text, end in an ellipsis
   rather than spilling under the column beside them. The gutter stays out of
   it: its glyph is exactly its width, so a rounding hair would eat the ]. */
.tv-fill th:not(.tv-box),.tv-fill td:not(.tv-box){
  overflow:hidden;
  text-overflow:ellipsis;
}
/* A header never widens its column: the cells set the width and a longer
   header is squeezed into it. What gets squeezed is the
   WORD — the pair is a flex row, the word shrinks to an ellipsis (min-width:0
   is what lets a flex item go under its own text) and the mark declines to
   shrink at all, so a sorted column always still says which way it is sorted
   and where it sits in the chain. The row is a span inside the cell rather
   than the cell itself because display:flex on a table-cell stops it being
   one. Nothing here fires without .tv-fill: with no column to fill, the header
   is paid for in the width and there is nothing to squeeze. */
/* WHAT A READER SCANS IS THE COLUMN OF WORDS, not the column of grounds. A pill
   sets its text in from the cell edge by its own padding, so a badge column's
   HEADER is set in by the same amount and the first letters line up: State over
   TODO, # over [#A]. The mark keeps the right edge, the padding riding on the
   flex row rather than on the cell. */
.tv-fill th.tv-badge .tv-hd{
  padding-left:var(--tv-pill-pad, 8px);
}
.tv-fill th .tv-hd{
  display:flex;
  align-items:baseline;
  min-width:0;
}
.tv-fill th .tv-hn{
  overflow:hidden;
  text-overflow:ellipsis;
  min-width:0;
}
.tv-fill th .tv-arrow{
  flex:none;
}
.tv-hd.tv-typed{
  display:inline-flex;
  position:relative;
  padding-bottom:13px;
}
.tv-vt{
  position:absolute;
  right:0;
  bottom:0;
  left:0;
  overflow:hidden;
  color:var(--tv-muted);
  font-size:.75em;
  font-weight:400;
  line-height:1.15;
  text-align:left;
  text-overflow:ellipsis;
  white-space:nowrap;
}
.tv-fill th.tv-badge .tv-vt{
  left:var(--tv-pill-pad, 8px);
}
.tv-right .tv-vt{
  text-align:right;
}
/* A flex row does not take the cell's text-align, so the one alignment a
   column can declare is restated as the row's own. The CELLS are untouched —
   nothing made them flex — so this is the header catching up with them. */
.tv-fill th.tv-right .tv-hd{
  justify-content:flex-end;
}
/* The gutter's own measure and nothing over it: [X] is three characters, and
   24px is the cell padding both sides. The slack it used to carry was the auto
   layout's share of the window, which the fixed layout above no longer hands
   it. Written on the col because a cell's width is not what fixed layout
   reads, and for the same reason the coarse-pointer target below has to be
   restated here as a width — the min-width on the cell is inert under it. */
.tv-fill col.tv-gut{
  width:calc(3ch + 24px);
}
.tv-table th,.tv-table td{
  padding:5px 12px;
  text-align:left;
  white-space:nowrap;
  border-bottom:1px solid var(--tv-border);
}
/* AN EMPTY CELL STILL FORMS A LINE BOX. A td with no text has no inline
   content and collapses to its padding, so a row whose cells are all empty --
   a property just added, a record awaiting its first edit -- stood a third
   the height of its neighbours, and an overlay anchored to its rect squashed
   with it. A zero-width space costs nothing visible and holds the line. */
.tv-table td:empty::after{
  content:"\\200B";
}
.tv-table th{
  position:sticky;
  top:0;
  background:var(--tv-bg);
  font-weight:600;
  color:var(--tv-muted);
  user-select:none;
  z-index:1;
}
.tv-table th.tv-sortable{
  cursor:pointer;
}
.tv-table th.tv-sortable:hover{
  color:var(--tv-accent);
}
.tv-table td.tv-right,.tv-table th.tv-right{
  text-align:right;
  font-variant-numeric:tabular-nums;
}
.tv-table tbody tr.tv-alt{
  background:var(--tv-alt);
}
/* A marked row's ground: the muted ink washed over the page's. It REPLACES the
   zebra rather than layering over it — one background slot, and a mark outranks
   a stripe — and it is neither of the washes that already say something, frost
   being the applied filter and --tv-sel the cursor. The cursor's rule follows
   this one, so a row that is both reads as the cursor and keeps its checked
   box. Faint because the floor binds: the tag ink is --tv-muted too, so each
   theme washes only as far as that ink stays above 4.5:1 on it (light 4.6,
   dark 6.3). */
.tv-table tbody tr.tv-marked{
  background:color-mix(in srgb,var(--tv-muted) var(--tv-mark-wash),transparent);
}
/* A flagged row: the flag red washed over the page's ground, the same one-slot
   rule the mark follows. It sits between them in source order, which IS the
   precedence — cursor over flag over mark over zebra — because all four write
   the one background slot at the one specificity. Washed as far as the ink
   allows and no further, which for a colour this dark is not far on white:
   --tv-muted is the tag ink and the light strength is what keeps it above
   4.5:1 (4.6 at 8%, and under the floor by 10%). Dark has the room to take
   30%. The two numbers are measured, not chosen. */
.tv-table tbody tr.tv-flagged{
  background:color-mix(in srgb,var(--tv-flag) var(--tv-flag-wash),transparent);
}
.tv-table tbody tr.tv-sel{
  background:var(--tv-sel);
}
/* The background is one slot and the cursor wins it, so a flagged row under
   the cursor would otherwise stop saying it is flagged. The edge is a second
   channel that no other state writes: it survives every combination, which is
   what keeps the state readable rather than merely painted. */
.tv-table tbody tr.tv-flagged td:first-child{
  box-shadow:inset 3px 0 0 var(--tv-flag);
}
/* A PRODUCER'S OWN ROW SAYS SO IN THREE CHANNELS, hue being none of them on its
   own: the ACCENT EDGE down its left, the DASHED RULE fencing it off the rows it
   stands among, and GHOST INK -- muted and italic -- over the cells it was
   handed rather than typed. The cell grounds are cleared with it: the row is no
   data, so no wash that says something about a row may speak for it. */
.tv-table tbody tr.tv-producer>td{
  color:var(--tv-muted);
  font-style:italic;
  background-color:transparent;
  border-top:1px dashed var(--tv-border);
  border-bottom:1px dashed var(--tv-border);
}
.tv-table tbody tr.tv-producer>td:first-child{
  box-shadow:inset 3px 0 0 var(--tv-accent);
}
/* A badge it was handed is ghosted like the ink beside it; the pill's hue rides
   an inline custom property, so the dimming is all that is left to say it. */
.tv-table tbody tr.tv-producer .tv-pill{
  opacity:.6;
}
/* The open editor is the reader's own line and stands upright in the ghost. */
.tv-table tbody tr.tv-producer .tv-cell-edit{
  font-style:normal;
  color:var(--tv-fg);
}
/* A REFUSED ROW SAYS WHAT IT WANTS: the word leads the note in its last cell,
   and the two channels that fence the row off turn warn. */
.tv-table tbody tr.tv-producer.tv-refused>td{
  border-top-color:var(--tv-warn);
  border-bottom-color:var(--tv-warn);
}
.tv-table tbody tr.tv-producer.tv-refused>td:first-child{
  box-shadow:inset 3px 0 0 var(--tv-warn);
}
/* The gutter is chrome, the way the pager is: a fixed leading box that no
   producer sent and no width measurement sees. It is the CHECKBOX's alone —
   the flag's edge rides the row's FIRST cell whichever that is (the gutter
   under marks, the first data cell without them), so a mount that flags
   without marking pays no empty leading column.

   The checkbox is the MARKING table's alone, which is what .tv-marking on the
   root says. Blank header, org's own checkbox for a
   cell, and the box brightens on the rows it is checked on. The glyph is drawn
   from the row's class rather than written into the cell, so the state has one
   home: the class the row already carries. */
.tv-table th.tv-box,.tv-table td.tv-box{
  width:3ch;
  color:var(--tv-muted);
  user-select:none;
}
.tv-marking .tv-table td.tv-box{
  cursor:pointer;
}
.tv-marking .tv-table td.tv-box::before{
  content:"[ ]";
}
.tv-marking .tv-table tbody tr.tv-marked td.tv-box{
  color:var(--tv-fg);
}
.tv-marking .tv-table tbody tr.tv-marked td.tv-box::before{
  content:"[X]";
}
/* The selection is the row, and it crossfades in place — no overlay to keep in
   step with the rows underneath it. */
.tv-table tbody tr,.tv-table tbody td{
  transition:background-color .08s ease-out,
  box-shadow .08s ease-out;
}
.tv-calm .tv-table tbody tr,.tv-calm .tv-table tbody td{
  transition:none;
}
/* THE CURSOR IS A ROW AND A CELL WITHIN IT, and the rows carry nothing else.
   The cell is a 1px inset ring in --tv-point — the page's own point ink,
   #005A8D light and #FFC777 dark — over no ground at all: no radius, no
   border, the cell's own rect. The body draws no column band; tv-colsel is
   still stamped on every body cell of the column for tests and callers and
   dresses nothing.

   THE HEADER'S WASH IS THE COLUMN LOCATOR off the row: the amber mixed into
   the page's ground rather than laid over it, arrived at opaquely because the
   header is sticky and rows scroll under it. Its strength is measured against
   the grounds it can land on, a locator staying quieter than a state.

   THE CELL WRITES NO BACKGROUND SLOT, which is what makes it free of
   "one gold at a time" (docs/invariants.md): a ring cannot stack with the
   cursor row's gold, with the mark, flag or zebra washes, and it needs no
   contrast budget from the ground under it. The ground-on-ground cell this
   replaced had to be held at 9% in dark — one point more put the tag ink under
   4.5:1 on the cursor row — and the ring has no such ceiling. */
.tv-table th.tv-colsel{
  background:color-mix(in srgb,var(--tv-col) var(--tv-col-wash),var(--tv-bg));
}
.tv-table tbody td.tv-cell-sel{
  box-shadow:inset 0 0 0 1px var(--tv-point);
  background:transparent;
}
/* WHAT A LINK LOOKS LIKE, spelled once for the two places one is drawn: the
   anchor a cell's own Org markup produces, and the whole title cell of a row a
   producer marked linked. One declaration, so a title that is half markup and
   half plain words comes out ONE colour — it used to come out two, the markup
   in the accent and the words in body ink under a cell-wide underline.
   The only state on this table written in TEXT rather than in a ground: the
   four row washes and the two selection bands all write backgrounds, so this
   contests none of them and reads through every combination — a linked row
   under the cursor, with the column band across that very cell, is still a
   link. Which is what --tv-link is measured on: every one of those grounds,
   4.5:1 on all of them, rather than the page alone. */
.tv-link,.tv-table tbody td.tv-linked{
  color:var(--tv-link);
  text-decoration:underline;
  text-underline-offset:2px;
}
.tv-table tbody tr{
  cursor:default;
}
.tv-table tbody tr.tv-pad td{
  padding:0;
  border:0;
}
/* The third role, and the quietest: no box at all. A filled pill is a state, a
   frost chip is an applied filter, and a tag is small muted text — which is
   what a tag is, a word the row happens to carry. Several of them separate on a
   middot rather than on the colons the cell spells them with; the colons are
   the storage, not the reading. The ink is the muted one the palette already
   carries (dark #A4C2EB, light #667071), both clear of the text floor.
   THE SIZE IS TAG_EM, written from the const the width arithmetic spends: a
   run is measured and cut in this type, so the sheet and tagsCh cannot
   disagree about how much of a column a tag cell takes. */
.tv-tag,.tv-tags{
  color:var(--tv-muted);
  font-size:${TAG_EM}em;
}
.tv-tags .tv-tag{
  font-size:inherit;
  color:inherit;
}
/* never compound the two */
/* Shown in the form a query spells them, so what is read is what is typed: the
   value domain lowercases, and the tag key matches its value folded. Done in
   the stylesheet rather than in the markup, so the text a copy takes is the
   text the file holds. */
.tv-tag{
  text-transform:lowercase;
}
.tv-pill{
  display:inline-block;
  padding:0 var(--tv-pill-pad, 8px);
  border-radius:999px;
  font-weight:600;
  color:var(--tv-ink,var(--tv-badge));
  background:color-mix(in srgb,var(--tv-badge) 15%,transparent);
}
/* The order, written over the columns it orders. Every key of the chain marks
   its own header: the leading one in full ink because it is what the reader is
   reading by, the tie-breakers behind it dimmed to the muted floor, each
   wearing the place it holds in the chain. */
.tv-arrow{
  margin-left:4px;
  opacity:.55;
}
.tv-arrow.tv-lead{
  opacity:1;
}
.tv-ord{
  font-style:normal;
  font-size:.75em;
  vertical-align:baseline;
}
.tv-empty{
  padding:16px 12px;
  color:var(--tv-muted);
}
.tv-hint{
  padding:6px 12px;
  border-top:1px solid var(--tv-border);
  color:var(--tv-muted);
  font-size:12px;
}
/* A finger is not a pointer. Targets grow to the ~44px everyone settled on, and
   they grow by padding rather than by a set height, so the rows stay uniform
   and the measured row height carries the change into the windowing and the
   scroll arithmetic on its own. The filter reaches 16px because anything under
   it makes iOS zoom the page on focus. The chip's remove mark stops hiding
   behind a hover nobody can perform. */
@media (pointer:coarse){
  .tv-table th,.tv-table td{
    padding:12px;
  }
  .tv-table td.tv-box{
    min-width:44px;
  }
  .tv-fill col.tv-gut{
    width:max(calc(3ch + 24px),44px);
  }
  .tv-ac-item{
    padding:12px 12px;
  }
  .tv-chip{
    padding:13px 8px 13px 12px;
  }
  .tv-chips .tv-chip-muted{
    padding-right:12px;
  }
  .tv-chip-x{
    opacity:1;
    padding:0 8px;
  }
  .tv-filter,.tv-omni .tv-filter,.tv-panel .tv-filter{
    font-size:16px;
  }
}
.tv-key{
  color:var(--tv-fg);
  font-weight:600;
}
.tv-pg{
  color:var(--tv-accent);
  font-weight:600;
  cursor:pointer;
}
.tv-pg:hover{
  text-decoration:underline;
}
.tv-pg-off{
  color:var(--tv-muted);
  font-weight:400;
  cursor:default;
  text-decoration:none;
}
`;
    const el = document.createElement("style");
    el.textContent = css;
    document.head.appendChild(el);
  }

  /**
   * @param {Element} container
   * @param {View} view
   * @param {MountOptions} [opts]
   * @returns {Handle}
   */
  function mount(container, view, opts) {
    injectStyle();
    const o = opts || {};   // narrowing sticks in closures (a reassigned param would not)
    const composer = o.composer === true;
    const palette = o.palette === true;
    const inline = o.inline === true && !palette;
    /**
     * @type {"overlay"|"strip"|"none"}
     */
    const dock = o.filterDock === "overlay" || o.filterDock === "strip" ? o.filterDock
               : palette ? "overlay" : inline ? "strip" : "none";
    const summoned = dock !== "none" && !inline;
    const omnibox = o.omnibox === true || composer || inline;
    const marks = o.marks === true;
    const flags = o.flags === undefined ? marks : o.flags === true;
    const actionHints = o.actionHints !== false;   // absent means the legend shows
    const flagHelp = typeof o.flagHelp === "string" && o.flagHelp.trim()
      ? o.flagHelp.trim() : "";
    const flagHelpHTML = flagHelp.split("·").map((part) => {
      const t = part.trim();
      if (!t) return "";
      const at = t.indexOf(" ");
      return at === -1 ? `<b class="tv-key">${esc(t)}</b>`
        : `<b class="tv-key">${esc(t.slice(0, at))}</b> ${esc(t.slice(at + 1).trim())}`;
    }).filter(Boolean).join(" · ");
    /**
     * @type {((token: string) => string|null)|null}
     */
    const chipLabel = typeof o.chipLabel === "function" ? o.chipLabel : null;
    /**
     * @type {(() => void)|null}
     */
    const onPin = typeof o.onPin === "function" ? o.onPin : null;
    /**
     * @type {((token: string) => void)|null}
     */
    const onRefused = typeof o.onRefused === "function" ? o.onRefused : null;
    let pinned = !!o.pinned;
    const chrome = marks ? 1 : 0;
    const pageSize = Math.max(0, Math.trunc(Number(o.pageSize) || 0));
    let page = 0;
    let continuous = false;

    function darkNow() {
      const root$ = document.documentElement;
      const asked = root$ && root$.getAttribute ? root$.getAttribute("data-theme") : null;
      if (asked === "dark") return true;
      if (asked === "light") return false;
      return typeof matchMedia === "function"
          && matchMedia("(prefers-color-scheme: dark)").matches;
    }
    let dark = darkNow();
    /**
     * @type {{ view: View, rows: Row[], filter: string,
     *          selected: string|null, selCol: number|null, sortKeys: SortKey[] }}
     */
    const state = {
      view: view || { columns: [] },
      rows: (view && view.rows) ? view.rows.slice() : [],
      filter: "",
      selected: null,
      selCol: null,
      sortKeys: normalizeSort(view && view.sort),
    };

    const ownRows = () => state.rows.filter((r) => !standing(r));


    /** @type {Row[]|null} */
    let sorted = null;
    /** @type {Row[]|null} */
    let order = null;
    // sorted holds all rows; order applies the current filter.
    /**
     * @type {((r: Row) => boolean)|null}
     */
    let orderTest = null;
    /**
     * @type {((a: Row, b: Row) => number)|null}
     */
    let orderCmp = null;
    /**
     * @type {{ch: number, ground: number}[]|null}
     */
    let widths = null;
    let fitWait = 0;
    /** @type {Map<string, RowText>} */
    const texts = new Map();
    /**
     * @type {Map<string, {list: string[], counts: Map<string, number>}>}
     */
    const domains = new Map();

    /** Cached display data for row R. @param {Row} r  @returns {RowText} */
    function rowText(r) {
      let t = texts.get(r.id);
      if (!t) {
        const cols = columns(), cs = r.cells || {};
        const parts = new Array(cols.length), len = new Array(cols.length);
        for (let i = 0; i < cols.length; i++) {
          const s = displayText(cs[cols[i].key]);
          len[i] = s.length;
          parts[i] = s.toLowerCase();
        }
        t = { search: parts.join("\x1f"), len, cells: parts };
        texts.set(r.id, t);
      }
      return t;
    }

    function clearTexts() { texts.clear(); dropDomains(); }

    function dropDomains() {
      domains.clear();
      vocab = null;
      wordIndex = null;
      multiAt = undefined;
      dateAt = undefined;
      queueIndex();
    }

    let idleAt = 0, idleGen = 0;
    function queueIndex() {
      const mine = ++idleGen;          // anything already queued is now stale
      if (idleAt) clearTimeout(idleAt);
      idleAt = setTimeout(() => {
        idleAt = 0;
        idle(() => { if (mine === idleGen) titleIndex(); });
      }, SETTLE);
    }

    /**
     * @type {{list: string[], ids: Map<string, Set<string>>}|null}
     */
    let vocab = null;

    /**
     * @param {number} i
     * @param {(s: string) => boolean} shapedBy
     * @param {(s: string) => boolean} contraryTo
     */
    function sampledShape(i, shapedBy, contraryTo) {
      let shaped = 0, contrary = 0, seen = 0;
      for (const r of state.rows) {
        const cell = rowText(r).cells[i];
        if (!cell) continue;
        if (shapedBy(cell)) shaped++;
        else if (contraryTo(cell)) contrary++;
        if (++seen >= SAMPLE) break;
      }
      return shaped >= SHAPED && !contrary;
    }

    function multiColumn() {
      if (multiAt !== undefined) return multiAt;
      const cols = columns();
      multiAt = -1;
      const declared = cols.findIndex((c) => c.multi === true);
      if (declared !== -1) return (multiAt = declared);
      return (multiAt = cols.findIndex((_, i) => sampledShape(
        i, (s) => ORG_TAGS.test(s), (s) => s.indexOf(":") !== -1)));
    }
    /** @type {number|undefined} */
    let multiAt;

    function titleColumn() { return columns().findIndex((c) => c.key === "title"); }

    function tagVocab() {
      if (vocab) return vocab;
      const at = multiColumn();
      const ids = new Map();
      if (at !== -1)
        for (const r of state.rows) {
          if (!standing(r)) continue;   // a producer's own row is no data
          for (const tag of tagsIn(rowText(r).cells[at])) {
            const held = ids.get(tag);
            if (held) held.add(r.id); else ids.set(tag, new Set([r.id]));
          }
        }
      vocab = { list: Array.from(ids.keys()).sort(), ids };
      return vocab;
    }

    function dropOrder() { order = null; cancelEase(); }
    function dropSorted() { dropOrder(); sorted = null; orderCmp = null; }


    const calm = typeof matchMedia === "function"
              && matchMedia("(prefers-reduced-motion: reduce)").matches;

    const root = document.createElement("div");
    root.className = classAttr([["tv-root", true], ["tv-marking", marks],
                                ["tv-calm", calm], ["tv-omni", omnibox && !palette],
                                ["tv-pal", palette], ["tv-inline", inline],
                                ["tv-dock", dock === "strip"],
                                ["tv-summon", summoned]]);
    container.innerHTML = "";
    container.appendChild(root);

    const bar = document.createElement("div");
    bar.className = "tv-bar";
    const titleEl = document.createElement("span");
    titleEl.className = "tv-title";
    const input = document.createElement("input");
    input.className = "tv-filter";
    input.type = "search";
    input.setAttribute("aria-label", "Filter");
    const WHOLE_HINT = `key:value · status:open|closed · -word · "some phrase"`;
    const NARROW_HINT = `filter rows · ${WHOLE_HINT}`;
    input.placeholder = WHOLE_HINT;
    const chipsEl = document.createElement("div");
    chipsEl.className = "tv-chips";
    const pinEl = document.createElement("span");
    const filterWrap = document.createElement("div");
    filterWrap.className = "tv-filter-wrap";
    const filterNeg = document.createElement("span");
    filterNeg.className = "tv-filter-neg";
    filterNeg.textContent = "NOT";
    filterNeg.setAttribute("aria-hidden", "true");
    const acEl = document.createElement("div");
    acEl.className = "tv-ac";
    acEl.style.display = "none";
    filterWrap.appendChild(filterNeg);
    filterWrap.appendChild(input);
    filterWrap.appendChild(acEl);
    if (!omnibox && !summoned) { bar.appendChild(titleEl); bar.appendChild(chipsEl); }
    if (dock !== "overlay") bar.appendChild(filterWrap);

    const veil = document.createElement("div");
    veil.className = "tv-veil";
    veil.style.display = "none";
    const panel = document.createElement("div");
    panel.className = "tv-panel";
    if (dock === "overlay") {
      panel.appendChild(filterWrap);
      veil.appendChild(panel);
    }

    const scroll = document.createElement("div");
    scroll.className = "tv-scroll";
    const table = document.createElement("table");
    table.className = "tv-table";
    const colgroup = document.createElement("colgroup");
    const thead = document.createElement("thead");
    const headRow = document.createElement("tr");
    const tbody = document.createElement("tbody");
    thead.appendChild(headRow);
    table.appendChild(colgroup);
    table.appendChild(thead);
    table.appendChild(tbody);
    const empty = document.createElement("div");
    empty.className = "tv-empty";
    empty.textContent = "no rows";
    scroll.appendChild(table);
    scroll.appendChild(empty);
    const hint = document.createElement("div");
    hint.className = "tv-hint";

    const hasHint = !composer && !inline;
    if (omnibox || summoned) root.appendChild(chipsEl);
    if (dock !== "overlay") root.appendChild(bar);
    if (dock === "strip" && onPin) root.appendChild(pinEl);
    if (!composer) root.appendChild(scroll);
    if (hasHint) root.appendChild(hint);
    if (dock === "overlay") root.appendChild(veil);

    /** Per-column <col>, one per column. @type {HTMLElement[]} */
    let colEls = [];
    /** Per-column sort arrow, one per column. @type {HTMLElement[]} */
    let arrowEls = [];

    const geom = { row: ROW_H, head: ROW_H };
    /**
     * @type {{ first: number, last: number, rows: Row[] }}
     */
    const win = { first: -1, last: -1, rows: [] };
    let remeasuring = false;
    let selAt = -1;

    /**
     * @param {Sort|Sort[]|null} [sort]  falsy is the empty chain; a `SortKey'
     * @returns {SortKey[]}
     */
    function normalizeSort(sort) {
      if (!sort) return [];
      const list = Array.isArray(sort) ? sort : [sort];
      return list
        .filter((s) => s && s.column)
        .map((s) => {
          const dir = String(s.direction || "").toLowerCase();
          const desc = dir ? dir.slice(0, 4) === "desc" : s.ascending === false;
          return {
            column: s.column,
            ascending: !desc,
            nullsFirst: dir ? dir.indexOf("nulls-first") !== -1 : !!s.nullsFirst,
          };
        });
    }

    function columns() { return state.view.columns || []; }
    /**
     * @returns {{name: string, query?: string}[]}
     */
    function savedViews() { return state.view.views || []; }
    function actions() { return state.view.actions || []; }
    function colByKey(k) { return columns().find((c) => c.key === k); }
    /**
     *  gating the reader's gesture rather than the token. @param {string} k */
    const namesColumn = (k) => !!colByKey(k);


    /**
     * @returns {((a: Row, b: Row) => number)|null}
     */
    function chainComparator() {
      /** @type {{key: string, cmp: (a: Cell|undefined, b: Cell|undefined) => number, sign: number, nullsFirst: boolean}[]} */
      const keys = [];
      for (const sk of state.sortKeys) {
        const col = colByKey(sk.column);
        if (col)
          keys.push({
            key: sk.column,
            cmp: comparator(col),
            sign: sk.ascending ? 1 : -1,
            nullsFirst: !!sk.nullsFirst,
          });
      }
      if (!keys.length) return null;
      const rank = (k, a, b) => {
        const av = (a.cells || {})[k.key];
        const bv = (b.cells || {})[k.key];
        const ae = displayText(av) === "";
        const be = displayText(bv) === "";
        if (ae !== be) return (ae ? 1 : -1) * (k.nullsFirst ? -1 : 1);
        if (ae) return 0;
        return k.sign * k.cmp(av, bv);
      };
      if (keys.length === 1) return (a, b) => rank(keys[0], a, b);
      return (a, b) => {
        for (const k of keys) {
          const c = rank(k, a, b);
          if (c) return c;
        }
        return 0;
      };
    }

    /**
     * @returns {{key: SortKey, header: string}[]}
     */
    function sortChain() {
      const out = [];
      for (const k of state.sortKeys) {
        const col = colByKey(k.column);
        if (col) out.push({ key: k, header: String(col.header || col.key) });
      }
      return out;
    }

    function sortText() {
      return sortChain()
        .map(({ key }) => `${key.column} ${key.ascending ? "asc" : "desc"}`
                        + (key.nullsFirst ? " nulls-first" : ""))
        .join(" → ");
    }

    const columnKeys = () => columns().map((c) => c.key);

    function queryKeys() {
      const keys = columnKeys();
      for (const k of [PLANNED_KEY, SUBSTRING_KEY])
        if (keys.indexOf(k) === -1) keys.push(k);
      for (const k of VIEW_KEYS) if (keys.indexOf(k) === -1) keys.push(k);
      return keys;
    }

    /**
     * @returns {string[]}
     */
    function offeredKeys() {
      return narrowing ? queryKeys().filter((k) => !shapesView(k)) : queryKeys();
    }

    /**
     * @param {string} q  @returns {SortKey[]}
     */
    function chainFor(q) {
      const named = sortsIn(q, queryKeys(), namesColumn);
      return named === null ? stated : named;
    }

    /**
     * @type {SortKey[]}
     */
    let stated = state.sortKeys;

    const DATEISH = /^\d{4}-\d{2}(-\d{2})?([ T]\d{2}:\d{2})?$/;
    const COULD_BE_DATE = /^[<[]?\d/;

    /**
     * @param {number} i
     */
    function dateColumn(i) {
      return sampledShape(i, (s) => DATEISH.test(s), (s) => !COULD_BE_DATE.test(s));
    }

    /**
     * @returns {number[]}
     */
    function dateColumns() {
      if (dateAt !== undefined) return dateAt;
      dateAt = [];
      for (let i = 0; i < columns().length; i++) if (dateColumn(i)) dateAt.push(i);
      return dateAt;
    }
    /** @type {number[]|undefined} */
    let dateAt;

    let compiledDay = localDay();

    /**
     * @param {string} key  @returns {boolean}
     */
    function datedKey(key) {
      const cells = fieldCells(key);
      const dc = dateColumns();
      return !!cells && cells.length > 0 && cells.every((i) => dc.indexOf(i) !== -1);
    }

    /**
     * @param {string} key  @param {string} value  @returns {string[]}
     */
    function atomsIn(key, value) {
      const alts = alternatives(value);
      if (!datedKey(key)) return alts;
      return alts.map(compacted).filter((v) => {
        const d = dateValue(v);
        const owed = d.lo !== "" && (d.op !== RANGE || d.hi !== "");
        return owed && !halfShift(d.lo) && !halfShift(d.hi);
      });
    }

    /**
     * @param {Token} tok  @returns {string[]}
     */
    function atomsOf(tok) {
      return tok.key === null ? (tok.value ? [tok.value] : [])
                              : atomsIn(tok.key, tok.value.toLowerCase());
    }

    /**
     * @param {Token} tok  @param {string[]} atoms  @returns {boolean}
     */
    function vacuousHere(tok, atoms) {
      return !tok.negated && atoms.length === 0;
    }

    /**
     * @param {Token} tok  @param {string[]} atoms  @returns {(r: Row) => boolean}
     */
    function tokenTest(tok, atoms) {
      // filter grammar (tokenTest, metas): docs/web-renderer.org — mirrors SCHEMA.md
      if (tok.key === null) return freeTest(tok.value.toLowerCase());
      const key = tok.key;
      if (!atoms.length) return () => true;        // half-typed: narrows nothing
      if (atoms.length === 1) return valueTest(key, atoms[0]);
      const tests = atoms.map((v) => valueTest(key, v));
      return (r) => {
        for (const t of tests) if (t(r)) return true;
        return false;
      };
    }

    function freeTest(v) {
      return v ? (r) => rowText(r).search.includes(v) : () => true;
    }

    /**
     * @param {string} key  @returns {number[]|null}
     */
    function fieldCells(key) {
      const col = colByKey(key);
      if (col) return [columns().indexOf(col)];
      return key === PLANNED_KEY ? dateColumns() : null;
    }

    /**
     * @param {string} key  @param {string} v  @returns {(r: Row) => boolean}
     */
    function valueTest(key, v) {
      if (key === SUBSTRING_KEY && !colByKey(key)) return freeTest(v);
      const cells = fieldCells(key);
      if (!cells) return () => true;             // no such key: narrows nothing
      if (v === EMPTY_META) return (r) => cells.every((i) => rowText(r).cells[i] === "");
      const tests = cells.map((i) => cellTest(i, v));
      if (tests.length === 1) return tests[0];
      return (r) => {
        for (const t of tests) if (t(r)) return true;
        return false;
      };
    }

    /**
     * type. @param {number} i  @param {string} v  @returns {(r: Row) => boolean}
     */
    function cellTest(i, v) {
      const col = columns()[i];
      if (i === multiColumn() && META.test(v)) {
        const want = starless(v);
        return (r) => tagsIn(rowText(r).cells[i]).indexOf(want) !== -1;
      }
      if (col && col.type === "badge") {
        if (v === ACTIVE_META) return (r) => rowText(r).cells[i] === "";
        const want = undecorated(v), worn = `[#${want}]`;
        return (r) => { const c = rowText(r).cells[i]; return c === want || c === worn; };
      }
      if (dateColumn(i)) return stampTest(i, v);
      return (r) => rowText(r).cells[i].includes(v);
    }

    /**
     * @param {number} i  @param {string} v  @returns {(r: Row) => boolean}
     */
    function stampTest(i, v) {
      const d = dateValue(v);
      const lo = literalIn(d.lo, compiledDay), hi = literalIn(d.hi, compiledDay);
      if (lo === "") return () => false;
      if (d.op === "") return (r) => rowText(r).cells[i].startsWith(lo);
      if (!DATE_LIT.test(lo)) return () => false;
      if (d.op === RANGE && !DATE_LIT.test(hi)) return () => false;
      const holds = d.op === RANGE
        ? dated((c) => cmpTest(CMP_GE, lo, c) && cmpTest(CMP_LE, hi, c))
        : dated((c) => cmpTest(d.op, lo, c));
      return (r) => holds(rowText(r).cells[i]);
    }

    /**
     * @param {{base: ((r: Row) => boolean)[], wide: ((r: Row) => boolean)[]}} ax
     * @returns {(r: Row) => boolean}
     */
    function axisTest(ax) {
      const base = ax.base, wide = ax.wide;
      /** @param {Row} r */
      const every = (r) => { for (const t of base) if (!t(r)) return false; return true; };
      if (!wide.length) return base.length === 1 ? base[0] : every;   // an unwidened axis: one AND
      const some = base.length > 0;
      return (r) => {
        if (some && every(r)) return true;
        for (const t of wide) if (t(r)) return true;
        return false;
      };
    }

    /**
     * @param {string} q  @returns {((r: Row) => boolean)|null}
     */
    function queryMatcher(q) {
      /** @type {Map<string, {base: ((r: Row) => boolean)[], wide: ((r: Row) => boolean)[]}>} */
      const axes = new Map();
      compiledDay = localDay();   // one clock read, before any row
      for (const tok of parseQuery(q, queryKeys())) {
        if (tok.key && VIEW_KEYS.indexOf(tok.key) !== -1) continue;
        const atoms = atomsOf(tok);
        if (vacuousHere(tok, atoms)) continue;
        const key = tok.key === null ? SUBSTRING_KEY : tok.key;
        let ax = axes.get(key);
        if (!ax) { ax = { base: [], wide: [] }; axes.set(key, ax); }
        const test = tokenTest(tok, atoms);
        if (tok.added) ax.wide.push(test);
        else ax.base.push(tok.negated ? (r) => !test(r) : test);
      }
      /** @type {((r: Row) => boolean)[]} */
      const musts = [];
      for (const ax of axes.values()) musts.push(axisTest(ax));
      if (!musts.length) return null;
      if (musts.length === 1) return musts[0];
      return (r) => {
        for (const t of musts) if (!t(r)) return false;
        return true;
      };
    }

    /**
     * @param {Row[]} arr
     */
    function placeProducers(arr) {
      for (const p of ownRows()) {
        const was = arr.indexOf(p);
        if (was !== -1) arr.splice(was, 1);
        const at = p.under === null || p.under === undefined
          ? -1 : arr.findIndex((r) => r.id === p.under);
        arr.splice(at + 1, 0, p);
      }
    }

    /**
     * order may carry it off the row it stands under. @returns {Row[]} */
    function ordered() {
      if (order) return order;
      if (!sorted) {
        orderCmp = chainComparator();
        sorted = state.rows.slice();     // never sort the store itself
        if (orderCmp) sorted.sort(orderCmp);
        placeProducers(sorted);
      }
      orderTest = queryMatcher(state.filter);
      order = orderTest ? sorted.filter((r) => !standing(r) || orderTest(r))
                        : sorted.slice();
      return order;
    }

    function pageCount() {
      return pageSize ? Math.max(1, Math.ceil(ordered().length / pageSize)) : 1;
    }

    function paged() {
      const rows = ordered();
      if (!pageSize || continuous) return rows;
      if (page >= pageCount()) page = pageCount() - 1;   // the set shrank under it
      const at = page * pageSize;
      return rows.slice(at, at + pageSize);
    }

    function cursorPage() {
      if (!pageSize) return 0;
      if (!continuous) return Math.min(page, pageCount() - 1);
      const i = state.selected === null
        ? -1 : ordered().findIndex((r) => r.id === state.selected);
      return i === -1 ? Math.min(page, pageCount() - 1) : Math.floor(i / pageSize);
    }

    /**
     * @returns {Row[]}
     */
    function shownRows() {
      const rows = ordered();
      if (!pageSize || !continuous) return paged();
      const at = cursorPage() * pageSize;
      return rows.slice(at, at + pageSize);
    }

    function goContinuous() {
      if (!pageSize || continuous) return;
      const skipped = page * pageSize;
      continuous = true;
      scroll.scrollTop += skipped * geom.row;
      if (selAt >= 0) selAt += skipped;
    }

    /** Whether ROW passes the current filter. @param {Row} r */
    function matches(r) { return !orderTest || orderTest(r); }

    /**
     * @returns {{ch: number, ground: number}[]}
     */
    function colWidths() {
      if (widths) return widths;
      const cols = columns(), chain = sortChain(), fill = titleColumn() !== -1;
      const multi = multiColumn(), rows = ordered();
      const cell = cols.map(() => 0);
      for (const r of rows) {
        const t = rowText(r);
        for (let i = 0; i < cell.length; i++) {
          const n = i === multi ? tagsCh(t.cells[i]) : t.len[i];
          if (n > cell[i]) cell[i] = n;
        }
      }
      const fitted = cols.map((c, i) => {
        const at = chain.findIndex(({ key }) => key.column === c.key);
        // column geometry (header marks paid outside the cells' measure): docs/web-renderer.org
        const mark = at === -1 ? 0 : sortMark(chain, at).length + 1;
        const head = String(c.header || c.key).length;
        const pill = c.type === "badge" && cell[i] ? PILL_PAD : 0;
        return { ch: fill ? (cell[i] || head) + mark
                          : Math.max(head + mark, cell[i]),
                 ground: CELL_PAD + pill };
      });
      if (rows.length) widths = fitted;
      return fitted;
    }

    function fitColumns() { widths = null; repaint(true); }

    /**
     * @returns {number}
     */
    function tagsRoom() {
      const at = multiColumn();
      if (at === -1 || titleColumn() === -1) return Infinity;
      return tagRoom(Math.min(colWidths()[at].ch, COL_MAX_CH));
    }

    function applyWidths() {
      const w = colWidths(), at = titleColumn(), fill = at !== -1;
      if (table.classList.contains("tv-fill") !== fill)
        table.classList.toggle("tv-fill", fill);
      let ch = fill ? Math.min(w[at].ch, TITLE_MIN_CH) : 0;
      let pad = fill ? w[at].ground : 0;
      if (fill && chrome) { ch += BOX_CH; pad += CELL_PAD; }
      for (let i = 0; i < colEls.length; i++) {
        const n = fill ? Math.min(w[i].ch, COL_MAX_CH) : w[i].ch;
        const px = fill && i === at ? "" : `calc(${n}ch + ${w[i].ground}px)`;
        if (fill && i !== at) { ch += n; pad += w[i].ground; }
        if (colEls[i].style.width !== px) colEls[i].style.width = px;
      }
      const min = fill ? `calc(${ch}ch + ${pad}px)` : "";
      if (table.style.minWidth !== min) table.style.minWidth = min;
    }


    function renderHead() {
      colgroup.innerHTML = "";
      headRow.innerHTML = "";
      colEls = [];
      arrowEls = [];
      if (chrome) {
        // The gutter is excluded so column widths and sort arrows keep their indices.
        const gut = document.createElement("col");
        gut.className = "tv-gut";   // pinned to the glyph's measure by the sheet
        colgroup.appendChild(gut);
        const box = document.createElement("th");
        box.className = "tv-box";      // blank: the count is the hint line's
        headRow.appendChild(box);
      }
      for (const c of columns()) {
        const col = document.createElement("col");
        colgroup.appendChild(col);
        colEls.push(col);

        const th = document.createElement("th");
        th.className = (c.sortable === true ? "tv-sortable" : "")
          + (c.align === "right" ? " tv-right" : "")
          + (c.type === "badge" ? " tv-badge" : "");
        th.dataset.key = c.key;
        const hd = document.createElement("span");
        hd.className = "tv-hd";
        const label = document.createElement("span");
        label.className = "tv-hn";
        label.textContent = String(c.header || c.key);
        const arrow = document.createElement("span");
        arrow.className = "tv-arrow";
        hd.appendChild(label);
        hd.appendChild(arrow);
        if (c.valueType && c.valueType.name) {
          const vt = document.createElement("span");
          const source = c.valueType.source;
          const ref = source ? `${source.module}.${source.symbol}` : "proposed type";
          vt.className = "tv-vt";
          vt.textContent = `:: ${c.valueType.name}`;
          vt.title = `${c.valueType.name} — ${ref}`;
          hd.classList.add("tv-typed");
          hd.appendChild(vt);
        }
        th.appendChild(hd);
        headRow.appendChild(th);
        arrowEls.push(arrow);
      }
      renderArrows();
      applyWidths();          // the colgroup is new; the widths are not on it
    }

    /**
     * @param {{key: SortKey, header: string}[]} chain  @param {number} at
     */
    const sortMark = (chain, at) =>
      (chain[at].key.ascending ? "▲" : "▼")
        + (chain.length > 1 ? superscript(at + 1) : "");

    function renderArrows() {
      const chain = sortChain(), cols = columns();
      for (let i = 0; i < arrowEls.length; i++) {
        const at = chain.findIndex(({ key }) => key.column === cols[i].key);
        const mark = at === -1 ? "" : sortMark(chain, at);
        arrowEls[i].innerHTML = mark.length < 2 ? mark
          : mark[0] + `<i class="tv-ord">${mark.slice(1)}</i>`;
        arrowEls[i].className = "tv-arrow" + (at === 0 ? " tv-lead" : "");
        arrowEls[i].style.display = at === -1 ? "none" : "";  // no empty arrow's margin
      }
    }



    /**
     * @param {Row} r
     */
    function linkedCell(r) { return r.linked ? titleColumn() : -1; }

    /**
     * @param {Row} r */
    const standing = (r) => !r.producer;

    /**
     * @param {Row[]} rows  @param {number} at  @param {number} dir */
    function standingFrom(rows, at, dir) {
      for (let i = at; i >= 0 && i < rows.length; i += dir)
        if (standing(rows[i])) return i;
      return -1;
    }

    /**
     * @param {Row} r  @param {number} i  @returns {[string, boolean][]}
     */
    function rowClasses(r, i) {
      return [["tv-alt", i % 2 === 1],
              ["tv-producer", !!r.producer],
              ["tv-refused", !!(r.producer && r.refused)],
              ["tv-marked", markSet.shows(r.id)],
              ["tv-flagged", flagSet.shows(r.id)],
              ["tv-sel", r.id === state.selected]];
    }

    /**
     * @param {Row} r  @param {number} c  @param {number} linkedAt
     * @param {number} multi  @returns {[string, boolean][]}
     */
    function cellClasses(r, c, linkedAt, multi) {
      const col = columns()[c], inCol = c === state.selCol;
      return [["tv-right", !!col && col.align === "right"],
              ["tv-colsel", inCol],
              ["tv-cell-sel", inCol && r.id === state.selected],
              ["tv-multi", c === multi],
              ["tv-linked", c === linkedAt]];
    }

    /** The names that are on, as a class attribute. @param {[string, boolean][]} pairs */
    function classAttr(pairs) {
      let out = "";
      for (let k = 0; k < pairs.length; k++)
        if (pairs[k][1]) out += out ? " " + pairs[k][0] : pairs[k][0];
      return out;
    }

    /**
     * @param {Element} el  @param {[string, boolean][]} pairs
     */
    function stampClasses(el, pairs) {
      const cl = el.classList;
      for (let k = 0; k < pairs.length; k++)
        if (cl.contains(pairs[k][0]) !== pairs[k][1]) cl.toggle(pairs[k][0], pairs[k][1]);
    }

    /**
     * @param {Row} r  @param {number} i  @param {number} multi
     * @param {number} room  @returns {string}
     */
    function rowHTML(r, i, multi, room) {
      const cols = columns(), cs = r.cells || {};
      const linkedAt = linkedCell(r);
      let tds = chrome ? `<td class="tv-box"></td>` : "";
      for (let c = 0; c < cols.length; c++)
        tds += `<td class="${classAttr(cellClasses(r, c, linkedAt, multi))}">`
             + `${cellHTML(cols[c], cs[cols[c].key], dark, c === multi ? room : null)}</td>`;
      return `<tr class="${classAttr(rowClasses(r, i))}" data-id="${esc(r.id)}">${tds}</tr>`;
    }

    function padHTML(h) {
      return `<tr class="tv-pad" style="height:${h}px">`
           + `<td colspan="${columns().length + chrome}"></td></tr>`;
    }

    /**
     * @param {boolean} [force]
     */
    function renderRows(force) {
      if (composer) return;   // no table behind the bar: nothing to paint
      keepSelection();
      const rows = paged();
      const total = rows.length;
      const rowH = geom.row;
      const port = scroll.clientHeight || rowH * 20;   // before layout: a screenful
      const top = Math.max(0, (scroll.scrollTop || 0) - geom.head);
      const first = Math.max(0, Math.floor(top / rowH) - OVERSCAN);
      const last = Math.min(total, first + Math.ceil(port / rowH) + OVERSCAN * 2);
      if (!force && first === win.first && last === win.last) return;
      win.first = first;
      win.last = last;
      win.rows = rows;
      const multi = multiColumn(), room = tagsRoom();
      let html = first > 0 ? padHTML(first * rowH) : "";
      for (let i = first; i < last; i++) html += rowHTML(rows[i], i, multi, room);
      if (last < total) html += padHTML((total - last) * rowH);
      tbody.innerHTML = html;

      applyWidths();
      markClipped();
      table.style.display = total ? "" : "none";
      empty.style.display = total ? "none" : "";
      renderHint();
      measure();
    }

    function markClipped() {
      const tds = tbody.querySelectorAll("td:not(.tv-box)");
      const over = [];
      for (let i = 0; i < tds.length; i++)
        over.push(tds[i].scrollWidth > tds[i].clientWidth + 1);
      for (let i = 0; i < tds.length; i++)
        if (over[i]) tds[i].title = tds[i].textContent;
    }

    function renderHint() {
      wantHint = false;
      if (!hasHint) return;             // the node was never appended
      hint.innerHTML = hintHTML(ordered().length);
    }

    function measure() {
      const tr = /** @type {HTMLElement|null} */ (tbody.querySelector("tr[data-id]"));
      if (!tr || typeof tr.getBoundingClientRect !== "function") return;
      const head = thead.getBoundingClientRect().height;
      if (head > 0) geom.head = head;
      const h = tr.getBoundingClientRect().height;
      if (h > 0 && Math.abs(h - geom.row) > 0.5 && !remeasuring) {
        geom.row = h;                      // the spacers are wrong; redraw once
        remeasuring = true;
        renderRows(true);
        remeasuring = false;
      }
    }

    function maxScroll(port) {
      const rows = paged();
      const content = win.rows.length === rows.length
        ? scroll.scrollHeight : geom.head + rows.length * geom.row;
      return Math.max(0, content - port);
    }

    /**
     * @returns {{page: number, pages: number, from: number, to: number, total: number}}
     */
    function pageInfo() {
      const total = ordered().length;
      const pages = pageCount();
      const at = cursorPage();
      return pageSize
        ? { page: at + 1, pages, from: total ? at * pageSize + 1 : 0,
            to: Math.min(total, (at + 1) * pageSize), total }
        : { page: 1, pages: 1, from: total ? 1 : 0, to: total, total };
    }

    function grouped(n) {
      return String(n).replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }

    function pagerHTML() {
      const p = pageInfo();
      const span = p.from === p.to
        ? grouped(p.from) : `${grouped(p.from)}–${grouped(p.to)}`;
      const step = (dir, label, can) =>
        `<b class="tv-pg${can ? "" : " tv-pg-off"}" data-pg="${dir}">${label}</b>`;
      return `${esc(span)} of ${esc(grouped(p.total))}`
           + ` · ${step(-1, "‹ prev", p.page > 1)}`
           + ` · ${step(1, "next ›", p.page < p.pages)}`;
    }

    function hintHTML(shown) {
      const total = state.rows.length;
      const count = shown === total ? `${total} rows` : `${shown}/${total} rows`;
      const chain = sortText();
      const sort = chain ? `sort ${chain}` : "unsorted";
      let out = pageCount() > 1 ? pagerHTML() : `${esc(count)}`;
      out += ` · ${esc(sort)}`;
      if (actionHints)
        for (const a of actions()) {
          if (!a.key) continue;
          out += ` · <b class="tv-key">${esc(a.key)}</b> ${esc(a.label || a.command)}`;
        }
      if (marks && markSet.ids.size)
        out = `${esc(grouped(markSet.ids.size))} marked · ${out}`;
      if (flags && flagSet.ids.size) {
        const help = flagHelp && state.selected !== null && flagSet.ids.has(state.selected)
          ? ` · ${flagHelpHTML}` : "";
        out = `${esc(grouped(flagSet.ids.size))} flagged${help} · ${out}`;
      }
      return out;
    }

    /**
     * @param {number|null|undefined} col  @returns {number|null}
     */
    function cellCol(col) {
      if (col === null || col === undefined) return null;
      const at = Math.trunc(col);
      return at >= 0 && at < columns().length ? at : null;
    }

    /**
     * @param {string|null} id  @param {number|null} [col]
     */
    function setSelected(id, col) {
      const on = state.rows.find((r) => r.id === id);
      if (on && !standing(on)) return;
      state.selected = id ?? null;
      state.selCol = id === null || id === undefined ? null : cellCol(col);
      selAt = indexOfSelected();
      stampSelection();
    }

    function keepSelection() {
      if (state.selected === null) return;
      const rows = paged();
      if (!rows.length) { state.selected = null; state.selCol = null; selAt = -1; return; }
      if (selAt >= 0 && rows[selAt] && rows[selAt].id === state.selected) return;
      if (rows.some((r) => r.id === state.selected)) return;
      const want = Math.max(0, Math.min(rows.length - 1, selAt));
      const at = standingFrom(rows, want, 1);
      selAt = at === -1 ? standingFrom(rows, want, -1) : at;
      if (selAt === -1) { state.selected = null; state.selCol = null; return; }
      state.selected = rows[selAt].id;
    }

    function indexOfSelected() {
      if (state.selected === null) return -1;
      const rows = paged();
      if (selAt >= 0 && rows[selAt] && rows[selAt].id === state.selected) return selAt;
      return rows.findIndex((r) => r.id === state.selected);
    }

    function stampSelection() {
      const trs = tbody.children, multi = multiColumn();
      let k = 0;
      for (let i = 0; i < trs.length; i++) {
        const tr = /** @type {HTMLElement} */ (trs[i]);
        if (tr.dataset.id === undefined) continue;      // spacer
        const at = win.first + k++, r = win.rows[at];
        stampClasses(tr, rowClasses(r, at));
        const linkedAt = linkedCell(r), tds = tr.children;
        for (let c = chrome; c < tds.length; c++)
          stampClasses(tds[c], cellClasses(r, c - chrome, linkedAt, multi));
      }
      const ths = headRow.children;
      for (let c = chrome; c < ths.length; c++)
        ths[c].classList.toggle("tv-colsel", c - chrome === state.selCol);
    }



    /**
     * @param {boolean} drawn  @returns {RowState}
     */
    function rowState(drawn) {
      /** @type {Set<string>} */
      const ids = new Set();
      return {
        ids,
        /** Does ID wear this state, as the table draws it? @param {string} id */
        shows(id) { return drawn && ids.has(id); },
        /**
         *  @param {string} id  @returns {boolean} the state it landed in */
        toggle(id) {
          const on = !ids.has(id);
          if (on) ids.add(id); else ids.delete(id);
          paintMarks();
          return on;
        },
        /** Take it off ID, whether or not it was there. @param {string} id */
        drop(id) { if (ids.delete(id)) paintMarks(); },
        /**
         * @param {Row[]} rows  @returns {number} how many rows carry it after
         */
        addAll(rows) {
          const before = ids.size;
          for (const r of rows) ids.add(r.id);
          if (ids.size !== before) paintMarks();
          return ids.size;
        },
        clear() {
          if (!ids.size) return;
          ids.clear();
          paintMarks();
        },
        /**
         * @returns {string[]}
         */
        list() {
          const out = shownRows().filter((r) => ids.has(r.id)).map((r) => r.id);
          const shown = new Set(out);
          for (const id of ids) if (!shown.has(id)) out.push(id);
          return out;
        },
      };
    }

    const markSet = rowState(marks);
    const flagSet = rowState(flags);

    /**
     * @returns {number} how many rows carry a mark afterwards
     */
    function markAll() {
      return marks ? markSet.addAll(ordered().filter(standing)) : 0;
    }

    function paintMarks() {
      wantSelection = true;
      wantHint = true;
      schedule();
    }

    /**
     * @param {string} id  @param {number} [col]  @returns {boolean}
     */
    function selectRow(id, col) {
      const rows = paged();
      const i = rows.findIndex((r) => r.id === id);
      if (i === -1 || !standing(rows[i])) return false;
      const was = selAt;
      state.selected = id;
      state.selCol = cellCol(col);
      selAt = i;
      paintSelection(was);
      return true;
    }

    function paintSelection(was) {
      wantSelection = true;
      if (flagHelp) wantHint = true;
      if (selAt >= 0) easeToRow(selAt, was === undefined ? selAt : was);
      stampSelection();
      schedule();
    }


    let frameId = 0;
    let wantWindow = false;      // the scroll moved; re-window if it has to
    let wantSelection = false;   // the selection moved; re-stamp the marks
    let wantHint = false;        // the count moved; rewrite the status line
    let easeAt = 0;              // where the viewport is heading
    let easing = false;
    let aim = { row: -1, down: true, from: 0 };

    function schedule() { if (!frameId) frameId = frame(tick); }

    // One frame loop owns windowing, selection, hints, and eased scrolling.
    function tick() {
      frameId = 0;
      if (easing) {
        // Geometry is re-read in-frame so easing cannot stop against stale dimensions.
        measure();
        const port = scroll.clientHeight || 0;
        if (port) easeAt = aimed(port);
        const step = easeAt - scroll.scrollTop;
        if (Math.abs(step) < SNAP_PX) { scroll.scrollTop = easeAt; easing = false; }
        else {
          const was = scroll.scrollTop;
          scroll.scrollTop = was + step * EASE;
          // Device-pixel rounding can refuse a fractional step; refusal is arrival.
          if (scroll.scrollTop === was) easing = false;
        }
        wantWindow = true;
      }
      if (wantWindow || wantSelection) repaint();
      if (wantSelection) stampSelection();
      if (wantHint) renderHint();
      wantWindow = wantSelection = false;
      if (easing) schedule();
    }

    function aimed(port) {
      const top = geom.head + aim.row * geom.row, foot = top + geom.row;
      let to = aim.from;
      if (aim.down) { if (foot - aim.from > port * 2 / 3) to = foot - port * 2 / 3; }
      else if (top - aim.from < port / 3) to = top - port / 3;
      return Math.max(0, Math.min(maxScroll(port), to));
    }

    function easeToRow(i, was) {
      const port = scroll.clientHeight || 0;
      if (!port) return;
      const from = easing ? easeAt : scroll.scrollTop;
      aim = { row: i, down: was < 0 || i >= was, from };  // downward, or the first pick
      const to = aimed(port);
      if (to === from && !easing) return;              // the band already holds it
      if (calm) { scroll.scrollTop = to; easing = false; return; }
      easeAt = to;
      easing = true;
    }

    let narrowing = false;

    /**
     *  @type {Set<string>} */
    let spoken = new Set();

    /**
     * @param {{narrow?: boolean}} [how]
     */
    function openFilter(how) {
      narrowing = !!(how && how.narrow === true);
      spoken = new Set();
      input.placeholder = narrowing ? NARROW_HINT : WHOLE_HINT;
      if (dock === "overlay") veil.style.display = "";
      if (dock === "strip") root.classList.add("tv-typing");
      input.focus();
      if (input.select) input.select();
    }

    function closeFilter() {
      closeAc();
      if (dock === "overlay") veil.style.display = "none";
      input.blur();          // the blur listener un-summons; one owner for the class
    }

    function endNarrow() {
      if (!narrowing) return;
      const kept = typedQuery();          // the box, less what it refused
      narrowing = false;
      spoken = new Set();
      input.placeholder = WHOLE_HINT;
      if (kept !== input.value.trim()) { input.value = kept; renderNegation(); }
    }

    /**
     *  @returns {boolean} */
    function clearTyped() {
      if (!input.value) return false;
      input.value = "";
      renderNegation();
      closeAc();
      deliver();
      return true;
    }

    function clearNegatedPart() {
      if (!summoned || !input.value.startsWith("-") || input.value === "-")
        return false;
      input.value = "-";
      if (input.setSelectionRange) input.setSelectionRange(1, 1);
      renderNegation();
      return true;
    }

    /** True while the filter box holds the keyboard. @returns {boolean} */
    const filtering = () => document.activeElement === input;

    function abandonFilter() {
      clearTyped();
      handOver();
    }

    function handOver() {
      selectFirstVisible();
      closeFilter();
    }

    function cancelEase() { easing = false; }

    /**
     * @param {number} to  @param {"first"|"last"} land  @returns {boolean}
     */
    function turnTo(to, land) {
      const pages = pageCount();
      const at = Math.max(0, Math.min(pages - 1, to));
      if (at === page && !continuous) return false;
      const col = state.selCol;
      continuous = false;
      page = at;
      const rows = paged();
      if (!rows.length) { renderRows(true); return true; }
      const first = land === "first";
      scroll.scrollTop = first ? 0 : maxScroll(scroll.clientHeight || 0);
      easing = false;
      selAt = first ? -1 : rows.length;
      renderRows(true);
      selectRow(rows[first ? 0 : rows.length - 1].id, col ?? undefined);
      return true;
    }

    /**
     * @param {number} step  @returns {boolean}
     */
    function selectStep(step) {
      let rows = paged();
      if (!rows.length) return false;
      const dir = step < 0 ? -1 : 1;
      const col = state.selCol;
      const at = state.selected === null
        ? -1 : rows.findIndex((r) => r.id === state.selected);
      const from = at === -1 ? (dir > 0 ? 0 : rows.length - 1) : at + dir;
      const next = standingFrom(rows, from, dir);
      if (next !== -1) return selectRow(rows[next].id, col ?? undefined);
      if (!pageSize || continuous) return false;         // the true end of the set
      goContinuous();
      rows = paged();
      const here = rows.findIndex((r) => r.id === state.selected);
      const across = standingFrom(rows, here + dir, dir);
      if (across === -1) return false;
      return selectRow(rows[across].id, col ?? undefined);
    }

    function selectFirstVisible() {
      const rows = paged();
      if (!rows.length) return;
      if (state.selected !== null && rows.some((r) => r.id === state.selected)) return;
      selectRow(rows[0].id, state.selCol ?? undefined);
    }

    /**
     * @param {SortKey[]} chain
     */
    function applyChain(chain) {
      state.sortKeys = chain;
      page = 0;                          // a different order, read from the top
      continuous = false;
      dropSorted();
      scroll.scrollTop = 0;
      renderArrows();
      renderChips();
      renderRows(true);
    }

    /** Are A and B the same order? @param {SortKey[]} a @param {SortKey[]} b */
    const sameChain = (a, b) => a.length === b.length
      && a.every((k, i) => k.column === b[i].column && k.ascending === b[i].ascending
                        && !!k.nullsFirst === !!b[i].nullsFirst);

    /**
     * @param {string} key @param {boolean} ascending @returns {boolean}
     */
    function sortTo(key, ascending) {
      if (!colByKey(key)) return false;
      stated = [{ column: key, ascending, nullsFirst: false }];
      applyChain(stated);            // a stated order is in force as it is stated
      return true;
    }

    /**
     * @param {string} key @returns {boolean} whether the chain moved
     */
    function sortPromote(key) {
      const col = colByKey(key);
      if (!col || col.sortable !== true) return false;
      const chain = state.sortKeys, lead = chain[0];
      writeSort(
        lead && lead.column === key
          ? [{ column: key, ascending: !lead.ascending, nullsFirst: lead.nullsFirst }]
              .concat(chain.slice(1))
          : [{ column: key, ascending: true, nullsFirst: false }]
              .concat(chain.filter((k) => k.column !== key)));
      return true;
    }

    /**
     * @param {SortKey[]} chain
     */
    function writeSort(chain) {
      const keys = queryKeys();
      chips = chips.filter((c) => !parseQuery(c, keys).some((t) => t.key === SORT_KEY));
      if (chain.length) pushChip(sortToken(chain));
      renderChips();
      deliver();
    }

    function dispatch(command, row) {
      if (!row) return;
      if (o.onAction) o.onAction(command, row.id, row);
      root.dispatchEvent(new CustomEvent("tableview-action",
        { detail: { command, id: row.id, row } }));
    }

    function followLink(target, row) {
      if (o.onLink) { o.onLink(target, row); }
      else if (/^https?:\/\//i.test(target)) window.open(target, "_blank", "noopener");
      root.dispatchEvent(new CustomEvent("tableview-link", { detail: { target, row } }));
    }

    function defaultCommand() {
      const a = actions().find((x) => x.key === "RET") || actions()[0];
      return a && a.command;
    }

    /**
     * @param {Event} e  @returns {Element|null} */
    const hit = (e) => /** @type {Element|null} */ (e.target);
    /** @param {Row[]} rows  @param {HTMLElement} tr */
    const rowOf = (rows, tr) => rows.find((r) => r.id === tr.dataset.id);

    /**
     * @param {HTMLElement} tr  @param {HTMLElement|null} td  @returns {number|null}
     */
    function colOf(tr, td) {
      if (!td) return null;
      const at = Array.prototype.indexOf.call(tr.children, td) - chrome;
      return at < 0 ? null : at;
    }

    const onBox = (target) => marks && !!target.closest("td.tv-box");


    scroll.addEventListener("click", (e) => {
      const t = hit(e);
      if (!t) return;
      const a = /** @type {HTMLElement|null} */ (t.closest("a.tv-link"));
      if (a) {
        e.preventDefault();
        const tr = /** @type {HTMLElement|null} */ (a.closest("tr[data-id]"));
        followLink(a.dataset.target, (tr && rowOf(state.rows, tr)) || null);
        return;
      }
      const th = /** @type {HTMLElement|null} */ (t.closest("th[data-key]"));
      if (th) { sortPromote(String(th.dataset.key)); return; }
      const tr = /** @type {HTMLElement|null} */ (t.closest("tr[data-id]"));
      if (!tr) return;
      if (onBox(t)) {
        if (tr.dataset.id !== undefined) markSet.toggle(tr.dataset.id);
        return;
      }
      setSelected(tr.dataset.id ?? null,
                  colOf(tr, /** @type {HTMLElement|null} */ (t.closest("td"))));
    });

    /** @type {{ cell: any, id: string|null, col: number, kind: "cell"|"header",
     *           input: any, raw: string, token: number } | null} */
    let cellEdit = null;
    let cellToken = 0;
    const columnEditable = (col) => { const c = columns()[col]; return !!(c && c.editable); };
    const cellRaw = (id, col) => {
      const r = state.rows.find((x) => x.id === id), c = columns()[col];
      return r && c ? String((r.cells || {})[c.key] ?? "") : "";
    };
    function closeCellEditor() {
      if (!cellEdit) return;
      cellEdit = null;
      renderRows(true);
      renderHead();
    }
    function commitCellEditor() {
      if (!cellEdit) return;
      const { id, col, kind, input } = cellEdit;
      const value = input.value;
      closeCellEditor();
      if (o.onEdit) o.onEdit(id, col, value, kind);
      root.dispatchEvent(new CustomEvent("tableview-edit",
        { detail: { id, col, value, kind } }));
    }
    /**
     * @param {[number, number]|null} [sel]  what to leave selected, the WHOLE
     * @param {{raw: string, token: number}|null} [keep]  a HELD editor's own
     * open, put back: the value it opened on and the number that open wears. */
    function openCellEditor(cell, id, col, kind, raw, sel, keep) {
      if (!cell) return false;
      const input = document.createElement("input");
      input.className = "tv-cell-edit";
      input.value = raw;
      cell.innerHTML = "";
      cell.appendChild(input);
      const open = keep || { raw, token: ++cellToken };
      cellEdit = { cell, id, col, kind, input, raw: open.raw, token: open.token };
      input.focus();
      if (sel) input.setSelectionRange(sel[0], sel[1]);
      else if (input.select) input.select();
      input.addEventListener("keydown", (e) => {
        e.stopPropagation();
        if (o.onCellKey && cellEdit && o.onCellKey(e, openCell())) return;
        if (e.key === "Enter" || e.key === "Tab") { e.preventDefault(); commitCellEditor(); }
        else if (e.key === "Escape") { e.preventDefault(); closeCellEditor(); }
      });
      return true;
    }
    /**
     * opened on, and which open this is. @returns {OpenCell} */
    const openCell = () => ({
      id: cellEdit.id, col: cellEdit.col, key: keyOf(cellEdit.col),
      value: cellEdit.input.value, raw: cellEdit.raw, token: cellEdit.token });
    const keyOf = (col) => { const c = columns()[col]; return c ? c.key : ""; };
    const producerRow = (id) =>
      !standing(state.rows.find((r) => r.id === id) || {});
    /** @param {[number, number]|null} [sel]  @param {string|null} [raw]  the
     * @param {{raw: string, token: number}|null} [keep]  `holdEditor''s own open. */
    function editCell(id, col, sel, raw, keep) {
      if (!producerRow(id) && !columnEditable(col)) return false;
      // Closing redraws rows, so locate the target only after the close.
      closeCellEditor();
      const tr = /** @type {HTMLElement|null} */
        ([...tbody.querySelectorAll("tr[data-id]")]
          .find((x) => /** @type {HTMLElement} */ (x).dataset.id === id) || null);
      if (!tr) return false;
      const td = [...tr.querySelectorAll("td:not(.tv-box)")][col];
      return openCellEditor(td, id, col, "cell",
                            raw == null ? cellRaw(id, col) : raw, sel, keep);
    }
    const getEditing = () =>
      (cellEdit && cellEdit.kind === "cell"
        ? { id: cellEdit.id, col: cellEdit.col, key: keyOf(cellEdit.col) } : null);

    /**
     * @param {string} id  @param {number} col */
    function cellRect(id, col) {
      const tr = /** @type {any} */
        ([...tbody.querySelectorAll("tr[data-id]")]
          .find((x) => /** @type {HTMLElement} */ (x).dataset.id === id) || null);
      const td = tr && [...tr.querySelectorAll("td:not(.tv-box)")][col];
      return td ? td.getBoundingClientRect() : null;
    }

    /**
     * @returns {{id: string, col: number, value: string, raw: string,
     *            token: number, sel: [number, number]}|null}
     */
    function holdEditor() {
      const at = getEditing();
      if (!at || at.id === null) return null;
      const { input, raw, token } = cellEdit;
      cellEdit = null;
      return { id: at.id, col: at.col, value: input.value, raw, token,
               sel: [input.selectionStart ?? input.value.length,
                     input.selectionEnd ?? input.value.length] };
    }
    /**
     * @param {{id: string, col: number, value: string, raw: string,
     *          token: number, sel: [number, number]}|null} held */
    function resumeEditor(held) {
      if (held) editCell(held.id, held.col, held.sel, held.value, held);
    }
    /**
     * @param {boolean} [force]  redraw a window that has not moved. */
    function repaint(force) {
      const held = holdEditor();
      renderRows(force);
      resumeEditor(held);
    }
    function editHeader(col) {
      if (!columnEditable(col)) return false;
      closeCellEditor();
      const th = [...headRow.querySelectorAll("th[data-key]")][col];
      const c = columns()[col];
      return openCellEditor(th, null, col, "header", c ? String(c.header || "").trim() : "");
    }
    scroll.addEventListener("dblclick", (e) => {
      const t = hit(e);
      if (!t) return;
      const th = /** @type {HTMLElement|null} */ (t.closest("th[data-key]"));
      if (th) {
        const col = columns().findIndex((c) => c.key === th.dataset.key);
        if (col >= 0) editHeader(col);
        return;
      }
      const tr = /** @type {HTMLElement|null} */ (t.closest("tr[data-id]"));
      const td = /** @type {HTMLElement|null} */ (t.closest("td"));
      if (tr && td && tr.dataset.id !== undefined) editCell(tr.dataset.id, colOf(tr, td));
    });

    let pressAt = 0, pressX = 0, pressY = 0, pressRan = false;
    /** @type {string|null} */
    let pressOn = null;

    function cancelPress() {
      if (pressAt) { clearTimeout(pressAt); pressAt = 0; }
      pressOn = null;
    }

    scroll.addEventListener("touchstart", (e) => {
      const t = hit(e);
      const tr = t && /** @type {HTMLElement|null} */ (t.closest("tr[data-id]"));
      const touch = e.touches && e.touches[0];
      if (!tr || !touch) return;
      if (onBox(t)) return;
      if (!standing(rowOf(state.rows, tr) || {})) return;
      cancelPress();
      pressRan = false;
      pressOn = tr.dataset.id ?? null;
      pressX = touch.clientX;
      pressY = touch.clientY;
      const at = colOf(tr, /** @type {HTMLElement|null} */ (t.closest("td")));
      pressAt = setTimeout(() => {
        pressAt = 0;
        if (pressOn === null) return;
        pressRan = true;
        setSelected(pressOn, at);
        const cmd = defaultCommand();
        if (cmd) dispatch(cmd, state.rows.find((r) => r.id === pressOn));
      }, LONG_PRESS);
    });

    scroll.addEventListener("touchmove", (e) => {
      const touch = e.touches && e.touches[0];
      if (!touch || pressOn === null) return;
      if (Math.abs(touch.clientX - pressX) > PRESS_SLOP
       || Math.abs(touch.clientY - pressY) > PRESS_SLOP) cancelPress();
    });

    scroll.addEventListener("touchend", (e) => {
      if (pressRan) { e.preventDefault(); pressRan = false; }
      cancelPress();
    });
    scroll.addEventListener("touchcancel", cancelPress);

    scroll.addEventListener("dblclick", (e) => {
      const t = hit(e);
      const tr = t && /** @type {HTMLElement|null} */ (t.closest("tr[data-id]"));
      if (!tr) return;
      const r = rowOf(state.rows, tr);
      if (!r || !standing(r)) return;
      const cmd = defaultCommand();
      if (cmd) dispatch(cmd, r);
    });

    scroll.addEventListener("scroll", () => { wantWindow = true; cancelPress(); schedule(); });
    for (const how of ["wheel", "touchmove", "pointerdown", "keydown"])
      scroll.addEventListener(how, cancelEase);


    /** @type {string[]} */
    let chips = [];

    /**
     * @type {Crumb[]}
     */
    let crumbs = [];

    /**
     * @returns {string}
     */
    function typedQuery() {
      const v = input.value;
      if (!narrowing || !v.trim()) return v.trim();
      const kept = [];
      for (const t of parseQuery(v, queryKeys()))
        if (!shapesView(t.key)) kept.push(v.slice(t.start, t.end));
      return kept.join(" ");
    }

    function effectiveQuery() {
      const typed = typedQuery();
      if (!chips.length) return typed;
      const front = chips.join(" ");
      return typed ? front + " " + typed : front;
    }

    /** C as this keeps a crumb, or null when it is not one. @param {*} c */
    function crumbOf(c) {
      return c && typeof c === "object"
        ? { label: String(c.label ?? ""), query: String(c.query ?? "") } : null;
    }

    /**
     * @param {string} tok
     */
    function chipText(tok) {
      if (chipLabel) {
        const alias = chipLabel(tok);
        if (typeof alias === "string" && alias) return alias;
      }
      return spelled(tok);
    }

    function chipFace(tok) {
      const text = chipText(tok), t = asToken(tok);
      if (!t || !t.negated)
        return `<span class="tv-chip-body">${esc(text)}</span>`;
      const body = text.startsWith("-") ? text.slice(1) : text;
      return `<span class="tv-chip-neg">NOT</span>`
           + `<span class="tv-chip-body">${esc(body)}</span>`;
    }

    /**
     * @param {string} tok  @returns {string}
     */
    function spelled(tok) {
      const t = asToken(tok);
      if (!t || t.key !== null || !t.value) return tok;
      const value = /[\s&"]/.test(t.value) ? `"${t.value}"` : t.value;
      return `${signMark(t)}${SUBSTRING_KEY}:${value}`;
    }

    /**
     * @returns {string[]}
     */
    function crumbStrip() {
      if (crumbs.length <= CRUMB_MAX) return crumbs.map((c) => c.label);
      const kept = crumbs.slice(crumbs.length - (CRUMB_MAX - 1));
      return ["… +" + (crumbs.length - kept.length)].concat(kept.map((c) => c.label));
    }

    function renderChips() {
      let html = "";
      for (const text of crumbStrip())
        html += `<span class="tv-chip tv-chip-muted">${esc(text)}</span>`;
      for (let i = 0; i < chips.length; i++)
        html += `<span class="tv-chip${chipClassOf(chips[i])}"`
              + ` data-i="${i}" data-token="${esc(chips[i])}" title="remove">`
              + chipFace(chips[i])
              + `<i class="tv-chip-x">×</i></span>`;
      if (onPin && dock !== "strip")
        html += `<span class="tv-pin${pinned ? " tv-pinned" : ""}" title="${
          pinned ? "this view is the default" : "pin this view as the default"}">📌</span>`;
      chipsEl.innerHTML = html;
      chipsEl.style.display = (crumbs.length || chips.length
                               || (onPin && dock !== "strip")) ? "" : "none";
      if (dock === "strip" && onPin) {
        pinEl.className = `tv-pin${pinned ? " tv-pinned" : ""}`;
        pinEl.title = pinned ? "this view is the default" : "pin this view as the default";
        pinEl.textContent = "📌";
      }
    }

    /** The one token TOK spells, parsed. @param {string} tok  @returns {Token|undefined} */
    const asToken = (tok) => parseQuery(tok, queryKeys())[0];

    /**
     * @param {string} tok  @returns {boolean}
     */
    function ordersRows(tok) {
      const t = asToken(tok);
      if (!t || t.key !== SORT_KEY) return false;
      return sortSegments(t).some((s) => s.toLowerCase() === NONE_META
                                      || !!sortKeyOf(s, namesColumn));
    }

    /**
     * @param {string} tok  @returns {boolean}
     */
    function showsColumns(tok) {
      const t = asToken(tok);
      if (!t || t.key !== COLUMNS_KEY || t.negated || t.added) return false;
      return t.value.split(",").some((n) => n !== "");
    }

    /**
     * @param {string} tok  @returns {boolean}
     */
    function namesView(tok) {
      const t = asToken(tok);
      if (!t || t.key !== VIEW_KEY || t.negated || t.added) return false;
      const want = t.value.toLowerCase();
      return savedViews().some((v) => String(v.name || "").toLowerCase() === want);
    }

    /**
     * @param {string} tok  @returns {string}
     */
    const chipClassOf = (tok) =>
      (asToken(tok)?.negated ? " tv-chip-negated" : "")
      + (ordersRows(tok) ? " tv-chip-sort"
        : showsColumns(tok) ? " tv-chip-cols"
        : namesView(tok) ? " tv-chip-view" : "");

    /**
     * @param {string} q  @returns {string}
     */
    function sortChip(q) {
      const chain = sortsIn(q, queryKeys(), namesColumn);
      return chain && chain.length ? sortToken(chain) : `${SORT_KEY}:${NONE_META}`;
    }

    /**
     * @param {string} tok
     */
    function pushChip(tok) {
      if (ordersRows(tok)) {
        const at = chips.findIndex(ordersRows);
        const folded = sortChip(at === -1 ? tok : chips[at] + " " + tok);
        if (at === -1) chips.push(folded); else chips[at] = folded;
        return;
      }
      if (!chips.some((c) => c === tok)) chips.push(tok);
    }

    /**
     * @param {Token} tok  @returns {number}
     */
    function twinAt(tok) {
      if (tok.negated === tok.added) return -1;      // unsigned: no twin to find
      return chips.findIndex((c) => {
        const ts = parseQuery(c, queryKeys());
        if (ts.length !== 1) return false;
        const t = ts[0];
        return t.negated === tok.added && t.added === tok.negated
            && t.key === tok.key && t.value === tok.value;
      });
    }

    /**
     * @param {string} text  @param {Token} tok
     */
    function commitChip(text, tok) {
      // Commit sequentially: each token cancels against the prior result.
      const at = twinAt(tok);
      if (at === -1) pushChip(text); else chips.splice(at, 1);
    }

    /**
     * @param {string} text
     */
    function refuse(text) {
      if (spoken.has(text)) return;
      spoken.add(text);
      if (onRefused) onRefused(text);
    }

    /**
     * @param {boolean} [all]  @returns {boolean} whether anything moved
     */
    function chipUp(all) {
      const v = input.value;
      const toks = parseQuery(v, queryKeys());
      if (!toks.length) return false;
      const last = toks[toks.length - 1];
      const keep = !all && last.end === v.length ? last : null;
      const left = [];
      let moved = false;
      for (const t of toks) {
        if (t === keep) continue;
        const text = v.slice(t.start, t.end);
        if (narrowing && shapesView(t.key)) { left.push(text); refuse(text); continue; }
        commitChip(text, t);
        moved = true;
      }
      if (!moved) return false;         // nothing finished: the box stands as typed
      if (keep) left.push(v.slice(keep.start));
      input.value = left.join(" ");
      renderNegation();
      if (input.setSelectionRange) input.setSelectionRange(input.value.length, input.value.length);
      renderChips();
      return true;
    }

    function applyFilter() {
      const v = effectiveQuery();
      if (v === state.filter) return;
      state.filter = v;
      dropOrder();                       // `sorted' stands: only the filter moved
      widths = null;
      scroll.scrollTop = 0;
      renderRows(true);
    }

    let lastQuery = "";

    function deliver(onFrame) {
      const q = effectiveQuery();
      if (q === lastQuery) return;
      lastQuery = q;
      page = 0;                          // a different question, read from the top
      continuous = false;
      const chain = chainFor(q);
      if (!sameChain(chain, state.sortKeys)) applyChain(chain);
      if (o.onFilter) o.onFilter(q);
      else if (onFrame) frame(applyFilter);
      else applyFilter();
    }

    /**
     * @returns {boolean}
     */
    function stripLastToken() {
      if (input.value.trim()) {
        input.value = "";
        renderNegation();
        if (debounce) { clearTimeout(debounce); debounce = 0; }
        closeAc();
        deliver();
        return true;
      }
      if (!chips.length) return false;
      dropChip(chips.length - 1);
      return true;
    }

    let debounce = 0;
    function renderNegation() {
      const on = input.value.startsWith("-");
      filterWrap.classList.toggle("tv-negating", on);
      input.setAttribute("aria-label", on ? "Negated filter" : "Filter");
    }
    function armFilter() {
      if (summoned) return;
      if (debounce) clearTimeout(debounce);
      debounce = setTimeout(() => {
        debounce = 0;
        chipUp(false);
        deliver(true);
      }, DEBOUNCE);
    }
    input.addEventListener("input", () => {
      renderNegation();
      if (o.onFilterInput) o.onFilterInput(input.value);
      armFilter();
      openAc();
    });

    // suggestion tiers (renderer-local autocomplete): docs/web-renderer.org

    const AC_MAX = 12;          // suggestions offered at once
    const TITLE_MAX = 5;        // whole titles offered
    const TITLE_MIN = 2;        // ... and only past this much typing
    const DOMAIN_MAX = 200;     // distinct values kept before the prefix narrows them

    /**
     * @type {{stage: string, tok: Token,
     *         items: {text: string, count: number, full: boolean, dim: boolean,
     *                  show?: string, aside?: string}[]}|null}
     */
    let ac = null;
    let acAt = 0;

    /**
     * @returns {{list: string[], counts: Map<string, number>}}
     */
    function domainOf(col) {
      let d = domains.get(col.key);
      if (!d) {
        const i = columns().indexOf(col);
        if (i === multiColumn()) {
          const v = tagVocab();
          const counts = new Map();
          for (const tag of v.list) counts.set(tag, (v.ids.get(tag) || new Set()).size);
          d = { list: declaredMetas(col).concat(v.list), counts };
          domains.set(col.key, d);
          return d;
        }
        const fixed = domainValues(col);
        const counts = new Map();
        const found = [];
        for (const r of state.rows) {
          if (!standing(r)) continue;   // a producer's own row lends no value
          const lower = rowText(r).cells[i];
          if (!lower) continue;
          const n = counts.get(lower);
          if (n !== undefined) { counts.set(lower, n + 1); continue; }
          counts.set(lower, 1);
          if (!fixed && found.length < DOMAIN_MAX) found.push(displayText((r.cells || {})[col.key]));
        }
        d = { list: fixed || found.sort(), counts };
        domains.set(col.key, d);
      }
      return d;
    }

    /** The token the caret sits in, or null. @returns {Token|null} */
    function tokenAtCaret() {
      const v = input.value;
      const caret = typeof input.selectionStart === "number" ? input.selectionStart : v.length;
      for (const t of parseQuery(v, queryKeys()))
        if (caret >= t.start && caret <= t.end) return t;
      return null;
    }

    /**
     * @returns {{stage: string, tok: Token, col: Column|null, prefix: string}|null}
     */
    function stageAt() {
      const t = tokenAtCaret();
      if (!t || t.quoted) return null;
      if (t.key !== null) {
        if (narrowing && shapesView(t.key)) return null;
        if (t.key === SORT_KEY) {
          const v = t.value.toLowerCase(), arrow = v.lastIndexOf(SORT_ARROW);
          return { stage: "sort", tok: t, col: null,
                   prefix: arrow === -1 ? v : v.slice(arrow + SORT_ARROW.length) };
        }
        if (t.key === COLUMNS_KEY) {
          const v = t.value.toLowerCase(), comma = v.lastIndexOf(",");
          return { stage: "columns", tok: t, col: null,
                   prefix: comma === -1 ? v : v.slice(comma + 1) };
        }
        if (t.key === VIEW_KEY)
          return { stage: "view", tok: t, col: null, prefix: t.value.toLowerCase() };
        const col = colByKey(t.key);
        if (!col) return null;
        const onDate = dateColumn(columns().indexOf(col));
        return { stage: onDate ? "date" : "value", tok: t, col,
                 prefix: t.value.slice(t.value.lastIndexOf(ALT) + 1) };
      }
      if ((!t.value && !t.negated && !t.added) || splitAt(t.value) !== -1) return null;
      return { stage: "key", tok: t, col: null, prefix: t.value };
    }

    /**
     * @param {string} key  @param {Token} tok  @returns {Set<string>}
     */
    function axisCarries(key, tok) {
      const keys = queryKeys();
      const out = new Set();
      /** @param {string} q  @param {number} skip */
      const take = (q, skip) => {
        for (const t of parseQuery(q, keys)) {
          if (t.key !== key || t.start === skip) continue;
          for (const alt of alternatives(t.value)) out.add(meant(alt.toLowerCase()));
        }
      };
      take(chips.join(" "), -1);
      take(input.value, tok.start);
      return out;
    }

    /**
     * @returns {{text: string, count: number, full: boolean, dim: boolean,
     *             show?: string, aside?: string}[]}
     */
    function suggestFor(st) {
      const p = st.prefix.toLowerCase();
      const out = [];
      if (st.stage === "sort") {
        const at = p.indexOf(":");
        const wantCol = at === -1 ? p : p.slice(0, at);
        const wantDir = at === -1 ? null : p.slice(at + 1);
        const chained = sortSegments(st.tok).slice(0, -1)
          .map((s) => s.split(":")[0].toLowerCase());
        const offer = (text, dim) =>
          out.push({ text, count: -1, full: true, dim: !!dim });
        if (!p && !chained.length && state.sortKeys.length)
          out.push({ text: sortToken(state.sortKeys).slice(SORT_KEY.length + 1),
                     count: -1, full: false, dim: false });
        for (const c of columns()) {
          if (out.length >= AC_MAX) break;
          if (c.sortable !== true) continue;
          const key = String(c.key), lower = key.toLowerCase();
          if (chained.indexOf(lower) !== -1) continue;
          if (wantDir === null) {
            if (!lower.startsWith(wantCol)) continue;
            offer(key);
            if (lower === wantCol) offer(key + ":desc");
          } else if (lower === wantCol) {
            for (const d of ["asc", "desc"]) if (d.startsWith(wantDir)) offer(key + ":" + d);
          }
        }
        if (wantDir === null && !chained.length && opensWith(NONE_META, wantCol))
          offer(NONE_META, true);
        return out.slice(0, AC_MAX);
      }
      if (st.stage === "columns") {
        const taken = st.tok.value.toLowerCase().split(",").slice(0, -1)
          .filter((n) => n !== "");
        for (const c of columns()) {
          if (out.length >= AC_MAX) break;
          const key = String(c.key), lower = key.toLowerCase();
          if (taken.indexOf(lower) !== -1) continue;
          if (!lower.startsWith(p)) continue;
          out.push({ text: key, count: -1, full: true, dim: false });
        }
        return out.slice(0, AC_MAX);
      }
      if (st.stage === "view") {
        for (const v of savedViews()) {
          if (out.length >= AC_MAX) break;
          const name = String(v.name || "");
          if (!name.toLowerCase().startsWith(p)) continue;
          out.push({ text: name, count: -1, full: true, dim: false,
                     aside: v.query ? String(v.query) : undefined });
        }
        return out.slice(0, AC_MAX);
      }
      if (!st.col) {
        const hits = [];
        for (const c of columns()) {
          if (!domainValues(c) && columns().indexOf(c) !== multiColumn()) continue;
          const dom = domainOf(c);
          for (const v of dom.list) {
            const lower = String(v).toLowerCase();
            if (!opensWith(lower, p)) continue;
            const meta = META.test(String(v));
            hits.push({ text: c.key + ":" + v,
                        count: meta ? -1 : dom.counts.get(lower) || 0,
                        whole: spells(lower, p), dim: meta });
          }
        }
        hits.sort((a, b) => (b.whole ? 1 : 0) - (a.whole ? 1 : 0)
                         || b.count - a.count
                         || (a.text < b.text ? -1 : 1));
        const exact = hits.length > 0 && hits[0].whole;
        if (!narrowing)
          for (const v of savedViews()) {
            if (out.length >= AC_MAX) break;
            const name = String(v.name || "");
            if (!name.toLowerCase().startsWith(p)) continue;
            out.push({ text: VIEW_KEY + ":" + name, count: -1, full: true, dim: false,
                       aside: v.query ? String(v.query) : undefined });
          }
        if (exact) {
          const top = hits.shift();
          out.push({ text: top.text, count: top.count, full: true, dim: top.dim });
        }
        const keys = offeredKeys();
        const opens = keys.filter((k) => k.toLowerCase().startsWith(p));
        for (const k of opens.filter((k) => k.toLowerCase() === p)
                             .concat(opens.filter((k) => k.toLowerCase() !== p))) {
          out.push({ text: k + ":", count: -1, full: false, dim: false });
          if (out.length === AC_MAX) break;
        }
        for (const hit of hits) {
          if (out.length === AC_MAX) break;
          out.push({ text: hit.text, count: hit.count, full: true, dim: hit.dim });
        }
        if (p.length >= TITLE_MIN) {
          const opensT = [], holds = [];
          for (const t of titleIndex().titles) {
            if (t.lower.indexOf(p) === -1) continue;
            if (t.lower === p) continue;          // spelled already; the literal has it
            if (t.lower.indexOf('"') !== -1) continue;
            (t.lower.startsWith(p) ? opensT : holds).push(t);
          }
          for (const t of opensT.concat(holds).slice(0, TITLE_MAX)) {
            if (out.length === AC_MAX) break;
            const show = displayText(t.cell);
            out.push({ text: `"${show}"`, show, aside: "title",
                       count: -1, full: true, dim: false });
          }
        }
        const spelled = exact || keys.some((k) => k.toLowerCase() === p);
        out.splice(spelled ? 1 : 0, 0, literalOffer(st.prefix));
        if (out.length > AC_MAX) out.pop();
        return out;
      }
      const dom = domainOf(st.col);
      const onDate = dateColumn(columns().indexOf(st.col));
      const pd = onDate ? compacted(p) : p;
      const dv = onDate ? dateValue(pd) : null;
      const head = dv === null ? "" : dv.op === RANGE ? dv.lo + RANGE : dv.op;
      const p2 = pd.slice(head.length);
      const listed = onDate ? dom.list.concat(DAY_WORD_LIST) : dom.list;
      const domain = head || listed.indexOf(EMPTY_META) !== -1
        ? listed : listed.concat([EMPTY_META]);
      const carried = st.tok.added ? axisCarries(st.tok.key, st.tok) : null;
      /** @type {{text: string, count: number, full: boolean, dim: boolean}|null} */
      let whole = null;
      for (const v of domain) {
        if (whole && out.length >= AC_MAX) break;
        const lower = String(v).toLowerCase(), text = head + String(v);
        if (carried && carried.has(meant(text.toLowerCase()))) continue;
        if (!opensWith(lower, p2)) continue;
        const meta = reserved(String(v), onDate);
        const item = { text, count: meta || head ? -1 : dom.counts.get(lower) || 0,
                       full: true, dim: meta };
        if (spells(lower, p2)) { whole = item; continue; }
        if (out.length < AC_MAX) out.push(item);
      }
      if (onDate)
        for (const op of CMPS.filter((c) => c !== pd && c.startsWith(pd))) {
          if (out.length >= AC_MAX) break;
          out.push({ text: op, count: -1, full: false, dim: true });
        }
      if (onDate) {
        const stem = shiftBase(p2);
        if (stem)
          for (const sign of SHIFT_SIGNS) {
            if (out.length >= AC_MAX) break;
            out.push({ text: head + stem + sign, count: -1, full: false, dim: true });
          }
        const hs = AC_SHIFT.exec(p2);
        const typed = hs ? shiftBase(p2.slice(0, hs.index)) : null;
        if (hs && typed !== null)
          for (const u of UNITS) {
            if (out.length >= AC_MAX) break;
            out.push({ text: head + typed + hs[1] + hs[2] + u,
                       count: -1, full: true, dim: true });
          }
      }
      if (whole) {
        out.unshift(whole);
        if (out.length > AC_MAX) out.pop();
      }
      return out;
    }

    /**
     * @param {string} text
     */
    function literalOffer(text) {
      const value = /[\s:&"]/.test(text) ? `"${text}"` : text;
      const tok = `${SUBSTRING_KEY}:${value}`;
      return { text: tok, show: tok, aside: "text search",
               count: -1, full: true, dim: false };
    }

    /**
     * @type {{titles: {lower: string, cell: Cell|undefined}[]}|null}
     */
    let wordIndex = null;

    function titleIndex() {
      if (wordIndex) return wordIndex;
      const at = titleColumn();
      /** @type {{lower: string, cell: Cell|undefined}[]} */
      const titles = [];
      const seen = new Set();
      const titleKey = at === -1 ? "" : columns()[at].key;
      if (at !== -1)
        for (const r of state.rows) {
          const lower = rowText(r).cells[at];
          if (!lower || seen.has(lower)) continue;
          seen.add(lower);
          titles.push({ lower, cell: (r.cells || {})[titleKey] });
        }
      wordIndex = { titles };
      return wordIndex;
    }

    function closeAc() {
      if (!ac) return;
      ac = null;
      acEl.innerHTML = "";
      acEl.style.display = "none";
    }

    function renderAc() {
      if (!ac) return;
      let html = "";
      for (let i = 0; i < ac.items.length; i++) {
        const it = ac.items[i];
        const label = esc(it.show === undefined ? it.text : it.show);
        html += `<div class="tv-ac-item${it.dim ? " tv-ac-dim" : ""}`
              + `${i === acAt ? " tv-ac-on" : ""}" data-i="${i}">`
              + `<span class="tv-ac-label">${label}</span>`
              + (it.aside ? `<span class="tv-ac-aside">${esc(it.aside)}</span>`
                          : it.count < 0 ? "" : `<span class="tv-ac-n">${it.count}</span>`)
              + `</div>`;
      }
      if (swallowsCtrlN())
        html += `<div class="tv-ac-note">C-n/C-p need Firefox/webview`
              + ` — arrows/Tab work everywhere</div>`;
      acEl.innerHTML = html;
      acEl.style.display = "";
    }

    function openAc() {
      const st = stageAt();
      if (!st) { closeAc(); return; }
      const items = suggestFor(st);
      if (!items.length) { closeAc(); return; }
      ac = { stage: st.stage, tok: st.tok, items };
      acAt = 0;
      renderAc();
    }

    function moveAc(step) {
      if (!ac) return;
      const n = ac.items.length;
      acAt = (acAt + step + n) % n;
      renderAc();
    }

    function acceptAc(item) {
      if (!ac) return;
      const stage = ac.stage;
      const v = input.value, t = ac.tok;
      const bar = v.lastIndexOf(ALT, t.end - 1);
      const arrow = ac.stage === "sort" ? v.lastIndexOf(SORT_ARROW, t.end - 1) : -1;
      const comma = ac.stage === "columns" ? v.lastIndexOf(",", t.end - 1) : -1;
      const head = ac.stage === "key" ? signMark(t)
        : v.slice(t.start, Math.max(t.sep + 1, bar + 1, comma + 1,
                                    arrow === -1 ? 0 : arrow + SORT_ARROW.length));
      const ins = head + item.text + (item.full ? " " : "");
      input.value = v.slice(0, t.start) + ins + v.slice(t.end);
      renderNegation();
      const caret = t.start + ins.length;
      if (input.setSelectionRange) input.setSelectionRange(caret, caret);
      armFilter();
      const selected = asToken(item.text);
      if (stage === "view" || (stage === "key" && selected && selected.key === VIEW_KEY)) {
        if (debounce) { clearTimeout(debounce); debounce = 0; }
        chipUp(true);
        handOver();
        deliver();
        return;
      }
      openAc();          // a key opens its values; a finished value closes the list
    }

    acEl.addEventListener("mousedown", (e) => e.preventDefault());   // the box keeps focus
    acEl.addEventListener("click", (e) => {
      const t = hit(e);
      const item = t && /** @type {HTMLElement|null} */ (t.closest(".tv-ac-item"));
      if (item && ac) acceptAc(ac.items[Number(item.dataset.i)]);
    });
    input.addEventListener("blur", () => {
      closeAc();
      endNarrow();           // the session is the box's; one owner for the flag
      if (dock === "strip") root.classList.remove("tv-typing");
    });

    function flushFilter(all) {
      if (debounce) { clearTimeout(debounce); debounce = 0; }
      chipUp(all);
      deliver();                         // synchronous: Enter waits for no frame
    }

    input.addEventListener("keydown", (e) => {
      if (o.onFilterKey && o.onFilterKey(e)) {
        e.preventDefault();
        e.stopPropagation();
        return;
      }
      if (ac) {
        const down = e.key === "ArrowDown" || (e.ctrlKey && e.key === "n");
        const up = e.key === "ArrowUp" || (e.ctrlKey && e.key === "p");
        const accepts = e.key === "Tab" || e.key === "Enter";
        if (down || up || accepts || e.key === "Escape") {
          e.preventDefault();
          e.stopPropagation();
          if (down) { moveAc(1); return; }
          if (up) { moveAc(-1); return; }
          if (e.key === "Escape") { closeAc(); if (inline) abandonFilter(); return; }
          const taken = ac.items[acAt];
          const finished = taken.full;
          acceptAc(taken);
          if (e.key === "Tab" || !finished) return;
          closeAc();
        }
      }
      if (e.key === "Backspace" && !input.value) {
        e.preventDefault();
        e.stopPropagation();
        if (e.repeat) return;
        if (summoned) { closeFilter(); return; }
        if (inline) { abandonFilter(); return; }
        if (chips.length) dropChip(chips.length - 1);
        else handOver();
        return;
      }
      if (e.key !== "Enter" && e.key !== "Escape") return;
      e.preventDefault();               // and, for Escape, the native search-box clear
      e.stopPropagation();
      if (e.key === "Escape") {
        if (inline) { abandonFilter(); return; }
        if (!(clearNegatedPart() || clearTyped())) closeFilter();
        return;
      }
      if (input.value.trim()) {
        flushFilter(true);              // `chipUp' reads the box, then empties it
        if (input.value.trim()) return;
      } else {
        input.value = "";               // stray whitespace is nothing to commit
        renderNegation();
        if (debounce) { clearTimeout(debounce); debounce = 0; deliver(); }
      }
      handOver();
    });

    veil.addEventListener("mousedown", (e) => {
      if (hit(e) === veil) { e.preventDefault(); closeFilter(); }
    });

    hint.addEventListener("click", (e) => {
      const t = hit(e);
      const step = t && /** @type {HTMLElement|null} */ (t.closest(".tv-pg"));
      if (!step || step.classList.contains("tv-pg-off")) return;
      turnTo(cursorPage() + Number(step.dataset.pg),
             Number(step.dataset.pg) > 0 ? "first" : "last");
    });

    function dropChip(at) {
      chips.splice(at, 1);
      renderChips();
      deliver();
    }

    chipsEl.addEventListener("mousedown", (e) => e.preventDefault());   // box keeps focus
    chipsEl.addEventListener("click", (e) => {
      const t = hit(e);
      if (t && t.closest(".tv-pin")) { if (onPin) onPin(); return; }
      const chip = t && /** @type {HTMLElement|null} */ (t.closest(".tv-chip"));
      // Crumbs have no data-i; Number(undefined) would remove the first chip.
      if (!chip || chip.dataset.i === undefined) return;
      dropChip(Number(chip.dataset.i));
    });
    pinEl.addEventListener("click", () => { if (onPin) onPin(); });


    /**
     * @param {Row[]} arr  @param {Row} row  @param {boolean} filtered
     */
    function place(arr, row, filtered) {
      const at = arr.findIndex((r) => r.id === row.id);
      if (at !== -1) arr.splice(at, 1);
      if (filtered && !matches(row)) return;
      if (!orderCmp) {                     // unsorted: mirror the store's order
        if (at === -1) arr.push(row); else arr.splice(at, 0, row);
        return;
      }
      let lo = 0, hi = arr.length;         // after its equals, like a stable sort
      while (lo < hi) {
        const mid = (lo + hi) >> 1;
        if (orderCmp(row, arr[mid]) < 0) hi = mid; else lo = mid + 1;
      }
      arr.splice(lo, 0, row);
    }

    /** Drop the row with ID from the cached list ARR. @param {Row[]} arr */
    function unplace(arr, id) {
      const at = arr.findIndex((r) => r.id === id);
      if (at !== -1) arr.splice(at, 1);
    }

    // streaming: setQuery seeds chips and delivers nothing — docs/web-renderer.org
    function seedQuery(q) {
      chips.length = 0;
      if (typeof q === "string" && q.trim())
        for (const t of parseQuery(q, queryKeys())) pushChip(q.slice(t.start, t.end));
      renderChips();     // `pushChip' fills the array and draws nothing
      lastQuery = effectiveQuery();
      if (!o.onFilter) state.filter = lastQuery;
      state.sortKeys = chainFor(lastQuery);
    }
    if (typeof o.initialQuery === "string" && o.initialQuery.trim())
      seedQuery(o.initialQuery);
    else renderChips();

    titleEl.textContent = state.view.title || "Table";
    renderHead();
    renderRows(true);
    queueIndex();

    function onTheme() {
      const now = darkNow();
      if (now === dark) return;
      dark = now;
      renderRows(true);
    }
    const themeQuery = typeof matchMedia === "function"
                     ? matchMedia("(prefers-color-scheme: dark)") : null;
    if (themeQuery && themeQuery.addEventListener)
      themeQuery.addEventListener("change", onTheme);
    const themeWatch = typeof MutationObserver === "function" && document.documentElement
                     ? new MutationObserver(onTheme) : null;
    if (themeWatch)
      themeWatch.observe(document.documentElement,
                         { attributes: true, attributeFilter: ["data-theme"] });
    const onResize = () => {
      if (fitWait) return;
      fitWait = frame(() => { fitWait = 0; fitColumns(); });
    };
    if (typeof addEventListener === "function") addEventListener("resize", onResize);

    return {
      el: root,
      /** @param {View} v */
      setView(v) {
        state.view = v || { columns: [] };
        state.rows = (v && v.rows) ? v.rows.slice() : [];
        stated = normalizeSort(v && v.sort);
        state.sortKeys = stated;
        state.selected = null;
        state.selCol = null;
        state.filter = "";
        markSet.ids.clear();     // a different view; these were about the last one
        flagSet.ids.clear();
        crumbs = [];             // and the trail was a path through it
        chips = [];
        input.value = "";
        renderNegation();
        renderChips();
        clearTexts();
        dropSorted();
        widths = null;           // A NEW COLUMN SET: the head fits it (`renderHead')
        titleEl.textContent = state.view.title || "Table";
        renderHead();
        scroll.scrollTop = 0;
        renderRows(true);
      },
      /**
       * @param {Row[]} rows
       */
      setRows(rows) {
        const held = holdEditor();
        state.rows = (rows || []).slice().concat(ownRows());
        placeProducers(state.rows);
        clearTexts();
        dropSorted();
        continuous = false;
        renderRows(true);
        resumeEditor(held);
      },
      /** @param {Row} row */
      upsertRow(row) {
        const i = state.rows.findIndex((r) => r.id === row.id);
        if (i === -1) state.rows.push(row); else state.rows[i] = row;
        texts.delete(row.id);
        dropDomains();
        placeProducers(state.rows);
        if (sorted) { place(sorted, row, false); placeProducers(sorted); }
        if (order && orderCmp) { place(order, row, true); placeProducers(order); }
        else if (order) dropOrder();
        repaint(true);
      },
      /** @param {string} id */
      deleteRow(id) {
        const held = holdEditor();
        state.rows = state.rows.filter((r) => r.id !== id);
        markSet.ids.delete(id);  // the row is gone; a mark on it would outlive it
        flagSet.ids.delete(id);
        texts.delete(id);
        dropDomains();
        if (sorted) { unplace(sorted, id); placeProducers(sorted); }
        if (order) { unplace(order, id); placeProducers(order); }
        renderRows(true);                               // which keeps the place
        resumeEditor(held && held.id !== id ? held : null);
      },
      /** @param {Op[]} ops */
      applyDelta(ops) {
        const held = holdEditor();
        for (const op of ops || []) {
          if (op.op === "reset") {
            // Producer rows are outside the data set replaced by a reset.
            state.rows = (op.rows || []).slice().concat(ownRows());
            clearTexts();
            dropSorted();
            continue;
          }
          // delta op indices count in the window (display order) per SCHEMA.md; with no local sort/filter/page that's the store's own order.
          // Producer rows are excluded from delta indices.
          const win = paged().filter(standing);
          const store = (row) => state.rows.findIndex((r) => r.id === row.id);
          if (op.op === "insert") {
            const at = op.index < win.length ? store(win[op.index]) : -1;
            state.rows.splice(at === -1 ? state.rows.length : at, 0, op.row);
            texts.delete(op.row.id);
          } else if (op.op === "delete") {
            const gone = win[op.index];
            const at = gone ? store(gone) : -1;
            if (at !== -1) {
              texts.delete(gone.id);
              markSet.ids.delete(gone.id);  // as `deleteRow': the row is gone
              flagSet.ids.delete(gone.id);
              state.rows.splice(at, 1);
            }
          }
          dropSorted();
        }
        placeProducers(state.rows);
        dropDomains();
        renderRows(true);
        resumeEditor(held);
      },
      getRows() { return state.rows.slice(); },
      getVisible() { return shownRows().slice(); },
      select: selectRow,
      /**
       * @returns {{id: string|null, col: number|null}}
       */
      getSelection() { return { id: state.selected, col: state.selCol }; },
      /**
       * @param {string} id  @param {number} col  @returns {boolean}
       */
      editCell,
      closeEditor: closeCellEditor,
      /**
       * overlay over. @param {string} id  @param {number} col */
      cellRect,
      /**
       * @returns {{id: string|null, col: number, key: string}|null}
       */
      getEditing,
      /** Open the editor on COL's header. @param {number} col  @returns {boolean} */
      editHeader,
      /**
       * @returns {string}
       */
      getQuery() { return lastQuery; },
      /**
       * @param {Crumb[]} list
       */
      setCrumbs(list) {
        crumbs = [];
        for (const c of list || []) {
          const one = crumbOf(c);
          if (one) crumbs.push(one);
        }
        renderChips();
      },
      /**
       * @returns {Crumb[]}
       */
      getCrumbs() { return crumbs.map((c) => ({ label: c.label, query: c.query })); },
      setPinned(on) { pinned = !!on; renderChips(); },
      setQuery(q) { seedQuery(String(q == null ? "" : q)); },
      /**
       * @param {Crumb} c  @returns {number} how deep the trail is now
       */
      pushCrumb(c) {
        const one = crumbOf(c);
        if (one) { crumbs.push(one); renderChips(); }
        return crumbs.length;
      },
      /**
       * @returns {Crumb|null}
       */
      popCrumb() {
        if (!crumbs.length) return null;
        const gone = crumbs[crumbs.length - 1];
        crumbs.pop();
        renderChips();
        return gone;
      },
      stripLastToken,
      filtering,
      destroy() {
        if (themeQuery && themeQuery.removeEventListener)
          themeQuery.removeEventListener("change", onTheme);
        if (themeWatch) themeWatch.disconnect();
        if (typeof removeEventListener === "function")
          removeEventListener("resize", onResize);
      },
      fitColumns,
      /**
       * @param {string} column @param {boolean} [ascending]
       * @returns {boolean} false when no column carries that key
       */
      sortBy(column, ascending) { return sortTo(column, ascending !== false); },
      /**
       * @param {string} column @returns {boolean} whether the chain moved
       */
      sortPromote,
      /**
       * @returns {SortKey[]}
       */
      getSort() { return state.sortKeys.map((k) => Object.assign({}, k)); },
      /**
       * @param {Sort|Sort[]|SortKey[]|null} [sort]
       */
      setSort(sort) { stated = normalizeSort(sort); applyChain(stated); },
      openFilter,
      closeFilter,
      selectStep,
      /** Turn forward a page, landing on its first row. @returns {boolean} */
      nextPage() { return turnTo(cursorPage() + 1, "first"); },
      /** Turn back a page, landing on its last. @returns {boolean} */
      previousPage() { return turnTo(cursorPage() - 1, "last"); },
      /**
       * @returns {{page: number, pages: number, from: number, to: number, total: number}}
       */
      pageInfo,
      /** Mark ID, or unmark it. @param {string} id  @returns {boolean} its new state */
      toggleMark(id) { return markSet.toggle(id); },
      markAll,
      clearMarks() { markSet.clear(); },
      /** The marked ids: those on show first, then the rest. @returns {string[]} */
      getMarked() { return markSet.list(); },
      /** How many rows are marked, the hidden ones counted. @returns {number} */
      markedCount() { return markSet.ids.size; },
      /** Flag ID, or unflag it. @param {string} id  @returns {boolean} its new state */
      flagRow(id) { return flagSet.toggle(id); },
      /** Take the flag off ID, whether or not it had one. @param {string} id */
      unflagRow(id) { flagSet.drop(id); },
      clearFlags() { flagSet.clear(); },
      /** The flagged ids, ordered like `getMarked'. @returns {string[]} */
      getFlagged() { return flagSet.list(); },
      /** How many rows are flagged, the hidden ones counted. @returns {number} */
      flaggedCount() { return flagSet.ids.size; },
    };
  }

  const TableView = { mount, displayText, comparator, parseQuery };
  root.TableView = TableView;
  // @ts-ignore -- optional CommonJS export (no @types/node dependency)
  if (typeof module !== "undefined" && module.exports) module.exports = TableView;
})(typeof window !== "undefined" ? window : this);

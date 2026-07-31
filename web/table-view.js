/*
 * table-view.js — browser renderer for the table-view contract (see ../SCHEMA.md).
 *
 * Renders a View object as an interactive HTML table: badges, alignment,
 * sortable columns, a substring filter, Org-link cells, action dispatch, and
 * live streaming updates (set-rows / upsert / delete / apply-delta).
 *
 * Dependency-free, theme-aware (light/dark). No build step.
 *
 *   const view = { title, columns, actions, sort, rows };
 *   const tv = TableView.mount(document.querySelector('#app'), view, {
 *     onAction(command, id, row) { ... },   // dispatch, like the Emacs handler alist
 *     onLink(target, row)        { ... },   // follow an Org link (default: open http[s])
 *     onFilter(q)                { ... },   // producer filters; setRows the answer
 *   });
 *   tv.setRows(rows); tv.upsertRow(row); tv.deleteRow(id); tv.applyDelta(ops);
 *   tv.select(id, col);   // select a row (and optionally one cell) -> bool
 *   tv.getSelection();    // { id, col } — col is null for a whole-row selection
 *   tv.getVisible();      // the filtered + sorted rows, in display order
 *
 *   TableView.parseQuery(q, columnKeys)   // SCHEMA.md's filter micro-syntax
 *   // -> [{ negated, key, value, quoted, start, end, sep }, ...]
 *
 * Also emits DOM CustomEvents on the container: `tableview-action`
 * ({detail:{command,id,row}}) and `tableview-link` ({detail:{target,row}}).
 *
 * Rendering (renderer-local; SCHEMA.md's "Not part of the contract"):
 *
 * - The chrome — bar, title, filter chips, filter input, table skeleton, hint —
 *   is built once at mount. Updates touch only the row window, the hint line,
 *   the sort arrows and the chips, so the filter input keeps focus and caret
 *   while typing.
 * - There are no toolbar buttons. Actions render on the hint line as `KEY
 *   label' pairs, the way table-view.el prints its legend: the keys are the
 *   interface, a consumer binds them and dispatches the command, and a button
 *   would only offer a second way to reach what a key already reaches.
 * - Selection is a row and, optionally, one cell of it: `select(id, col)'
 *   stamps `.tv-cell-sel' on that td, `getSelection()' reports both. The column
 *   is clamped to the ones that exist, never wrapped, and `select(id)' with no
 *   column is the whole-row selection this had before. Both classes are
 *   re-derived from the same state on every render, so they survive a scroll, an
 *   upsert and a `setRows' that still carries the id.
 * - Badge cells render as pills: the palette colour tints the ground, marks a
 *   dot and writes the label, so one hue carries the whole thing in either
 *   scheme.
 * - Rows are virtualized. `tbody` holds the scrolled-to window plus ~15 rows of
 *   overscan, between two spacer rows standing in for the height of the rest.
 *   Rows outside the window have no DOM: drive selection with `select(id)`
 *   rather than by reaching for row elements. Zebra striping comes from a class
 *   stamped from the row's global index (`:nth-child` cannot see past the
 *   window). Column widths come from the widest cell in the filtered set, in
 *   `ch` — the renderer's font is monospace — so they hold still while
 *   scrolling.
 * - Row and header events are delegated from the scroll container, attached
 *   once. `tr.click()` still selects a rendered row.
 * - Filter input is debounced 120ms; the row window renders on a rAF. With an
 *   `onFilter' option the debounced query goes to the producer instead and the
 *   rows given are the rows shown — no local narrowing.
 * - The filter box speaks SCHEMA.md's query micro-syntax: `key:value' field
 *   predicates (only where `key' names a column, so `:work:' stays org text),
 *   `"quoted text"', `-negation', everything else free text. Predicates
 *   sharing a key OR together; distinct keys, free text and negations AND.
 *   `TableView.parseQuery' is the tokenizer, exported so a consumer can
 *   highlight the box and a producer can implement the same grammar. Filtering
 *   locally applies the parsed query; with `onFilter' the raw text goes to the
 *   producer and the grammar is its business.
 * - A suggestion list under the box completes it: a bare word suggests column
 *   keys, `key:' suggests that column's value domain (`values', else the badge
 *   palette, else the distinct cell values of the loaded rows), each with the
 *   number of rows behind it. Arrows move, Tab and Enter accept, Esc dismisses;
 *   a click accepts without taking focus. It stays shut when it has nothing to
 *   offer, and inside a quoted token.
 * - A committed token leaves the box and becomes a chip. The query is always
 *   the chips and the box together — chips are where the finished tokens are
 *   kept, not a second filter — so the box holds only what is still being
 *   typed. Enter commits the box whole; a settling debounce commits only the
 *   tokens something follows, so a word is never chipped out from under the
 *   caret. Backspace on an empty box takes the last chip off, a click takes any
 *   chip off, and `onFilter' is handed the whole query joined.
 * - Enter with the suggestion list open accepts a suggestion and stays. With
 *   the list closed it commits whatever is typed to a chip — cancelling the
 *   pending debounce, so the query is delivered exactly once — then selects the
 *   first visible row and blurs. That last part happens every time, in both
 *   modes, and never waits on a producer's reply. A longer query is built by
 *   coming back: the box reopens empty with its chips standing, so
 *   `/ tanik RET / passport RET' is two ANDed tokens, two queries sent, and the
 *   table focused after each RET.
 * - Escape walks out one step at a time: it closes the list if one is open,
 *   else drops what is half-typed, else blurs. Both keys stop there rather than
 *   bubbling into a consumer's own keymap. Nothing else moves focus or the
 *   selection: a debounce firing on its own leaves both where the typist left
 *   them.
 *
 * Type-checked with `// @ts-check` + the JSDoc @typedefs below (no build step);
 * run `make web-check`.  The typedefs are the JS mirror of ../SCHEMA.md.
 * `make web-perf` benchmarks a 13k-row view headlessly (web/perf-driver.js).
 */
// @ts-check

/**
 * @typedef {string|number|null} Cell  A cell value; null/missing render as "".
 * @typedef {{ value: string, color: string }} Badge
 * @typedef {{ key: string,
 *             header?: string,
 *             type?: "text"|"number"|"badge",
 *             align?: "left"|"right",
 *             sortable?: boolean,
 *             badges?: Badge[],
 *             values?: string[],
 *             compare?: string }} Column
 * @typedef {{ key?: string, command: string, label?: string }} Action
 * @typedef {{ column: string, ascending?: boolean, direction?: string }} Sort
 * @typedef {{ column: string, ascending: boolean }} SortKey  A normalized sort key (internal).
 * @typedef {{ id: string, cells?: Record<string, Cell> }} Row
 * @typedef {{ title?: string,
 *             columns: Column[],
 *             actions?: Action[],
 *             sort?: Sort | Sort[],
 *             rows?: Row[] }} View
 * @typedef {{ op: "insert", index: number, row: Row }
 *        | { op: "delete", index: number }
 *        | { op: "reset", rows: Row[] }} Op
 * @typedef {{ onAction?: (command: string, id: string, row: Row) => void,
 *             onLink?: (target: string, row: Row | null) => void,
 *             onFilter?: (q: string) => void }} MountOptions
 * @typedef {{ el: HTMLElement,
 *             setView: (v: View) => void,
 *             setRows: (rows: Row[]) => void,
 *             upsertRow: (row: Row) => void,
 *             deleteRow: (id: string) => void,
 *             applyDelta: (ops: Op[]) => void,
 *             getRows: () => Row[],
 *             getVisible: () => Row[],
 *             select: (id: string, col?: number) => boolean,
 *             getSelection: () => { id: string|null, col: number|null } }} Handle
 *   What `mount' returns.
 * @typedef {{ search: string, len: number[], cells: string[] }} RowText
 *   A row's cached display data: every cell's text lowercased and joined with
 *   \x1f (free-text filtering searches it), each cell's length (column widths),
 *   and the same per-cell strings (field predicates test one column).
 * @typedef {{ negated: boolean,
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

  // ---- helpers -------------------------------------------------------------

  const esc = (s) =>
    String(s).replace(/[&<>"']/g, (c) =>
      ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c]));

  // Org bracket link: [[TARGET][DESC]] or [[TARGET]].
  const ORG_LINK = /\[\[([^\]]+?)\](?:\[([^\]]*?)\])?\]/g;

  // A cell's plain display string (links -> DESC), one line. Used for width,
  // filter and sort so a link column lines up and searches by its description.
  /** @param {Cell|undefined} val  @returns {string} */
  function displayText(val) {
    if (val === null || val === undefined) return "";
    let s = typeof val === "string" ? val : String(val);
    // The scan is the hot path (every cell, every re-measure); skip the link
    // rewrite for the strings that cannot contain one.
    if (s.indexOf("[[") !== -1)
      s = s.replace(ORG_LINK, (_, target, desc) => desc || target);
    return s.replace(/[\u0000-\u001f\u007f]+/g, " ");
  }

  // Cell inner HTML: badge colouring + Org links + escaping.
  /** @param {Column} col  @param {Cell|undefined} val  @returns {string} */
  function cellHTML(col, val) {
    if (col.type === "badge") {
      const raw = displayText(val);
      const badge = (col.badges || []).find((b) => b.value === raw);
      const color = badge && badge.color;
      // A pill: the palette colour tints the ground, marks the dot and writes
      // the label, so one hue carries the whole thing in either scheme. A value
      // the palette does not name stays plain text.
      if (color)
        return `<span class="tv-pill" style="--tv-badge:${esc(color)}">`
             + `<i class="tv-dot"></i>${esc(raw)}</span>`;
      return esc(raw);
    }
    const s = typeof val === "string" ? val : displayText(val);
    // Interleave escaped text with anchors for any Org links.
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

  // ---- filter query --------------------------------------------------------
  // SCHEMA.md's filter micro-syntax, so a producer filtering server-side and a
  // renderer filtering locally answer the same box the same way. Exported as
  // `TableView.parseQuery' — a consumer highlighting the box, and a producer
  // implementing the grammar at the other end, read it from here.

  /** Is C a token separator? `&' is an alias for whitespace. */
  const isSep = (c) => c === "&" || c === " " || c === "\t" || c === "\n";

  /** The first `:' or `=' in S, or -1. @param {string} s */
  function splitAt(s) {
    const a = s.indexOf(":"), b = s.indexOf("=");
    return a === -1 ? b : (b === -1 ? a : Math.min(a, b));
  }

  /**
   * Split Q into raw tokens: quotes removed, a leading `-' taken off, and the
   * offsets of the whole token kept so a caret can be placed inside one.
   * Separators inside quotes are ordinary characters.
   * @param {string} q
   */
  function scanQuery(q) {
    const out = [];
    let start = 0, body = "", neg = false, quoted = false;
    let seen = false, hasBody = false, inQ = false, sep = -1;
    const flush = (end) => {
      if (seen) out.push({ start, end, body, negated: neg, quoted, sep });
      body = ""; neg = false; quoted = false; seen = false; hasBody = false; sep = -1;
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
      } else if (!seen && c === "-") {
        start = i; seen = true; neg = true;
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
   * Q as tokens, against the column KEYS of the view it filters. `key:value'
   * is a field predicate only when KEY names a column, so org cell text like
   * `:work:' or `=code=' stays free text; a quoted token is always free text;
   * a leading `-' negates either form; tokens AND together.
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
        key: pred ? key : null,
        value: pred ? t.body.slice(at + 1) : t.body,
        quoted: t.quoted,
        start: t.start,
        end: t.end,
        sep: pred ? t.sep : -1,
      };
    });
  }

  // ---- sorting -------------------------------------------------------------

  /** @param {Cell|undefined} v  @returns {number|null} */
  const asNumber = (v) => {
    const n = typeof v === "number" ? v : parseFloat(displayText(v));
    return Number.isNaN(n) ? null : n;
  };

  // Ordered domain of a column: explicit `values`, else badge palette order.
  /** @param {Column} col  @returns {string[]|null} */
  function valueOrder(col) {
    if (col.values) return col.values.map(String);
    if (col.type === "badge") return (col.badges || []).map((b) => String(b.value));
    return null;
  }

  // Less-than over raw cell values for a column (mirrors table-view.el).
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

  // ---- component -----------------------------------------------------------

  const OVERSCAN = 15;         // rows rendered above and below the viewport
  const ROW_H = 30;            // row height until a rendered row can be measured
  const CELL_PAD = 24;         // a cell's horizontal padding, both sides
  const PILL_CH = 4;           // a badge pill's dot, gap and ground, in characters
  const DEBOUNCE = 120;        // ms of quiet before a filter keystroke re-renders

  /** Run CB on the next frame (or soon, where there are no frames). */
  const frame = (cb) =>
    typeof requestAnimationFrame === "function" ? requestAnimationFrame(cb)
                                                : setTimeout(cb, 16);

  let styleInjected = false;
  function injectStyle() {
    if (styleInjected) return;
    styleInjected = true;
    const css = `
.tv-root{--tv-fg:#1c1e26;--tv-muted:#6b7280;--tv-bg:#ffffff;--tv-alt:#f6f7f9;
  --tv-border:#e3e6ea;--tv-accent:#3b82f6;--tv-sel:#e8f0fe;
  color:var(--tv-fg);background:var(--tv-bg);font:13px/1.5 ui-monospace,SFMono-Regular,Menlo,Consolas,monospace;
  border:1px solid var(--tv-border);border-radius:8px;overflow:hidden;display:flex;flex-direction:column;max-height:100%}
@media (prefers-color-scheme:dark){.tv-root{--tv-fg:#c8ccd4;--tv-muted:#8b93a7;--tv-bg:#1a1b26;
  --tv-alt:#1f2130;--tv-border:#2a2d3d;--tv-accent:#7aa2f7;--tv-sel:#26304d}}
:root[data-theme="dark"] .tv-root{--tv-fg:#c8ccd4;--tv-muted:#8b93a7;--tv-bg:#1a1b26;
  --tv-alt:#1f2130;--tv-border:#2a2d3d;--tv-accent:#7aa2f7;--tv-sel:#26304d}
:root[data-theme="light"] .tv-root{--tv-fg:#1c1e26;--tv-muted:#6b7280;--tv-bg:#ffffff;
  --tv-alt:#f6f7f9;--tv-border:#e3e6ea;--tv-accent:#3b82f6;--tv-sel:#e8f0fe}
.tv-bar{display:flex;align-items:center;gap:10px;padding:8px 12px;border-bottom:1px solid var(--tv-border);flex-wrap:wrap}
.tv-title{font-weight:600;font-size:14px;margin-right:auto}
.tv-filter{font:inherit;padding:4px 8px;border:1px solid var(--tv-border);border-radius:6px;
  background:var(--tv-bg);color:var(--tv-fg);min-width:140px}
.tv-filter-wrap{position:relative;display:flex}
.tv-chips{display:flex;flex-wrap:wrap;gap:5px;align-items:center}
.tv-chip{display:inline-flex;align-items:center;gap:5px;padding:1px 4px 1px 8px;
  border-radius:999px;font-size:12px;cursor:pointer;color:var(--tv-fg);
  border:1px solid var(--tv-border);background:var(--tv-alt)}
.tv-chip:hover{border-color:var(--tv-accent);color:var(--tv-accent)}
.tv-chip-x{font-style:normal;opacity:.55;padding:0 3px}
.tv-chip:hover .tv-chip-x{opacity:1}
/* The suggestion list hangs under the box, over the table. .tv-root clips with
   overflow:hidden, so it scrolls internally rather than growing past it. */
.tv-ac{position:absolute;top:100%;left:0;min-width:100%;z-index:5;margin-top:2px;
  max-height:min(288px,40vh);overflow-y:auto;background:var(--tv-bg);
  border:1px solid var(--tv-border);border-radius:6px;box-shadow:0 4px 12px #0003}
.tv-ac-item{display:flex;justify-content:space-between;align-items:baseline;gap:14px;
  padding:3px 10px;white-space:nowrap;cursor:pointer;color:var(--tv-fg)}
.tv-ac-n{color:var(--tv-muted);font-variant-numeric:tabular-nums}
.tv-ac-item:hover{color:var(--tv-accent)}
.tv-ac-on{background:var(--tv-sel);color:var(--tv-accent)}
.tv-scroll{overflow:auto}
.tv-table{border-collapse:collapse;width:100%}
.tv-table th,.tv-table td{padding:5px 12px;text-align:left;white-space:nowrap;
  border-bottom:1px solid var(--tv-border)}
.tv-table th{position:sticky;top:0;background:var(--tv-bg);font-weight:600;color:var(--tv-muted);
  user-select:none;z-index:1}
.tv-table th.tv-sortable{cursor:pointer}
.tv-table th.tv-sortable:hover{color:var(--tv-accent)}
.tv-table td.tv-right,.tv-table th.tv-right{text-align:right;font-variant-numeric:tabular-nums}
.tv-table tbody tr.tv-alt{background:var(--tv-alt)}
.tv-table tbody tr.tv-sel{background:var(--tv-sel)}
.tv-table tbody td.tv-cell-sel{box-shadow:inset 0 0 0 1px var(--tv-accent);border-radius:3px}
.tv-table tbody tr{cursor:default}
.tv-table tbody tr.tv-pad td{padding:0;border:0}
.tv-pill{display:inline-flex;align-items:center;gap:5px;padding:0 8px;border-radius:999px;
  font-weight:600;color:var(--tv-badge);
  background:color-mix(in srgb,var(--tv-badge) 15%,transparent)}
.tv-dot{flex:none;width:6px;height:6px;border-radius:50%;background:var(--tv-badge)}
.tv-link{color:var(--tv-accent);text-decoration:underline}
.tv-arrow{margin-left:4px;opacity:.7}
.tv-empty{padding:16px 12px;color:var(--tv-muted)}
.tv-hint{padding:6px 12px;border-top:1px solid var(--tv-border);color:var(--tv-muted);font-size:12px}
.tv-key{color:var(--tv-fg);font-weight:600}`;
    const el = document.createElement("style");
    el.textContent = css;
    document.head.appendChild(el);
  }

  /**
   * Mount a table-view into CONTAINER; return a live handle (the streaming API).
   * @param {Element} container
   * @param {View} view
   * @param {MountOptions} [opts]
   * @returns {Handle}
   */
  function mount(container, view, opts) {
    injectStyle();
    const o = opts || {};   // narrowing sticks in closures (a reassigned param would not)
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

    // ---- caches ------------------------------------------------------------
    // Two row lists stand between the store and the window. `sorted' is every
    // row in sort order; `order' is `sorted' under the filter, and is what the
    // window renders from. A filter change re-derives `order' alone, so typing
    // never re-sorts; upsert and delete splice both in place; a rows or sort
    // change drops both. A selection change touches neither.

    /** @type {Row[]|null} */
    let sorted = null;
    /** @type {Row[]|null} */
    let order = null;
    /**
     * The compiled query `order' was filtered by; null when unfiltered. An
     * upsert asks it whether the row still belongs.
     * @type {((r: Row) => boolean)|null}
     */
    let orderTest = null;
    /**
     * The comparator `sorted' is in, for binary-inserting an upsert.
     * @type {((a: Row, b: Row) => number)|null}
     */
    let orderCmp = null;
    /**
     * Max display length per column over `order'; null when stale.
     * @type {number[]|null}
     */
    let widths = null;
    /** @type {Map<string, RowText>} */
    const texts = new Map();
    /**
     * A column's distinct cell values, for the suggestion list — computed on
     * demand and thrown away with the text cache, since the rows are what it
     * was read off.
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

    /** Forget the cached display data, and the value domains read off it. */
    function clearTexts() { texts.clear(); domains.clear(); }

    /** Drop the filtered list (and the widths it implies). */
    function dropOrder() { order = null; widths = null; }
    /** Drop the sort too: the rows, the columns or the sort keys moved. */
    function dropSorted() { dropOrder(); sorted = null; orderCmp = null; }

    // ---- persistent chrome -------------------------------------------------
    // Built once. Only the tbody window, the hint, the sort arrows and the
    // buttons' disabled state change afterwards, so the filter input — never
    // recreated — keeps focus and caret across every update.

    const root = document.createElement("div");
    root.className = "tv-root";
    container.innerHTML = "";
    container.appendChild(root);

    const bar = document.createElement("div");
    bar.className = "tv-bar";
    const titleEl = document.createElement("span");
    titleEl.className = "tv-title";
    const input = document.createElement("input");
    input.className = "tv-filter";
    input.type = "search";
    input.placeholder = "filter…";
    // The box and its suggestion list travel together, so the list can be
    // positioned against the box and nothing else.
    const chipsEl = document.createElement("div");
    chipsEl.className = "tv-chips";
    chipsEl.style.display = "none";
    const filterWrap = document.createElement("div");
    filterWrap.className = "tv-filter-wrap";
    const acEl = document.createElement("div");
    acEl.className = "tv-ac";
    acEl.style.display = "none";
    filterWrap.appendChild(input);
    filterWrap.appendChild(acEl);
    bar.appendChild(titleEl);
    bar.appendChild(chipsEl);
    bar.appendChild(filterWrap);

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

    root.appendChild(bar);
    root.appendChild(scroll);
    root.appendChild(hint);

    /** Per-column <col>, one per column. @type {HTMLElement[]} */
    let colEls = [];
    /** Per-column sort arrow, one per column. @type {HTMLElement[]} */
    let arrowEls = [];

    // Measured geometry and the window currently in the tbody.
    const geom = { row: ROW_H, head: ROW_H };
    const win = { first: -1, last: -1 };
    let remeasuring = false;

    /**
     * @param {Sort|Sort[]|undefined} sort
     * @returns {SortKey[]}
     */
    function normalizeSort(sort) {
      if (!sort) return [];
      const list = Array.isArray(sort) ? sort : [sort];
      return list
        .filter((s) => s && s.column)
        .map((s) => ({ column: s.column, ascending: s.ascending !== false }));
    }

    function columns() { return state.view.columns || []; }
    function actions() { return state.view.actions || []; }
    function colByKey(k) { return columns().find((c) => c.key === k); }

    // ---- order: filter, sort, widths ---------------------------------------

    /**
     * One comparator for the whole sort chain, built once per re-sort: each
     * column's comparator is resolved here, then reused for every comparison.
     * @returns {((a: Row, b: Row) => number)|null}
     */
    function chainComparator() {
      /** @type {{key: string, cmp: (a: Cell|undefined, b: Cell|undefined) => number, sign: number}[]} */
      const keys = [];
      for (const sk of state.sortKeys) {
        const col = colByKey(sk.column);
        if (col) keys.push({ key: sk.column, cmp: comparator(col), sign: sk.ascending ? 1 : -1 });
      }
      if (!keys.length) return null;
      if (keys.length === 1) {
        const k = keys[0];
        return (a, b) => k.sign * k.cmp((a.cells || {})[k.key], (b.cells || {})[k.key]);
      }
      return (a, b) => {
        for (const k of keys) {
          const c = k.cmp((a.cells || {})[k.key], (b.cells || {})[k.key]);
          if (c) return k.sign * c;
        }
        return 0;
      };
    }

    /** The column keys `parseQuery' resolves predicates against. */
    const columnKeys = () => columns().map((c) => c.key);

    /** An ISO-ish date cell, which SCHEMA gives prefix matching. */
    const DATEISH = /^\d{4}-\d{2}(-\d{2})?([ T]\d{2}:\d{2})?$/;

    /**
     * Does column I hold dates? Decided once per query off a sample rather than
     * per cell, so a date column costs no regex in the filter loop. A column
     * whose first 20 non-empty cells are ISO dates counts as one.
     * @param {number} i
     */
    function dateColumn(i) {
      let seen = 0;
      for (const r of state.rows) {
        const s = rowText(r).cells[i];
        if (!s) continue;
        if (!DATEISH.test(s)) return false;
        if (++seen >= 20) break;
      }
      return seen > 0;
    }

    /**
     * TOK as a row test, negation aside — `queryMatcher' applies that, since
     * where a token lands in the AND/OR shape depends on it. Free text is a
     * substring of the whole row; a field predicate reads one cell, by SCHEMA's
     * semantics for that column's type.
     * @param {Token} tok  @returns {(r: Row) => boolean}
     */
    function tokenTest(tok) {
      const col = tok.key === null ? null : colByKey(tok.key);
      const v = tok.value.toLowerCase();
      if (!col)
        // The cached joined string, which is the hot path and the reason the
        // pure-free-text query costs exactly what it did before.
        return v ? (r) => rowText(r).search.includes(v) : () => true;
      const i = columns().indexOf(col);
      // `key:' with nothing after it yet — the half-typed state the suggestion
      // list exists to serve — narrows nothing, whatever the column's type.
      // Asking for an empty cell is what `none' is for.
      if (!v) return () => true;
      if (v === "none") return (r) => rowText(r).cells[i] === "";
      if (col.type === "badge") return (r) => rowText(r).cells[i] === v;
      if (dateColumn(i)) return (r) => rowText(r).cells[i].startsWith(v);
      return (r) => rowText(r).cells[i].includes(v);
    }

    /**
     * Q compiled to a row test, or null when it filters nothing. Built once per
     * filter change and reused for every row.
     *
     * SCHEMA's shape: predicates sharing one key OR together — `state:TODO
     * state:DONE' is either — while distinct keys and free text AND, and a
     * negation ANDs whatever it is. So the positive predicates group by key,
     * each group passes on any member, and everything else stands on its own.
     * @param {string} q  @returns {((r: Row) => boolean)|null}
     */
    function queryMatcher(q) {
      /** @type {Map<string, ((r: Row) => boolean)[]>} */
      const groups = new Map();
      /** @type {((r: Row) => boolean)[]} */
      const musts = [];
      for (const tok of parseQuery(q, columnKeys())) {
        const test = tokenTest(tok);
        if (tok.negated) musts.push((r) => !test(r));
        else if (tok.key === null) musts.push(test);
        else {
          const g = groups.get(tok.key);
          if (g) g.push(test); else groups.set(tok.key, [test]);
        }
      }
      for (const g of groups.values())
        musts.push(g.length === 1 ? g[0] : (r) => {
          for (const t of g) if (t(r)) return true;
          return false;
        });
      if (!musts.length) return null;
      if (musts.length === 1) return musts[0];
      return (r) => {
        for (const t of musts) if (!t(r)) return false;
        return true;
      };
    }

    /** The rows to display: sorted, then filtered. Cached. @returns {Row[]} */
    function ordered() {
      if (order) return order;
      if (!sorted) {
        orderCmp = chainComparator();
        sorted = state.rows.slice();     // never sort the store itself
        if (orderCmp) sorted.sort(orderCmp);
      }
      orderTest = queryMatcher(state.filter);
      order = orderTest ? sorted.filter(orderTest) : sorted.slice();
      widths = null;
      return order;
    }

    /** Whether ROW passes the current filter. @param {Row} r */
    function matches(r) { return !orderTest || orderTest(r); }

    /**
     * Column widths in characters: the widest cell in the filtered set, and the
     * header (plus its sort arrow). @returns {number[]}
     */
    function colWidths() {
      if (widths) return widths;
      const cols = columns(), primary = state.sortKeys[0];
      const w = cols.map((c) =>
        String(c.header || c.key).length + (primary && primary.column === c.key ? 2 : 0));
      for (const r of ordered()) {
        const len = rowText(r).len;
        for (let i = 0; i < w.length; i++) if (len[i] > w[i]) w[i] = len[i];
      }
      // A badge cell draws a pill around its text, which the cached length
      // knows nothing about: the dot, its gap and the ground's padding.
      for (let i = 0; i < cols.length; i++) if (cols[i].type === "badge") w[i] += PILL_CH;
      widths = w;
      return w;
    }

    /** Widen the cached widths for ROW (an upsert can only add text). */
    function growWidths(r) {
      if (!widths) return;
      const len = rowText(r).len;
      for (let i = 0; i < widths.length; i++) if (len[i] > widths[i]) widths[i] = len[i];
    }

    function applyWidths() {
      const w = colWidths();
      for (let i = 0; i < colEls.length; i++) {
        // `ch' is exact in the monospace face the renderer sets; a consumer that
        // overrides it with a proportional font gets a hint, and the table's own
        // min-content width still wins.
        const px = `calc(${w[i]}ch + ${CELL_PAD}px)`;
        if (colEls[i].style.width !== px) colEls[i].style.width = px;
      }
    }

    // ---- rendering ---------------------------------------------------------

    /** Rebuild the colgroup and the header row (mount, and a view change). */
    function renderHead() {
      colgroup.innerHTML = "";
      headRow.innerHTML = "";
      colEls = [];
      arrowEls = [];
      for (const c of columns()) {
        const col = document.createElement("col");
        colgroup.appendChild(col);
        colEls.push(col);

        const th = document.createElement("th");
        th.className = (c.sortable === true ? "tv-sortable" : "")
          + (c.align === "right" ? " tv-right" : "");
        th.dataset.key = c.key;
        th.textContent = String(c.header || c.key);
        const arrow = document.createElement("span");
        arrow.className = "tv-arrow";
        th.appendChild(arrow);
        headRow.appendChild(th);
        arrowEls.push(arrow);
      }
      renderArrows();
    }

    /** Point the sort arrow at the primary sort column, and hide the rest. */
    function renderArrows() {
      const primary = state.sortKeys[0], cols = columns();
      for (let i = 0; i < arrowEls.length; i++) {
        const on = !!primary && primary.column === cols[i].key;
        arrowEls[i].textContent = on ? (primary.ascending ? "▲" : "▼") : "";
        arrowEls[i].style.display = on ? "" : "none";   // no empty arrow's margin
      }
    }


    /**
     * A row's <tr>. I is its index in the display order: zebra striping is
     * stamped from it, since `:nth-child' sees only the window.
     * @param {Row} r  @param {number} i  @returns {string}
     */
    function rowHTML(r, i) {
      const cols = columns(), cs = r.cells || {};
      const on = r.id === state.selected;
      let tds = "";
      for (let c = 0; c < cols.length; c++) {
        const cell = (cols[c].align === "right" ? "tv-right" : "")
                   + (on && c === state.selCol ? " tv-cell-sel" : "");
        tds += `<td class="${cell}">${cellHTML(cols[c], cs[cols[c].key])}</td>`;
      }
      const cls = (i % 2 ? " tv-alt" : "") + (on ? " tv-sel" : "");
      return `<tr class="${cls}" data-id="${esc(r.id)}">${tds}</tr>`;
    }

    /** A spacer row H pixels tall, standing in for the rows outside the window. */
    function padHTML(h) {
      return `<tr class="tv-pad" style="height:${h}px"><td colspan="${columns().length}"></td></tr>`;
    }

    /**
     * Render the window of rows around the scroll position, with the hint,
     * widths and empty state that go with it. FORCE redraws even when the
     * window has not moved (the rows themselves changed).
     * @param {boolean} [force]
     */
    function renderRows(force) {
      const rows = ordered();
      const total = rows.length;
      const rowH = geom.row;
      const port = scroll.clientHeight || rowH * 20;   // before layout: a screenful
      // Row I sits at geom.head + I * rowH in the scroller; the overscan covers
      // the rounding and the band the sticky header hides.
      const top = Math.max(0, (scroll.scrollTop || 0) - geom.head);
      const first = Math.max(0, Math.floor(top / rowH) - OVERSCAN);
      const last = Math.min(total, first + Math.ceil(port / rowH) + OVERSCAN * 2);
      if (!force && first === win.first && last === win.last) return;
      win.first = first;
      win.last = last;

      let html = first > 0 ? padHTML(first * rowH) : "";
      for (let i = first; i < last; i++) html += rowHTML(rows[i], i);
      if (last < total) html += padHTML((total - last) * rowH);
      tbody.innerHTML = html;

      applyWidths();
      table.style.display = total ? "" : "none";
      empty.style.display = total ? "none" : "";
      hint.innerHTML = hintHTML(total);
      measure();
    }

    /** Re-read the row and header heights the spacers are sized from. */
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

    /**
     * The status line: what is on show, how it is sorted, and the actions as
     * `KEY label' pairs — the way table-view.el prints its legend. The keys are
     * the interface; a consumer binds them and dispatches the command, and the
     * renderer offers no button to press instead.
     */
    function hintHTML(shown) {
      const total = state.rows.length;
      const count = shown === total ? `${total} rows` : `${shown}/${total} rows`;
      const s = state.sortKeys[0];
      const sort = s ? `sort ${s.column} ${s.ascending ? "asc" : "desc"}` : "unsorted";
      let out = `${esc(count)} · ${esc(sort)}`;
      for (const a of actions()) {
        if (!a.key) continue;
        out += ` · <b class="tv-key">${esc(a.key)}</b> ${esc(a.label || a.command)}`;
      }
      return out;
    }

    /**
     * COL clamped to a real column index, or null for a whole-row selection.
     * Clamped rather than wrapped: walking off the last column stays there,
     * which is what a table does.
     * @param {number|null|undefined} col  @returns {number|null}
     */
    function clampCol(col) {
      if (col === null || col === undefined) return null;
      const n = columns().length;
      if (!n) return null;
      return Math.max(0, Math.min(n - 1, Math.trunc(col)));
    }

    /**
     * Move the selection to row ID, and within it to column COL — or to no
     * column at all, which is the whole-row look this had before cells were
     * selectable. Stamps the window in place; the classes are re-derived from
     * the same state on every render, so a scroll, an upsert or a `setRows'
     * puts them back on whatever row still carries the id.
     * @param {string|null} id  @param {number|null} [col]
     */
    function setSelected(id, col) {
      state.selected = id ?? null;
      state.selCol = id === null || id === undefined ? null : clampCol(col);
      for (let i = 0; i < tbody.children.length; i++) {
        const tr = /** @type {HTMLElement} */ (tbody.children[i]);
        if (tr.dataset.id === undefined) continue;
        const on = tr.dataset.id === id;
        tr.classList.toggle("tv-sel", on);
        for (let c = 0; c < tr.children.length; c++)
          tr.children[c].classList.toggle("tv-cell-sel", on && c === state.selCol);
      }
    }

    /**
     * Scroll the row at index I into view, the way `block: "nearest"' would —
     * clear of the sticky header, which covers the top of the scroller.
     */
    function scrollTo(i) {
      const rowH = geom.row, port = scroll.clientHeight || 0;
      const top = geom.head + i * rowH;          // the row's offset in the scroller
      if (top - geom.head < scroll.scrollTop) scroll.scrollTop = top - geom.head;
      else if (port && top + rowH > scroll.scrollTop + port)
        scroll.scrollTop = top + rowH - port;
    }

    /**
     * Select the row with ID, scrolling its place in the (virtual) list into
     * view. Rows outside the rendered window have no element to click, so this
     * is how a consumer moves the selection. False when no visible row has that
     * id — a filtered-out row does not steal the selection.
     *
     * COL selects one cell of that row, clamped to the columns that exist;
     * omitted, the selection is the whole row, which is what it always was.
     * @param {string} id  @param {number} [col]  @returns {boolean}
     */
    function selectRow(id, col) {
      const rows = ordered();
      const i = rows.findIndex((r) => r.id === id);
      if (i === -1) return false;
      scrollTo(i);
      state.selCol = clampCol(col);          // so the redraw stamps the cell too
      renderRows(true);
      setSelected(id, col);
      return true;
    }

    /**
     * Put the selection on the first visible row, unless it is already on one.
     * What Enter in the filter box hands the table, so the keys a consumer
     * binds to rows have something to move from.
     */
    function selectFirstVisible() {
      const rows = ordered();
      if (!rows.length) return;
      if (state.selected !== null && rows.some((r) => r.id === state.selected)) return;
      selectRow(rows[0].id, state.selCol ?? undefined);
    }

    function toggleSort(key) {
      const col = colByKey(key);
      if (!col || col.sortable !== true) return;
      const primary = state.sortKeys[0];
      state.sortKeys = (primary && primary.column === key)
        ? [{ column: key, ascending: !primary.ascending }]
        : [{ column: key, ascending: true }];
      dropSorted();
      scroll.scrollTop = 0;
      renderArrows();
      renderRows(true);
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

    /** Where an event landed (clicks always land on an element).
     * @param {Event} e  @returns {Element|null} */
    const hit = (e) => /** @type {Element|null} */ (e.target);
    /** @param {Row[]} rows  @param {HTMLElement} tr */
    const rowOf = (rows, tr) => rows.find((r) => r.id === tr.dataset.id);

    // ---- events (delegated, attached once) ---------------------------------

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
      if (th) { toggleSort(th.dataset.key); return; }
      const tr = /** @type {HTMLElement|null} */ (t.closest("tr[data-id]"));
      if (!tr) return;
      const td = /** @type {HTMLElement|null} */ (t.closest("td"));
      const at = td ? Array.prototype.indexOf.call(tr.children, td) : -1;
      setSelected(tr.dataset.id ?? null, at === -1 ? null : at);
    });

    scroll.addEventListener("dblclick", (e) => {
      const t = hit(e);
      const tr = t && /** @type {HTMLElement|null} */ (t.closest("tr[data-id]"));
      if (!tr) return;
      const cmd = defaultCommand();
      if (cmd) dispatch(cmd, rowOf(state.rows, tr));
    });

    let pending = 0;
    function scheduleWindow() {
      if (pending) return;
      pending = frame(() => { pending = 0; renderRows(); });
    }
    scroll.addEventListener("scroll", scheduleWindow);

    // ---- chips -------------------------------------------------------------
    // A committed token leaves the box and becomes a chip. The query is the
    // chips and the box together, always — chips are where the finished tokens
    // are kept, not a second filter — so the box holds only what is still being
    // typed and a long query stops scrolling out of sight.

    /** The committed tokens, each the source text it was written as. */
    /** @type {string[]} */
    let chips = [];

    /** The query as it stands: every chip, then whatever is in the box. */
    function effectiveQuery() {
      const typed = input.value.trim();
      if (!chips.length) return typed;
      const front = chips.join(" ");
      return typed ? front + " " + typed : front;
    }

    function renderChips() {
      let html = "";
      for (let i = 0; i < chips.length; i++)
        html += `<span class="tv-chip" data-i="${i}" title="remove">${esc(chips[i])}`
              + `<i class="tv-chip-x">×</i></span>`;
      chipsEl.innerHTML = html;
      chipsEl.style.display = chips.length ? "" : "none";
    }

    /**
     * Move the box's finished tokens into chips. A token with nothing after it
     * is still being typed and stays put, so a word is never chipped out from
     * under the caret; ALL overrides that, which is what Enter means.
     * @param {boolean} [all]  @returns {boolean} whether anything moved
     */
    function chipUp(all) {
      const v = input.value;
      const toks = parseQuery(v, columnKeys());
      if (!toks.length) return false;
      const last = toks[toks.length - 1];
      const keep = !all && last.end === v.length ? last : null;
      for (const t of toks) if (t !== keep) chips.push(v.slice(t.start, t.end));
      if (keep && toks.length === 1) return false;      // nothing finished yet
      input.value = keep ? v.slice(keep.start) : "";
      if (input.setSelectionRange) input.setSelectionRange(input.value.length, input.value.length);
      renderChips();
      return true;
    }

    /** Adopt the query as it stands: re-filter, and redraw from the top. */
    function applyFilter() {
      const v = effectiveQuery();
      if (v === state.filter) return;
      state.filter = v;
      dropOrder();                       // `sorted' stands: only the filter moved
      scroll.scrollTop = 0;
      renderRows(true);
    }

    // With `onFilter', the producer narrows the rows and this hands it the
    // query instead of filtering locally: `state.filter' stays empty, so
    // `order' is `sorted' and the rows given are the rows shown. Either way it
    // is the whole query — chips and box joined — that travels.
    function deliver() {
      if (o.onFilter) o.onFilter(effectiveQuery());
      else applyFilter();
    }

    let debounce = 0;
    function armFilter() {
      if (debounce) clearTimeout(debounce);
      debounce = setTimeout(() => {
        debounce = 0;
        chipUp(false);
        if (o.onFilter) o.onFilter(effectiveQuery());
        else frame(applyFilter);
      }, DEBOUNCE);
    }
    input.addEventListener("input", () => { armFilter(); openAc(); });

    // ---- the suggestion list -----------------------------------------------
    // SCHEMA.md's autocomplete: a bare word suggests column keys, `key:'
    // suggests that column's value domain. Renderer-local — the producer is
    // never asked, and the list is only ever an aid to typing the grammar.

    const AC_MAX = 12;          // suggestions offered at once
    const DOMAIN_MAX = 200;     // distinct values kept before the prefix narrows them

    /** @type {{stage: string, tok: Token, items: {text: string, count: number}[]}|null} */
    let ac = null;
    let acAt = 0;

    /**
     * COL's value domain, and how many rows stand behind each value.
     *
     * The order is the column's own where it has one — `values', else the badge
     * palette — because that order is semantic (it is the sort order too);
     * distinct cell values have none, so they sort. The counts come from one
     * pass over every row, which is what makes them counts rather than
     * estimates; `displayText' runs once per distinct value rather than once
     * per row, the cell text itself being cached already. The pass is lazy,
     * per column, and thrown away with the text cache.
     * @returns {{list: string[], counts: Map<string, number>}}
     */
    function domainOf(col) {
      let d = domains.get(col.key);
      if (!d) {
        const i = columns().indexOf(col);
        const counts = new Map();
        const found = [];
        for (const r of state.rows) {
          const lower = rowText(r).cells[i];
          if (!lower) continue;
          const n = counts.get(lower);
          if (n !== undefined) { counts.set(lower, n + 1); continue; }
          counts.set(lower, 1);
          if (found.length < DOMAIN_MAX) found.push(displayText((r.cells || {})[col.key]));
        }
        const fixed = valueOrder(col);
        d = { list: fixed || found.sort(), counts };
        domains.set(col.key, d);
      }
      return d;
    }

    /** The token the caret sits in, or null. @returns {Token|null} */
    function tokenAtCaret() {
      const v = input.value;
      const caret = typeof input.selectionStart === "number" ? input.selectionStart : v.length;
      for (const t of parseQuery(v, columnKeys()))
        if (caret >= t.start && caret <= t.end) return t;
      return null;
    }

    /**
     * What the token under the caret is asking for, or null when it asks for
     * nothing: a quoted token is free text and takes no suggestions, and so
     * does one carrying punctuation that named no column — `:work:' is org
     * text, not a half-typed predicate.
     * @returns {{stage: string, tok: Token, col: Column|null, prefix: string}|null}
     */
    function stageAt() {
      const t = tokenAtCaret();
      if (!t || t.quoted) return null;
      if (t.key !== null) {
        const col = colByKey(t.key);
        return col ? { stage: "value", tok: t, col, prefix: t.value } : null;
      }
      if (!t.value || splitAt(t.value) !== -1) return null;
      return { stage: "key", tok: t, col: null, prefix: t.value };
    }

    /**
     * The suggestions for STAGE: the text each one inserts, and for a value the
     * number of rows it would match. A key stage carries no count — completing
     * to `key:' narrows nothing on its own.
     * @returns {{text: string, count: number}[]}
     */
    function suggestFor(st) {
      const p = st.prefix.toLowerCase();
      const out = [];
      if (!st.col) {
        for (const k of columnKeys()) {
          if (!k.toLowerCase().startsWith(p)) continue;
          out.push({ text: k + ":", count: -1 });
          if (out.length === AC_MAX) break;
        }
        return out;
      }
      const dom = domainOf(st.col);
      for (const v of dom.list) {
        const lower = String(v).toLowerCase();
        if (!lower.startsWith(p)) continue;
        out.push({ text: String(v), count: dom.counts.get(lower) || 0 });
        if (out.length === AC_MAX) break;
      }
      return out;
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
        html += `<div class="tv-ac-item${i === acAt ? " tv-ac-on" : ""}" data-i="${i}">`
              + `<span class="tv-ac-label">${esc(it.text)}</span>`
              + (it.count < 0 ? "" : `<span class="tv-ac-n">${it.count}</span>`)
              + `</div>`;
      }
      acEl.innerHTML = html;
      acEl.style.display = "";
    }

    /** Offer what the caret is asking for, or close when that is nothing. */
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
      acAt = (acAt + step + ac.items.length) % ac.items.length;
      renderAc();
    }

    /**
     * Put TEXT in place of the token under the caret, leaving the rest of the
     * box alone. A key lands as `key:' with the caret against the colon, ready
     * for the value; a value lands with a trailing space, ready for the next
     * token. Focus stays in the box either way.
     */
    function acceptAc(text) {
      if (!ac) return;
      const v = input.value, t = ac.tok;
      const head = ac.stage === "key" ? (t.negated ? "-" : "") : v.slice(t.start, t.sep + 1);
      const ins = head + text + (ac.stage === "key" ? "" : " ");
      input.value = v.slice(0, t.start) + ins + v.slice(t.end);
      const caret = t.start + ins.length;
      if (input.setSelectionRange) input.setSelectionRange(caret, caret);
      armFilter();
      openAc();          // a key opens its values; a finished value closes the list
    }

    acEl.addEventListener("mousedown", (e) => e.preventDefault());   // the box keeps focus
    acEl.addEventListener("click", (e) => {
      const t = hit(e);
      const item = t && /** @type {HTMLElement|null} */ (t.closest(".tv-ac-item"));
      if (item && ac) acceptAc(ac.items[Number(item.dataset.i)].text);
    });
    input.addEventListener("blur", closeAc);

    /**
     * Apply the box now, cancelling whatever the debounce still owes — so the
     * query reaches the producer (or the local filter) exactly once, with the
     * text as it stands rather than as it stood a keystroke ago.
     */
    function flushFilter(all) {
      if (debounce) { clearTimeout(debounce); debounce = 0; }
      chipUp(all);
      deliver();                         // synchronous: Enter waits for no frame
    }

    // Enter applies and hands the table over; Escape clears and steps out of
    // the box. Both are the input's own keys — they are stopped here rather
    // than left to bubble into a consumer's document-level keymap, the way a
    // focused text field claims Enter anywhere else on the web. Nothing else
    // touches focus or the selection: a debounce firing on its own leaves both
    // exactly where the typist left them.
    //
    // The suggestion list gets first refusal, which is SCHEMA.md's precedence:
    // arrows and Tab drive it, Enter accepts a suggestion rather than applying
    // the filter, and Esc dismisses the list "before it clears anything" — so
    // the first Esc closes the list and the second does what it does here.
    input.addEventListener("keydown", (e) => {
      if (ac) {
        const taken = e.key === "ArrowDown" || e.key === "ArrowUp"
                   || e.key === "Tab" || e.key === "Enter" || e.key === "Escape";
        if (taken) {
          e.preventDefault();
          e.stopPropagation();
          if (e.key === "ArrowDown") moveAc(1);
          else if (e.key === "ArrowUp") moveAc(-1);
          else if (e.key === "Escape") closeAc();
          else acceptAc(ac.items[acAt].text);
          return;
        }
      }
      // The box empty, Backspace takes the last chip back off — the keyboard
      // way to undo a commit, since a chip is otherwise a mouse target.
      if (e.key === "Backspace" && !input.value && chips.length) {
        e.preventDefault();
        e.stopPropagation();
        chips.pop();
        renderChips();
        deliver();
        return;
      }
      if (e.key !== "Enter" && e.key !== "Escape") return;
      e.preventDefault();               // and, for Escape, the native search-box clear
      e.stopPropagation();
      if (e.key === "Escape") {
        // Escape walks out one step at a time: the half-typed token first, the
        // box's focus only once there is nothing left in it to drop.
        if (input.value) { input.value = ""; closeAc(); deliver(); }
        else input.blur();
        return;
      }
      // Enter commits whatever is typed and hands the table back, every time.
      // A longer query is built by coming back for it: the consumer's key for
      // the filter box refocuses an empty box with the chips still standing,
      // and the next token joins them.
      if (input.value.trim()) {
        flushFilter(true);              // `chipUp' reads the box, then empties it
      } else {
        input.value = "";               // stray whitespace is nothing to commit
        // Nothing to commit, but a debounce may still owe a change — text typed
        // and then deleted again. Settle it here rather than dropping it.
        if (debounce) { clearTimeout(debounce); debounce = 0; deliver(); }
      }
      selectFirstVisible();
      input.blur();
    });

    chipsEl.addEventListener("mousedown", (e) => e.preventDefault());   // box keeps focus
    chipsEl.addEventListener("click", (e) => {
      const t = hit(e);
      const chip = t && /** @type {HTMLElement|null} */ (t.closest(".tv-chip"));
      if (!chip) return;
      chips.splice(Number(chip.dataset.i), 1);
      renderChips();
      deliver();
    });

    // ---- streaming ---------------------------------------------------------

    /**
     * Move ROW to where it now belongs in the cached list ARR, or leave it out
     * when FILTERED and the query excludes it. No re-sort, no re-filter.
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

    titleEl.textContent = state.view.title || "Table";
    renderHead();
    renderRows(true);

    return {
      el: root,
      /** @param {View} v */
      setView(v) {
        state.view = v || { columns: [] };
        state.rows = (v && v.rows) ? v.rows.slice() : [];
        state.sortKeys = normalizeSort(v && v.sort);
        state.selected = null;
        state.selCol = null;
        state.filter = "";
        chips = [];
        input.value = "";
        renderChips();
        clearTexts();
        dropSorted();
        titleEl.textContent = state.view.title || "Table";
        renderHead();
        scroll.scrollTop = 0;
        renderRows(true);
      },
      /** @param {Row[]} rows */
      setRows(rows) {
        state.rows = (rows || []).slice();
        clearTexts();
        dropSorted();
        renderRows(true);
      },
      /** @param {Row} row */
      upsertRow(row) {
        const i = state.rows.findIndex((r) => r.id === row.id);
        if (i === -1) state.rows.push(row); else state.rows[i] = row;
        texts.delete(row.id);
        domains.clear();
        if (sorted) place(sorted, row, false);
        // Unsorted, `order' is `sorted' filtered, and a row the filter has just
        // started matching has no place to be spliced into: re-derive it (one
        // linear pass, no sort).
        if (order && orderCmp) { place(order, row, true); growWidths(row); }
        else if (order) dropOrder();
        renderRows(true);
      },
      /** @param {string} id */
      deleteRow(id) {
        state.rows = state.rows.filter((r) => r.id !== id);
        texts.delete(id);
        domains.clear();
        if (sorted) unplace(sorted, id);
        if (order) unplace(order, id);
        renderRows(true);
        if (state.selected === id) setSelected(null);   // and disable the actions
      },
      /** @param {Op[]} ops */
      applyDelta(ops) {
        for (const op of ops || []) {
          if (op.op === "insert") {
            state.rows.splice(op.index, 0, op.row);
            texts.delete(op.row.id);
            domains.clear();
          } else if (op.op === "delete") {
            const gone = state.rows[op.index];
            if (gone) texts.delete(gone.id);
            domains.clear();
            state.rows.splice(op.index, 1);
          } else if (op.op === "reset") {
            state.rows = (op.rows || []).slice();
            clearTexts();
          }
        }
        dropSorted();
        renderRows(true);
      },
      getRows() { return state.rows.slice(); },
      getVisible() { return ordered().slice(); },
      select: selectRow,
      /**
       * Where the selection is: the row's id and the column index within it,
       * `col' being null for a whole-row selection. A consumer moving the
       * selection reads this, adds a step, and hands it back to `select'.
       * @returns {{id: string|null, col: number|null}}
       */
      getSelection() { return { id: state.selected, col: state.selCol }; },
    };
  }

  const TableView = { mount, displayText, comparator, parseQuery };
  root.TableView = TableView;
  // @ts-ignore -- optional CommonJS export (no @types/node dependency)
  if (typeof module !== "undefined" && module.exports) module.exports = TableView;
})(typeof window !== "undefined" ? window : this);

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
 *   tv.select(id);        // select a row by id and scroll it into view -> bool
 *   tv.getVisible();      // the filtered + sorted rows, in display order
 *
 * Also emits DOM CustomEvents on the container: `tableview-action`
 * ({detail:{command,id,row}}) and `tableview-link` ({detail:{target,row}}).
 *
 * Rendering (renderer-local; SCHEMA.md's "Not part of the contract"):
 *
 * - The chrome — bar, title, filter input, action buttons, table skeleton, hint
 *   — is built once at mount. Updates touch only the row window, the hint text,
 *   the sort arrows and the buttons' disabled state, so the filter input keeps
 *   focus and caret while typing.
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
 *             select: (id: string) => boolean }} Handle  What `mount' returns.
 * @typedef {{ search: string, len: number[] }} RowText
 *   A row's cached display data: every cell's text lowercased and joined with
 *   \x1f (the filter searches it), and each cell's length (column widths).
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
      if (color)
        return `<span class="tv-badge" style="--tv-badge:${esc(color)}">${esc(raw)}</span>`;
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
.tv-btn{font:inherit;padding:4px 10px;border:1px solid var(--tv-border);border-radius:6px;
  background:var(--tv-bg);color:var(--tv-fg);cursor:pointer}
.tv-btn:disabled{opacity:.45;cursor:default}
.tv-btn:not(:disabled):hover{border-color:var(--tv-accent);color:var(--tv-accent)}
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
.tv-table tbody tr{cursor:default}
.tv-table tbody tr.tv-pad td{padding:0;border:0}
.tv-badge{font-weight:600;color:var(--tv-badge)}
.tv-link{color:var(--tv-accent);text-decoration:none}
.tv-link:hover{text-decoration:underline}
.tv-arrow{margin-left:4px;opacity:.7}
.tv-empty{padding:16px 12px;color:var(--tv-muted)}
.tv-hint{padding:6px 12px;border-top:1px solid var(--tv-border);color:var(--tv-muted);font-size:12px}`;
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
     *          selected: string|null, sortKeys: SortKey[] }}
     */
    const state = {
      view: view || { columns: [] },
      rows: (view && view.rows) ? view.rows.slice() : [],
      filter: "",
      selected: null,
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
    /** The trimmed, lowercased query `order' was filtered by. */
    let orderQuery = "";
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
        t = { search: parts.join("\x1f"), len };
        texts.set(r.id, t);
      }
      return t;
    }

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
    bar.appendChild(titleEl);
    bar.appendChild(input);

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
    /** The action buttons. @type {HTMLButtonElement[]} */
    let btnEls = [];

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

    /** The rows to display: sorted, then filtered. Cached. @returns {Row[]} */
    function ordered() {
      if (order) return order;
      if (!sorted) {
        orderCmp = chainComparator();
        sorted = state.rows.slice();     // never sort the store itself
        if (orderCmp) sorted.sort(orderCmp);
      }
      const q = state.filter.trim().toLowerCase();
      order = q ? sorted.filter((r) => rowText(r).search.includes(q)) : sorted.slice();
      orderQuery = q;
      widths = null;
      return order;
    }

    /** Whether ROW passes the current filter. @param {Row} r */
    function matches(r) { return !orderQuery || rowText(r).search.includes(orderQuery); }

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

    /** Rebuild the action buttons (mount, and a view change). */
    function renderActions() {
      for (const b of btnEls) b.remove();
      btnEls = actions().map((a) => {
        const b = document.createElement("button");
        b.className = "tv-btn";
        b.dataset.cmd = a.command;
        b.title = a.key || "";
        b.textContent = a.label || a.command;
        b.disabled = state.selected === null;
        bar.appendChild(b);
        return b;
      });
    }

    /**
     * A row's <tr>. I is its index in the display order: zebra striping is
     * stamped from it, since `:nth-child' sees only the window.
     * @param {Row} r  @param {number} i  @returns {string}
     */
    function rowHTML(r, i) {
      const cols = columns(), cs = r.cells || {};
      let tds = "";
      for (const c of cols)
        tds += `<td class="${c.align === "right" ? "tv-right" : ""}">${cellHTML(c, cs[c.key])}</td>`;
      const cls = (i % 2 ? " tv-alt" : "") + (r.id === state.selected ? " tv-sel" : "");
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
      hint.textContent = hintText(total);
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

    function hintText(shown) {
      const total = state.rows.length;
      const count = shown === total ? `${total} rows` : `${shown}/${total} rows`;
      const s = state.sortKeys[0];
      const sort = s ? `sort ${s.column} ${s.ascending ? "asc" : "desc"}` : "unsorted";
      return `${count} · ${sort}`;
    }

    /** @param {string|null} id */
    function setSelected(id) {
      state.selected = id ?? null;
      for (let i = 0; i < tbody.children.length; i++) {
        const tr = /** @type {HTMLElement} */ (tbody.children[i]);
        if (tr.dataset.id !== undefined) tr.classList.toggle("tv-sel", tr.dataset.id === id);
      }
      const has = id !== null && id !== undefined;
      for (const b of btnEls) b.disabled = !has;
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
      if (tr) setSelected(tr.dataset.id ?? null);
    });

    scroll.addEventListener("dblclick", (e) => {
      const t = hit(e);
      const tr = t && /** @type {HTMLElement|null} */ (t.closest("tr[data-id]"));
      if (!tr) return;
      const cmd = defaultCommand();
      if (cmd) dispatch(cmd, rowOf(state.rows, tr));
    });

    bar.addEventListener("click", (e) => {
      const t = hit(e);
      const b = t && /** @type {HTMLElement|null} */ (t.closest(".tv-btn[data-cmd]"));
      if (!b) return;
      dispatch(b.dataset.cmd, state.rows.find((r) => r.id === state.selected));
    });

    let pending = 0;
    function scheduleWindow() {
      if (pending) return;
      pending = frame(() => { pending = 0; renderRows(); });
    }
    scroll.addEventListener("scroll", scheduleWindow);

    /** Adopt the filter box's text: re-filter, and redraw from the top. */
    function applyFilter() {
      const v = input.value;
      if (v === state.filter) return;
      state.filter = v;
      dropOrder();                       // `sorted' stands: only the filter moved
      scroll.scrollTop = 0;
      renderRows(true);
    }

    // With `onFilter', the producer narrows the rows and this hands it the
    // query instead of filtering locally: `state.filter' stays empty, so
    // `order' is `sorted' and the rows given are the rows shown.
    let debounce = 0;
    input.addEventListener("input", () => {
      if (debounce) clearTimeout(debounce);
      debounce = setTimeout(() => {
        debounce = 0;
        if (o.onFilter) o.onFilter(input.value);
        else frame(applyFilter);
      }, DEBOUNCE);
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
    renderActions();
    renderRows(true);

    return {
      el: root,
      /** @param {View} v */
      setView(v) {
        state.view = v || { columns: [] };
        state.rows = (v && v.rows) ? v.rows.slice() : [];
        state.sortKeys = normalizeSort(v && v.sort);
        state.selected = null;
        texts.clear();
        dropSorted();
        titleEl.textContent = state.view.title || "Table";
        renderHead();
        renderActions();
        scroll.scrollTop = 0;
        renderRows(true);
      },
      /** @param {Row[]} rows */
      setRows(rows) {
        state.rows = (rows || []).slice();
        texts.clear();
        dropSorted();
        renderRows(true);
      },
      /** @param {Row} row */
      upsertRow(row) {
        const i = state.rows.findIndex((r) => r.id === row.id);
        if (i === -1) state.rows.push(row); else state.rows[i] = row;
        texts.delete(row.id);
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
          } else if (op.op === "delete") {
            const gone = state.rows[op.index];
            if (gone) texts.delete(gone.id);
            state.rows.splice(op.index, 1);
          } else if (op.op === "reset") {
            state.rows = (op.rows || []).slice();
            texts.clear();
          }
        }
        dropSorted();
        renderRows(true);
      },
      getRows() { return state.rows.slice(); },
      getVisible() { return ordered().slice(); },
      /**
       * Select the row with ID, scrolling its place in the (virtual) list into
       * view. Rows outside the rendered window have no element to click, so
       * this is how a consumer moves the selection. False when no visible row
       * has that id — a filtered-out row does not steal the selection.
       * @param {string} id  @returns {boolean}
       */
      select(id) {
        const rows = ordered();
        const i = rows.findIndex((r) => r.id === id);
        if (i === -1) return false;
        scrollTo(i);
        renderRows(true);
        setSelected(id);
        return true;
      },
    };
  }

  const TableView = { mount, displayText, comparator };
  root.TableView = TableView;
  // @ts-ignore -- optional CommonJS export (no @types/node dependency)
  if (typeof module !== "undefined" && module.exports) module.exports = TableView;
})(typeof window !== "undefined" ? window : this);

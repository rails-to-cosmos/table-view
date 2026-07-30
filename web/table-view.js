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
 *   });
 *   tv.setRows(rows); tv.upsertRow(row); tv.deleteRow(id); tv.applyDelta(ops);
 *
 * Also emits DOM CustomEvents on the container: `tableview-action`
 * ({detail:{command,id,row}}) and `tableview-link` ({detail:{target,row}}).
 *
 * Type-checked with `// @ts-check` + the JSDoc @typedefs below (no build step);
 * run `make web-check`.  The typedefs are the JS mirror of ../SCHEMA.md.
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
 *             onLink?: (target: string, row: Row | null) => void }} MountOptions
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
.tv-table tbody tr:nth-child(even){background:var(--tv-alt)}
.tv-table tbody tr.tv-sel{background:var(--tv-sel)}
.tv-table tbody tr{cursor:default}
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

    const root = document.createElement("div");
    root.className = "tv-root";
    container.innerHTML = "";
    container.appendChild(root);

    // Elements queried from `root' are all HTML (we only build HTML), so type
    // them as HTMLElement once here instead of casting at every call site.
    /** @param {string} sel  @returns {NodeListOf<HTMLElement>} */
    const qsa = (sel) => /** @type {NodeListOf<HTMLElement>} */ (root.querySelectorAll(sel));

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

    function visibleRows() {
      let rows = state.rows;
      const q = state.filter.trim().toLowerCase();
      if (q) {
        rows = rows.filter((r) =>
          columns().some((c) =>
            displayText((r.cells || {})[c.key]).toLowerCase().includes(q)));
      }
      if (state.sortKeys.length) {
        rows = rows.slice().sort((ra, rb) => {
          for (const sk of state.sortKeys) {
            const col = colByKey(sk.column);
            if (!col) continue;
            const cmp = comparator(col)(
              (ra.cells || {})[sk.column], (rb.cells || {})[sk.column]);
            if (cmp) return sk.ascending ? cmp : -cmp;
          }
          return 0;
        });
      }
      return rows;
    }

    function toggleSort(key) {
      const col = colByKey(key);
      if (!col || col.sortable !== true) return;
      const primary = state.sortKeys[0];
      if (primary && primary.column === key)
        state.sortKeys = [{ column: key, ascending: !primary.ascending }];
      else state.sortKeys = [{ column: key, ascending: true }];
      render();
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

    function render() {
      const cols = columns();
      const rows = visibleRows();
      const sel = state.selected;
      const primary = state.sortKeys[0];

      const head = cols.map((c) => {
        const right = c.align === "right" ? " tv-right" : "";
        const sortable = c.sortable === true ? " tv-sortable" : "";
        let arrow = "";
        if (primary && primary.column === c.key)
          arrow = `<span class="tv-arrow">${primary.ascending ? "▲" : "▼"}</span>`;
        return `<th class="${sortable}${right}" data-key="${esc(c.key)}">${esc(c.header || c.key)}${arrow}</th>`;
      }).join("");

      const body = rows.length
        ? rows.map((r) => {
            const tds = cols.map((c) => {
              const right = c.align === "right" ? " tv-right" : "";
              return `<td class="${right}">${cellHTML(c, (r.cells || {})[c.key])}</td>`;
            }).join("");
            const selCls = r.id === sel ? " tv-sel" : "";
            return `<tr class="${selCls}" data-id="${esc(r.id)}">${tds}</tr>`;
          }).join("")
        : "";

      root.innerHTML = `
        <div class="tv-bar">
          <span class="tv-title">${esc(state.view.title || "Table")}</span>
          <input class="tv-filter" type="search" placeholder="filter…" value="${esc(state.filter)}">
          ${actions().map((a) =>
            `<button class="tv-btn" data-cmd="${esc(a.command)}" title="${esc(a.key || "")}" disabled>${esc(a.label || a.command)}</button>`).join("")}
        </div>
        <div class="tv-scroll">
          ${rows.length
            ? `<table class="tv-table"><thead><tr>${head}</tr></thead><tbody>${body}</tbody></table>`
            : `<div class="tv-empty">no rows</div>`}
        </div>
        <div class="tv-hint">${esc(hintText(rows.length))}</div>`;

      wire();
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
      state.selected = id;
      qsa(".tv-table tbody tr")
        .forEach((tr) => tr.classList.toggle("tv-sel", tr.dataset.id === id));
      const has = id !== null && id !== undefined;
      /** @type {NodeListOf<HTMLButtonElement>} */ (root.querySelectorAll(".tv-btn[data-cmd]"))
        .forEach((b) => (b.disabled = !has));
    }

    function wire() {
      const filter = /** @type {HTMLInputElement} */ (root.querySelector(".tv-filter"));
      filter.addEventListener("input", () => { state.filter = filter.value; render(); });

      qsa("th[data-key]")
        .forEach((th) => th.addEventListener("click", () => toggleSort(th.dataset.key)));

      qsa(".tv-btn[data-cmd]")
        .forEach((b) => b.addEventListener("click", () => {
          const row = state.rows.find((r) => r.id === state.selected);
          dispatch(b.dataset.cmd, row);
        }));

      qsa(".tv-table tbody tr")
        .forEach((tr) => {
          tr.addEventListener("click", (e) => {
            if (/** @type {HTMLElement} */ (e.target).classList.contains("tv-link")) return;
            setSelected(tr.dataset.id ?? null);
          });
          tr.addEventListener("dblclick", () => {
            const row = state.rows.find((r) => r.id === tr.dataset.id);
            const cmd = defaultCommand();
            if (cmd) dispatch(cmd, row);
          });
        });

      qsa(".tv-link")
        .forEach((a) => a.addEventListener("click", (e) => {
          e.preventDefault();
          const tr = a.closest("tr");
          const row = tr && state.rows.find((r) => r.id === tr.dataset.id);
          followLink(a.dataset.target, row);
        }));

      // Re-apply selection state to freshly rendered rows.
      setSelected(state.selected);
    }

    render();

    // ---- streaming API -----------------------------------------------------
    return {
      el: root,
      /** @param {View} v */
      setView(v) {
        state.view = v || { columns: [] };
        state.rows = (v && v.rows) ? v.rows.slice() : [];
        state.sortKeys = normalizeSort(v && v.sort);
        state.selected = null;
        render();
      },
      /** @param {Row[]} rows */
      setRows(rows) { state.rows = (rows || []).slice(); render(); },
      /** @param {Row} row */
      upsertRow(row) {
        const i = state.rows.findIndex((r) => r.id === row.id);
        if (i === -1) state.rows.push(row); else state.rows[i] = row;
        render();
      },
      /** @param {string} id */
      deleteRow(id) {
        state.rows = state.rows.filter((r) => r.id !== id);
        if (state.selected === id) state.selected = null;
        render();
      },
      /** @param {Op[]} ops */
      applyDelta(ops) {
        for (const op of ops || []) {
          if (op.op === "insert") state.rows.splice(op.index, 0, op.row);
          else if (op.op === "delete") state.rows.splice(op.index, 1);
          else if (op.op === "reset") state.rows = (op.rows || []).slice();
        }
        render();
      },
      getRows() { return state.rows.slice(); },
    };
  }

  const TableView = { mount, displayText, comparator };
  root.TableView = TableView;
  // @ts-ignore -- optional CommonJS export (no @types/node dependency)
  if (typeof module !== "undefined" && module.exports) module.exports = TableView;
})(typeof window !== "undefined" ? window : this);

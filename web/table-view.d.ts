type TableViewCell = string | number | null;

interface TableViewBadge {
  value: string;
  color: string;
}

interface TableViewTypeSource {
  module: string;
  symbol: string;
}

interface TableViewValueType {
  name: string;
  source?: TableViewTypeSource;
  proposed?: boolean;
}

interface TableViewColumn {
  key: string;
  header?: string;
  type?: "text" | "number" | "badge";
  align?: "left" | "right";
  sortable?: boolean;
  badges?: TableViewBadge[];
  values?: string[];
  multi?: boolean;
  editable?: boolean;
  checkbox?: { checked: string; unchecked: string; appearance?: "switch" };
  compare?: string;
  minWidthCh?: number;
  valueType?: TableViewValueType;
  secret?: boolean;
  editor?: TableViewColumnEditor;
  headerEditor?: TableViewColumnEditor;
  activate?: {action: string} | {edit: true};
  render?: (host: HTMLElement, context: TableViewCellContext) => void | (() => void);
  widthPx?: number;
}

interface TableViewAction {
  key?: string;
  command: string;
  label?: string;
}

interface TableViewSort {
  column: string;
  ascending?: boolean;
  direction?: string;
  nullsFirst?: boolean;
}

interface TableViewSortKey {
  column: string;
  ascending: boolean;
  nullsFirst: boolean;
}

interface TableViewRow {
  id: string;
  cells?: Record<string, TableViewCell>;
  linked?: boolean;
  conflictCount?: number;
  familyProblems?: string[];
  revision?: TableViewRevision;
  data?: any;
  producer?: boolean;
  under?: string | null;
  refused?: string;
  custom?: boolean;
}

interface TableViewView {
  title?: string;
  columns: TableViewColumn[];
  actions?: TableViewAction[];
  sort?: TableViewSort | TableViewSort[];
  rows?: TableViewRow[];
}

type TableViewOp =
  | { op: "insert"; index: number; row: TableViewRow }
  | { op: "delete"; index: number }
  | { op: "upsert"; row: TableViewRow }
  | { op: "reset"; rows: TableViewRow[] };

interface TableViewCrumb {
  label: string;
  query: string;
}

interface TableViewMountOptions {
  cellTone?: (row: TableViewRow, column: TableViewColumn) => string | null;
  onAction?: (command: string, id: string, row: TableViewRow) => void;
  onLink?: (target: string, row: TableViewRow | null) => void;
  onFilter?: (query: string) => void;
  onFilterInput?: (value: string) => void;
  /** Complete producer-owned terms when filtering through onFilter. */
  filterTerms?: string[];
  onFilterKey?: (event: KeyboardEvent) => boolean;
  onCellKey?: (event: KeyboardEvent, cell: TableViewOpenCell) => boolean;
  onEdit?: (
    id: string | null,
    column: number,
    value: string,
    kind: "cell" | "header"
  ) => void;
  omnibox?: boolean;
  palette?: boolean;
  marks?: boolean;
  markGutter?: boolean;
  flags?: boolean;
  actionHints?: boolean;
  showSortStatus?: boolean;
  footerStatus?: string;
  flagHelp?: string;
  pageSize?: number;
  initialQuery?: string;
  chipLabel?: (token: string) => string | null;
  composer?: boolean;
  inline?: boolean;
  wrapRows?: boolean;
  filterDock?: "overlay" | "strip";
  onPin?: () => void;
  onRefused?: (token: string) => void;
  pinned?: boolean;
}

interface TableViewSelection {
  id: string | null;
  col: number | null;
}

interface TableViewPageInfo {
  page: number;
  pages: number;
  from: number;
  to: number;
  total: number;
}

interface TableViewToken {
  negated: boolean;
  added: boolean;
  key: string | null;
  value: string;
  quoted: boolean;
  start: number;
  end: number;
  sep: number;
}

interface TableViewOpenCell {id: string | null; col: number; key: string; value: string; raw: string; token: number;}

interface TableViewHandle {
  dispatch(command: TableViewCommand): TableViewCommandResult;
  update(frame: TableViewDataFrame): TableViewUpdateResult;
  reset(definition: TableViewDefinition): TableViewUpdateResult;
  state(): Readonly<TableViewWidgetState>;
  snapshot(): TableViewSnapshot;
  restore(snapshot: TableViewSnapshot): TableViewUpdateResult;
  suspend(): void;
  resume(): void;
  leaveState(): "clean" | "dirty" | "pending" | "failed";
  focus(target?: "rows" | "filter" | "editor"): void;
  closeEditor(): void;
  cellRect(id: string, column: number): DOMRect | null;
  fitColumns(): void;
  el: HTMLElement;
  setView(view: TableViewView): void;
  setRows(rows: TableViewRow[]): void;
  upsertRow(row: TableViewRow): void;
  deleteRow(id: string): void;
  applyDelta(ops: TableViewOp[]): void;
  getRows(): TableViewRow[];
  getVisible(): TableViewRow[];
  select(id: string, column?: number): boolean;
  getSelection(): TableViewSelection;
  getEditing(): {id: string | null; col: number; key: string; value: string} | null;
  editCell(id: string, column: number): boolean;
  editHeader(column: number): boolean;
  getQuery(): string;
  setCrumbs(crumbs: TableViewCrumb[]): void;
  getCrumbs(): TableViewCrumb[];
  setPinned(on: boolean): void;
  setQuery(query: string): void;
  pushCrumb(crumb: TableViewCrumb): number;
  popCrumb(): TableViewCrumb | null;
  stripLastToken(): boolean;
  filtering(): boolean;
  destroy(): void;
  openFilter(options?: { narrow?: boolean }): void;
  closeFilter(): void;
  selectStep(step: number): boolean;
  nextPage(): boolean;
  previousPage(): boolean;
  pageInfo(): TableViewPageInfo;
  sortBy(column: string, ascending?: boolean): boolean;
  sortPromote(column: string): boolean;
  getSort(): TableViewSortKey[];
  setSort(sort?: TableViewSort | TableViewSort[] | TableViewSortKey[] | null): void;
  setFooterStatus(status: string): void;
  toggleMark(id: string): boolean;
  markAll(): number;
  flagRow(id: string): boolean;
  unflagRow(id: string): void;
  getFlagged(): string[];
  clearFlags(): void;
  flaggedCount(): number;
  getMarked(): string[];
  clearMarks(): void;
  markedCount(): number;
}

interface TableViewApi {
  mount(container: Element, definition: TableViewDefinition, host?: TableViewWidgetHost, options?: TableViewRestoreOptions): TableViewHandle;
  mount(
    container: Element,
    view: TableViewView,
    options?: TableViewMountOptions
  ): TableViewHandle;
  displayText(value: TableViewCell | undefined): string;
  comparator(
    column: TableViewColumn
  ): (left: TableViewCell | undefined, right: TableViewCell | undefined) => number;
  parseQuery(query: string, keys?: string[]): TableViewToken[];
}

declare const TableView: TableViewApi;

type TableViewRevision = string | number;
type TableViewMode = "rows" | "filter" | "edit" | "producer";
interface TableViewCellContext {
  row: TableViewRow;
  column: TableViewColumn;
  value: TableViewCell | undefined;
  producer: boolean;
  dark: boolean;
}
interface TableViewFrozenRequest {
  action: string;
  ids: readonly string[];
  rows: readonly TableViewRow[];
  revision: TableViewRevision | null;
  basis?: any;
  value?: string;
}
interface TableViewConfirmation { title: string; detail?: string; }
interface TableViewOutcome { id: string; status: "success" | "validation" | "conflict" | "failure"; message?: string; }
interface TableViewActionResult {
  ok?: boolean;
  error?: string;
  outcomes?: TableViewOutcome[];
  data?: TableViewDataFrame;
  identities?: Record<string, string>;
  point?: { id: string; column?: string };
}
interface TableViewActionDefinition {
  id: string;
  label?: string;
  keys?: string[];
  commands?: string[];
  modes?: TableViewMode[];
  targets?: "point" | "marked-or-point" | "flagged";
  eligible?: (row: TableViewRow) => boolean;
  capture?: (context: { rows: readonly TableViewRow[]; loaded: readonly TableViewRow[]; revision: TableViewRevision | null; value?: string }) => any;
  confirm?: string | ((request: TableViewFrozenRequest) => string | TableViewConfirmation);
  run(request: TableViewFrozenRequest, signal: AbortSignal): void | TableViewActionResult | Promise<void | TableViewActionResult>;
}
interface TableViewFrozenEdit {
  id: string | null;
  key: string;
  value: string;
  raw: string;
  row: TableViewRow | null;
  basis?: any;
}
interface TableViewValidation { error?: string; column?: string; }
interface TableViewEditResult extends TableViewActionResult { value?: string; basis?: any; }
interface TableViewCustomEditor {
  element: HTMLElement;
  value(): string;
  setValue?(value: string): void;
  focus?(): void;
  update?(context: TableViewCellContext): void;
  destroy?(): void;
}
interface TableViewColumnEditor {
  id?: string;
  kind?: "text" | "choice" | "secret" | "checkbox" | "custom";
  when?: (context: TableViewCellContext) => boolean;
  capture?: (context: TableViewCellContext) => any;
  validate?: (edit: TableViewFrozenEdit) => void | string | TableViewValidation;
  cancel?: (edit: TableViewFrozenEdit) => void;
  commit?: (edit: TableViewFrozenEdit, signal: AbortSignal) => void | TableViewEditResult | Promise<void | TableViewEditResult>;
  mount?: (host: HTMLElement, context: TableViewCellContext) => TableViewCustomEditor;
  bind?: (input: HTMLInputElement, context: TableViewCellContext) => void | (() => void);
}
interface TableViewProducerSeed {
  initialColumn?: string;
  cells: Record<string, TableViewCell>;
  basis?: any;
  under?: string | null;
}
interface TableViewFrozenDraft {
  initialColumn?: string;
  cells: Readonly<Record<string, TableViewCell>>;
  basis?: any;
  under: string | null;
}
interface TableViewProducerDefinition {
  initial: TableViewProducerSeed | ((context: {point: TableViewSelection; rows: readonly TableViewRow[]}) => TableViewProducerSeed | Promise<TableViewProducerSeed>);
  initialColumn?: string;
  fields?: (cells: Readonly<Record<string, TableViewCell>>) => string[];
  derive?: (cells: Readonly<Record<string, TableViewCell>>) => Record<string, TableViewCell>;
  validate?: (draft: TableViewFrozenDraft) => void | string | TableViewValidation;
  cancel?: (draft: TableViewFrozenDraft) => void;
  submit(draft: TableViewFrozenDraft, signal: AbortSignal): void | TableViewEditResult | Promise<void | TableViewEditResult>;
}
interface TableViewSourceRequest { query: string; sort: TableViewSortKey[]; page: number; pageSize: number; epoch: number; }
interface TableViewLocalSource { kind: "local"; rows: TableViewRow[]; revision?: TableViewRevision; }
interface TableViewRemoteSource {
  kind: "remote";
  paging?: boolean;
  rows?: TableViewRow[];
  revision?: TableViewRevision;
  read?: (request: TableViewSourceRequest, signal: AbortSignal) => TableViewDataFrame | void | Promise<TableViewDataFrame | void>;
  subscribe?: (request: TableViewSourceRequest, receive: (frame: TableViewDataFrame) => void, signal: AbortSignal) => void | (() => void);
}
type TableViewDataFrame =
  | {kind: "producer"; cells?: Record<string, TableViewCell>; basis?: any; columns?: TableViewColumn[]}
  | {kind: "snapshot"; rows: TableViewRow[]; revision?: TableViewRevision; columns?: TableViewColumn[]; actions?: TableViewActionDefinition[]; total?: number; title?: string; refit?: boolean; land?: "first"}
  | {kind: "patch"; base: TableViewRevision; revision: TableViewRevision; ops: TableViewOp[]; total?: number};
interface TableViewDefinition {
  id: string;
  title?: string;
  columns: TableViewColumn[];
  source: TableViewLocalSource | TableViewRemoteSource;
  layout?: { fillColumn?: string; wrapRows?: boolean };
  primaryColumn?: string;
  filter?: {kind: "query" | "match"; initialQuery?: string; allowCustom?: boolean; customCells?: (value: string) => Record<string, TableViewCell>; normalize?: (value: string) => string; validate?: (value: string) => string | null};
  initialFocus?: "rows" | "filter" | "none";
  marks?: boolean;
  actions?: TableViewActionDefinition[];
  activate?: {action: string} | {edit: string};
  flaggedAction?: string;
  create?: TableViewProducerDefinition | {action: string};
  sort?: TableViewSort | TableViewSort[];
  presentation?: TableViewMountOptions;
}
interface TableViewWidgetHost {
  active?: () => boolean;
  confirm?: (question: TableViewConfirmation, request: TableViewFrozenRequest) => boolean | Promise<boolean>;
  back?: () => void;
  deliver?: (work: () => any) => any;
  changed?: (state: Readonly<TableViewWidgetState>) => void;
  report?: (message: string, level?: "info" | "error") => void;
  key?: (event: KeyboardEvent) => string | null;
  repeating?: (event: KeyboardEvent) => boolean;
  bindKeys?: boolean;
}
interface TableViewWidgetState {
  id: string | null;
  mode: TableViewMode;
  point: {id: string | null; column: string | null};
  query: string;
  draft: string;
  revision: TableViewRevision | null;
  marked: readonly string[];
  flagged: readonly string[];
  producer: TableViewFrozenDraft | null;
  pending: readonly string[];
  error: string;
  suspended: boolean;
  loading: boolean;
  total: number;
}
interface TableViewSnapshot {
  id: string | null;
  schema: string[];
  point: {id: string | null; column: string | null};
  query: string;
  filter: {open: boolean; value: string; start: number | null; end: number | null; direction: "forward" | "backward" | "none" | null};
  sort: TableViewSortKey[];
  marks: string[];
  flags: string[];
  page: number;
  continuous: boolean;
  scroll: {top: number; left: number};
  editor?: {id: string | null; kind?: "cell" | "header"; column: string; value: string; raw: string; basis?: any; start: number | null; end: number | null};
  producer?: TableViewFrozenDraft;
}
type TableViewCommand = string | {type: string; key?: string; value?: string; id?: string; column?: string; step?: number; event?: KeyboardEvent};
interface TableViewCommandResult { handled: boolean; ok: boolean; reason?: string; pending?: Promise<TableViewActionResult | void>; }
interface TableViewUpdateResult { ok: boolean; reason?: "destroyed" | "basis" | "dirty-schema" | "dirty-row" | "definition" | "pending"; }
interface TableViewRestoreOptions extends TableViewMountOptions {restore?: TableViewSnapshot;}

interface TableViewControllerEdit extends TableViewFrozenEdit {col: number; token?: number; kind?: "cell" | "header"; contract?: TableViewColumnEditor;}
interface TableViewControllerAdapter {
  rows(): readonly TableViewRow[];
  visible?(): readonly TableViewRow[];
  columns(): readonly TableViewColumn[];
  point(): TableViewSelection;
  query(): string;
  filter(): TableViewSnapshot["filter"];
  editor(): TableViewControllerEdit | null;
  marked(): string[];
  flagged(): string[];
  select(id: string, column?: number): boolean;
  move(step: number): boolean;
  setQuery(value: string): void;
  openFilter(narrow?: boolean): void;
  closeFilter(): void;
  edit(id: string, column: string, kind?: "cell" | "header"): boolean;
  writeEditor(value: string): void;
  closeEditor(): void;
  matchValue?(value: string, literal?: TableViewRow | null): void;
  editStatus(pending: boolean): void;
  editBasis?(basis: any): void;
  editIdentity?(id: string): void;
  setMarks(ids: readonly string[]): void;
  setFlags(ids: readonly string[]): void;
  apply(frame: TableViewDataFrame): void;
  configure(definition: TableViewDefinition): void;
  putProducer(row: TableViewRow | null): void;
  sort(column: string): boolean;
  page?(step: number): boolean;
  pageSize?(): number;
  total?(): number;
  dark?(): boolean;
  edge?(last: boolean): boolean;
  dropQuery(): boolean;
  snapshot(): TableViewSnapshot;
  restore(snapshot: TableViewSnapshot): void;
  focus(target: "rows" | "filter" | "editor"): void;
  suspend(on: boolean): void;
  status(message: string): void;
}
interface TableViewController {
  dispatch(command: TableViewCommand): TableViewCommandResult;
  moveDraft(key: string): boolean;
  update(frame: TableViewDataFrame): TableViewUpdateResult;
  reset(definition: TableViewDefinition): TableViewUpdateResult;
  state(): Readonly<TableViewWidgetState>;
  snapshot(): TableViewSnapshot;
  restore(snapshot: TableViewSnapshot): TableViewUpdateResult;
  suspend(): void;
  resume(): void;
  leaveState(): "clean" | "dirty" | "pending" | "failed";
  focus(target?: "rows" | "filter" | "editor"): void;
  changed(): void;
  read(): Promise<void>;
  canEdit(id: string | null, column: string, kind?: "cell" | "header"): boolean;
  editorOpened(): void;
  editorClosed(): void;
  filterInput(value: string, interacted?: boolean): boolean;
  filterKey(event: KeyboardEvent): boolean;
  matchRows(rows: readonly TableViewRow[]): TableViewRow[];
  editorKey(event: KeyboardEvent): boolean;
  commit(): Promise<TableViewEditResult | void>;
  producer(): TableViewFrozenDraft | null;
  start(): void;
  destroy(): void;
}
interface TableViewApi {
  createController(adapter: TableViewControllerAdapter, definition: TableViewDefinition, host?: TableViewWidgetHost): TableViewController;
}

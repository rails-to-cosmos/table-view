;;; table-view.el --- Declarative, backend-agnostic table view -*- lexical-binding: t; -*-

;; Copyright (C) 2025-2026 Dmitry Akatov

;; Author: Dmitry Akatov <akatovda@gmail.com>
;; Maintainer: Dmitry Akatov <akatovda@gmail.com>
;; URL: https://github.com/rails-to-cosmos/table-view
;; Version: 0.1.0
;; Package-Requires: ((emacs "28.1"))
;; Keywords: convenience, data, tools
;; SPDX-License-Identifier: MIT

;; This file is not part of GNU Emacs.

;; Permission is hereby granted, free of charge, to any person obtaining a
;; copy of this software and associated documentation files (the "Software"),
;; to deal in the Software without restriction, including without limitation
;; the rights to use, copy, modify, merge, publish, distribute, sublicense,
;; and/or sell copies of the Software, and to permit persons to whom the
;; Software is furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
;; THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;; DEALINGS IN THE SOFTWARE.

;;; Commentary:
;; A tiny, backend-agnostic core that renders a declarative table
;; description -- columns, actions, default sort -- and dispatches keys to
;; consumer-registered command handlers.
;;
;; Responsibilities:
;;   * render a spec as an aligned, org-table-styled read-only view
;;   * colour `badge' cells from the column's declared palette
;;   * build a keymap from the declared actions, dispatch by command name
;;   * own a row store keyed by id: set-rows / upsert-row (streaming fill)
;;   * client-side sort on sortable columns
;;   * interactive substring filter (/)
;;
;; A consumer provides: a parsed spec, a `fill-fn' (BUFFER -> populates via
;; the mutators below), and a handler alist (command-name -> FN of ID ROW).
;;
;; See examples/ for runnable demos:
;;   minimal.el       — inline rows from a JSON spec
;;   fill-function.el — populate via a fill function (Emacs subprocesses)
;;   upsert.el        — streaming row updates via a timer
;;
;; Keybindings in table-view-mode:
;;   g   — clear filter & refresh, preserving the current sort order
;;   ^   — cycle sort column
;;   ~   — toggle sort direction
;;   /   — filter rows by substring
;;   n/p — next/previous line
;;   f/b — forward/backward: by row on the table, by char elsewhere
;;   q   — quit

;;; Code:

(require 'cl-lib)

;;; Buffer-local state

(defvar-local table-view--spec nil
  "Parsed table spec (alist) for this buffer.")
(defvar-local table-view--rows nil
  "Current rows (list of alists), in insertion order before sorting.")
(defvar-local table-view--handlers nil
  "Alist of command-name (string) -> function called as (FN ID ROW).")
(defvar-local table-view--fill-fn nil
  "Function of one arg (this BUFFER) that (re)populates the rows, or nil.")
(defvar-local table-view--sort-key nil
  "Column key (string) currently sorted by, or nil.")
(defvar-local table-view--sort-asc t
  "Non-nil when the current sort is ascending.")
(defvar-local table-view--sorted nil
  "Non-nil once an explicit sort has been applied to the current row set.
Reset whenever the full row set is replaced (`table-view-set-rows'), so
the hint line never claims a sort the displayed rows are not actually in.")
(defvar-local table-view--filter nil
  "Current filter string, or nil.  When set, only rows with at least one
cell matching the string (case-insensitive substring) are rendered.")

;;; Spec accessors

(defun table-view--columns (spec) (alist-get 'columns spec))
(defun table-view--actions (spec) (alist-get 'actions spec))

(defun table-view--column (spec key)
  "Return the column alist whose key is KEY in SPEC."
  (seq-find (lambda (c) (equal (alist-get 'key c) key))
            (table-view--columns spec)))

(defun table-view--cell (row key)
  "Raw value of cell KEY (a string column key) in ROW."
  (alist-get (intern key) (alist-get 'cells row)))

(defun table-view--str (val)
  "Render cell VAL as a display string."
  (cond ((null val) "")
        ((stringp val) val)
        ((numberp val) (number-to-string val))
        (t (format "%s" val))))

(defun table-view--badge-color (col value)
  "Return the colour declared for VALUE in badge column COL, or nil."
  (alist-get 'color
             (seq-find (lambda (b) (equal (alist-get 'value b) value))
                       (alist-get 'badges col))))

;;; Sorting

(defun table-view--comparator (col)
  "Return a less-than predicate over raw cell values for column COL."
  (pcase (alist-get 'type col)
    ("number"
     (lambda (a b) (< (or a 0) (or b 0))))
    ("badge"
     ;; Sort by declared palette order (which doubles as priority).
     (let ((order (mapcar (lambda (b) (alist-get 'value b))
                          (alist-get 'badges col)))
           (n (length (alist-get 'badges col))))
       (lambda (a b)
         (< (or (cl-position a order :test #'equal) n)
            (or (cl-position b order :test #'equal) n)))))
    (_
     (lambda (a b) (string< (table-view--str a) (table-view--str b))))))

(defun table-view--sort-rows ()
  "Sort `table-view--rows' in place by the current sort column.
No-op when no sort column is selected.  Sorting is explicit: it runs
only from the sort commands (`^', `~', and `g' when a sort is already
active), never from row updates, so operating on a row updates it in
place without moving it."
  (let ((key table-view--sort-key))
    (when key
      (let* ((col (table-view--column table-view--spec key))
             (less (table-view--comparator col))
             (sorted (sort (copy-sequence table-view--rows)
                           (lambda (a b)
                             (funcall less
                                      (table-view--cell a key)
                                      (table-view--cell b key))))))
        (setq table-view--rows
              (if table-view--sort-asc sorted (nreverse sorted)))
        (setq table-view--sorted t)))))

;;; Filtering

(defun table-view--row-matches-p (row filter)
  "Non-nil if any cell in ROW contains FILTER (case-insensitive substring)."
  (let ((pat (downcase filter)))
    (cl-some (lambda (col)
               (string-match-p
                (regexp-quote pat)
                (downcase (table-view--str
                           (table-view--cell row (alist-get 'key col))))))
             (table-view--columns table-view--spec))))

(defun table-view--visible-rows ()
  "Rows to render: all if no filter, otherwise only matching ones."
  (if (and table-view--filter (not (string-empty-p table-view--filter)))
      (cl-remove-if-not
       (lambda (row) (table-view--row-matches-p row table-view--filter))
       table-view--rows)
    table-view--rows))

;;; Rendering

(defun table-view--widths (spec rows)
  "Return alist of column-key -> display width for SPEC over ROWS."
  (mapcar
   (lambda (col)
     (let* ((key (alist-get 'key col))
            (w (string-width (alist-get 'header col))))
       (dolist (row rows)
         (setq w (max w (string-width (table-view--str (table-view--cell row key))))))
       (cons key w)))
   (table-view--columns spec)))

(defun table-view--pad (s width align)
  "Pad string S to WIDTH, right-justified when ALIGN is \"right\"."
  (let ((gap (max 0 (- width (string-width s)))))
    (if (equal align "right")
        (concat (make-string gap ?\s) s)
      (concat s (make-string gap ?\s)))))

(defun table-view--cell-string (col row widths)
  "Return the padded, possibly coloured cell string for COL in ROW."
  (let* ((key (alist-get 'key col))
         (val (table-view--cell row key))
         (s (table-view--str val)))
    (when (equal (alist-get 'type col) "badge")
      (let ((color (table-view--badge-color col s)))
        (when color
          (setq s (propertize s 'face (list :foreground color :weight 'bold))))))
    (table-view--pad s (alist-get key widths nil nil #'equal) (alist-get 'align col))))

(defun table-view--row-string (spec row widths cell-fn)
  "Build one \"| ... |\" line for ROW, each cell via CELL-FN."
  (concat "| "
          (mapconcat (lambda (col) (funcall cell-fn col row widths))
                     (table-view--columns spec) " | ")
          " |"))

(defun table-view--header-string (spec widths)
  (concat "| "
          (mapconcat (lambda (col)
                       (table-view--pad
                        (propertize (alist-get 'header col) 'face 'bold)
                        (alist-get (alist-get 'key col) widths nil nil #'equal)
                        (alist-get 'align col)))
                     (table-view--columns spec) " | ")
          " |"))

(defun table-view--rule-string (spec widths)
  (concat "|"
          (mapconcat (lambda (col)
                       (make-string
                        (+ 2 (alist-get (alist-get 'key col) widths nil nil #'equal)) ?-))
                     (table-view--columns spec) "+")
          "|"))

(defun table-view--hint-string ()
  "A one-line status/help string: current sort + declared action keys.
Shows \"unsorted\" until an explicit sort has been applied, since rows
render in load order and only reorder on `^'/`~'."
  (format "sort: %s%s    %s"
          (if (and table-view--sorted table-view--sort-key)
              (format "%s %s" table-view--sort-key
                      (if table-view--sort-asc "asc" "desc"))
            "unsorted (^)")
          (if table-view--filter
              (format "    filter: %s (%d/%d)"
                      table-view--filter
                      (length (table-view--visible-rows))
                      (length table-view--rows))
            "")
          (mapconcat (lambda (a) (format "%s:%s"
                                         (alist-get 'key a) (alist-get 'label a)))
                     (table-view--actions table-view--spec) "  ")))

(defun table-view--goto-id (id)
  "Move point to the start of the row whose id is ID; non-nil on success."
  (let ((pos (point-min)) (found nil))
    (while (and (not found) pos)
      (if (equal (get-text-property pos 'table-view-id) id)
          (progn (goto-char pos) (setq found t))
        (setq pos (next-single-property-change pos 'table-view-id))))
    found))

(defun table-view--render ()
  "Re-render the current buffer from spec + rows.
Renders rows in their current order; sorting is explicit (see
`table-view--sort-rows'), so a row updated by an action stays in place.
Keeps point on the same row id when possible, else falls back to the
same line number."
  (let* ((spec table-view--spec)
         (rows (table-view--visible-rows))
         (widths (table-view--widths spec rows))
         (inhibit-read-only t)
         (line (line-number-at-pos))
         (id (get-text-property (point) 'table-view-id)))
    (erase-buffer)
    (insert (propertize (or (alist-get 'title spec) "Table")
                        'face '(:weight bold :height 1.1))
            "\n")
    (insert (propertize (table-view--hint-string) 'face 'shadow) "\n\n")
    (insert (table-view--header-string spec widths) "\n")
    (insert (table-view--rule-string spec widths) "\n")
    (if (null rows)
        (insert (propertize "  (no rows)\n" 'face 'shadow))
      (dolist (row rows)
        (let ((start (point)))
          (insert (table-view--row-string spec row widths #'table-view--cell-string) "\n")
          (put-text-property start (point) 'table-view-id (alist-get 'id row))
          (put-text-property start (point) 'table-view-row row))))
    (unless (and id (table-view--goto-id id))
      (goto-char (point-min))
      (forward-line (1- line)))))

;;; Dispatch

(defun table-view--dispatch (command)
  "Invoke the registered handler for COMMAND on the row at point."
  (let ((handler (cdr (assoc command table-view--handlers)))
        (id (get-text-property (point) 'table-view-id))
        (row (get-text-property (point) 'table-view-row)))
    (if handler
        (funcall handler id row)
      (message "table-view: no handler for %s" command))))

;;; Navigation

(defun table-view--on-row-p (&optional pos)
  "Non-nil when POS (or point) lies on a rendered data row.
Detection keys off the `table-view-row' text property the renderer
stamps on each row line, so it ignores the title, hint, header, and
rule lines (and any \"(no rows)\" placeholder)."
  (get-text-property (or pos (point)) 'table-view-row))

(defun table-view-forward-row (&optional n)
  "Move to the start of the Nth following data row (default 1).
With a negative N move backward.  Stops at the table edges instead of
leaving the rows, and never signals."
  (interactive "p")
  (let* ((n (or n 1))
         (step (if (< n 0) -1 1)))
    (dotimes (_ (abs n))
      (let ((dest (save-excursion
                    (forward-line step)
                    (and (table-view--on-row-p) (point)))))
        (when dest (goto-char dest))))))

(defun table-view-backward-row (&optional n)
  "Move to the start of the Nth preceding data row (default 1).
See `table-view-forward-row'."
  (interactive "p")
  (table-view-forward-row (- (or n 1))))

(defun table-view-forward (&optional n)
  "Move forward N times, by row on the table and by character elsewhere.
On a data row this steps over whole rows; off the table it falls back
to `forward-char'."
  (interactive "p")
  (if (table-view--on-row-p)
      (table-view-forward-row n)
    (forward-char n)))

(defun table-view-backward (&optional n)
  "Move backward N times, by row on the table and by character elsewhere.
On a data row this steps over whole rows; off the table it falls back
to `backward-char'."
  (interactive "p")
  (if (table-view--on-row-p)
      (table-view-backward-row n)
    (backward-char n)))

;;; Keymap

(defvar table-view-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map "n" #'next-line)
    (define-key map "p" #'previous-line)
    (define-key map "f" #'table-view-forward)
    (define-key map "b" #'table-view-backward)
    (define-key map "g" #'table-view-sort)
    (define-key map "/" #'table-view-filter)
    (define-key map "^" #'table-view-sort-cycle)
    (define-key map "~" #'table-view-sort-toggle-direction)
    (define-key map "q" #'quit-window)
    map)
  "Base keymap for `table-view-mode'; action keys overlay it per buffer.")

(define-derived-mode table-view-mode special-mode "Table"
  "Generic, read-only declarative table view."
  (setq truncate-lines t)
  (setq-local cursor-type 'box))

(defun table-view--install-action-keys (spec)
  "Build a buffer-local keymap binding the declared action keys."
  (let ((map (make-sparse-keymap)))
    (set-keymap-parent map table-view-mode-map)
    (dolist (action (table-view--actions spec))
      (let ((command (alist-get 'command action)))
        (define-key map (kbd (alist-get 'key action))
                    (lambda ()
                      (interactive)
                      (table-view--dispatch command)))))
    (use-local-map map)))

;;; Interactive sort commands

(defmacro table-view--save-point-location (&rest body)
  "Run BODY, then restore point to the line and column it is on now.
Unlike saving raw point, this survives the header/hint text changing
width during the re-render BODY performs, so the cursor stays put on
screen instead of drifting or following its row."
  (declare (indent 0) (debug t))
  (let ((line (make-symbol "line"))
        (col (make-symbol "col")))
    `(let ((,line (line-number-at-pos))
           (,col (current-column)))
       ,@body
       (goto-char (point-min))
       (forward-line (1- ,line))
       (move-to-column ,col))))

(defun table-view--sortable-keys ()
  (delq nil (mapcar (lambda (c)
                      (when (eq t (alist-get 'sortable c)) (alist-get 'key c)))
                    (table-view--columns table-view--spec))))

(defun table-view-filter (pattern)
  "Filter rows to those with any cell matching PATTERN.
Empty PATTERN clears the filter."
  (interactive "sFilter: ")
  (setq table-view--filter (if (string-empty-p pattern) nil pattern))
  (table-view--render)
  (if table-view--filter
      (message "Filter: %s (%d/%d rows)"
               table-view--filter
               (length (table-view--visible-rows))
               (length table-view--rows))
    (message "Filter cleared")))

(defun table-view-sort ()
  "Clear any filter and refresh the view, preserving the current ordering.
An unsorted table stays in load order; a sorted table keeps its sort.
Begin sorting with `^' (cycle column) or `~' (toggle direction)."
  (interactive)
  (setq table-view--filter nil)
  (when table-view--sorted
    (table-view--sort-rows))
  (table-view--render)
  (message (if table-view--sorted
               (format "Sort: %s %s" table-view--sort-key
                       (if table-view--sort-asc "asc" "desc"))
             "Unsorted")))

(defun table-view-sort-cycle ()
  "Cycle the sort column among sortable columns.
Point keeps its on-screen location (line and column) across the
re-sort, rather than following the row it was on."
  (interactive)
  (let* ((keys (table-view--sortable-keys))
         (idx (cl-position table-view--sort-key keys :test #'equal))
         (next (and keys (nth (mod (1+ (or idx -1)) (length keys)) keys))))
    (when next
      (table-view--save-point-location
        (setq table-view--sort-key next table-view--sort-asc t)
        (table-view--sort-rows)
        (table-view--render))
      (message "Sort: %s asc" next))))

(defun table-view-sort-toggle-direction ()
  "Toggle ascending/descending of the current sort.
Point keeps its on-screen location (line and column) across the
re-sort, as with `table-view-sort-cycle'."
  (interactive)
  (table-view--save-point-location
    (setq table-view--sort-asc (not table-view--sort-asc))
    (table-view--sort-rows)
    (table-view--render))
  (message "Sort: %s %s" table-view--sort-key (if table-view--sort-asc "asc" "desc")))

;;; Public API

(defun table-view-parse (json-string)
  "Parse JSON-STRING into the alist shape the core expects."
  (json-parse-string json-string
                     :object-type 'alist :array-type 'list
                     :null-object nil :false-object nil))

(defun table-view-set-rows (buffer rows)
  "Replace all rows in table-view BUFFER (a buffer or name) with ROWS."
  (let ((buf (get-buffer buffer)))
    (when (buffer-live-p buf)
      (with-current-buffer buf
        (setq table-view--rows (copy-sequence rows)
              table-view--sorted nil)
        (table-view--render)))))

(defun table-view-upsert-row (buffer row)
  "Add ROW to table-view BUFFER (a buffer or name), or replace its id-match."
  (let ((buf (get-buffer buffer)))
    (when (buffer-live-p buf)
      (with-current-buffer buf
        (let ((id (alist-get 'id row)) (found nil))
          (setq table-view--rows
                (mapcar (lambda (r)
                          (if (equal (alist-get 'id r) id)
                              (progn (setq found t) row)
                            r))
                        table-view--rows))
          (unless found
            (setq table-view--rows (nconc table-view--rows (list row))))
          (table-view--render))))))

(defun table-view-refresh (buffer)
  "Re-invoke the registered `fill-fn' for table-view BUFFER (a buffer or name)."
  (let ((buf (get-buffer buffer)))
    (when (buffer-live-p buf)
      (with-current-buffer buf
        (when table-view--fill-fn
          (funcall table-view--fill-fn buf))))))

(defun table-view-display (buffer spec handlers &optional fill-fn)
  "Render SPEC into BUFFER, install HANDLERS, and run FILL-FN to populate.
SPEC is a parsed alist (see `table-view-parse').  HANDLERS is an alist of
command-name (string) -> (FN ID ROW).  FILL-FN, if non-nil, is a function
of one argument (BUFFER) that populates rows via `table-view-set-rows' /
`table-view-upsert-row'.  Returns the buffer."
  (let ((buf (get-buffer-create buffer)))
    (with-current-buffer buf
      (table-view-mode)
      (setq table-view--spec spec
            table-view--rows (alist-get 'rows spec)
            table-view--handlers handlers
            table-view--fill-fn fill-fn)
      (let ((sort (alist-get 'sort spec)))
        (setq table-view--sort-key (alist-get 'column sort)
              table-view--sort-asc (if (assq 'ascending sort)
                                       (and (alist-get 'ascending sort) t)
                                     t)))
      (table-view--install-action-keys spec)
      (table-view--render))
    (switch-to-buffer buf)
    (when fill-fn (funcall fill-fn buf))
    buf))

(provide 'table-view)
;;; table-view.el ends here

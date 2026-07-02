;;; table-view-test.el --- Tests for table-view -*- lexical-binding: t; -*-

(require 'ert)
(require 'table-view)

;;; Helpers

(defconst tv-test--spec-json
  "{ \"title\": \"Test\",
     \"columns\": [
       { \"key\": \"name\",   \"header\": \"Name\",   \"sortable\": true },
       { \"key\": \"count\",  \"header\": \"Count\",  \"type\": \"number\",
         \"align\": \"right\", \"sortable\": true },
       { \"key\": \"status\", \"header\": \"Status\", \"type\": \"badge\",
         \"sortable\": true,
         \"badges\": [
           { \"value\": \"ok\",   \"color\": \"green\" },
           { \"value\": \"warn\", \"color\": \"yellow\" },
           { \"value\": \"err\",  \"color\": \"red\" }
         ] }
     ],
     \"actions\": [
       { \"key\": \"RET\", \"label\": \"Open\", \"command\": \"open\" }
     ],
     \"sort\": { \"column\": \"count\", \"ascending\": true },
     \"rows\": [] }")

(defun tv-test--spec ()
  (table-view-parse tv-test--spec-json))

(defun tv-test--rows ()
  '(((id . "a") (cells . ((name . "alpha") (count . 3)  (status . "ok"))))
    ((id . "b") (cells . ((name . "bravo") (count . 1)  (status . "err"))))
    ((id . "c") (cells . ((name . "charlie") (count . 2) (status . "warn"))))))

(defmacro tv-test--with-table (&rest body)
  (declare (indent 0))
  `(let ((buf (get-buffer-create " *tv-test*")))
     (unwind-protect
         (progn
           (table-view-display buf (tv-test--spec) nil)
           (table-view-set-rows buf (tv-test--rows))
           (with-current-buffer buf ,@body))
       (kill-buffer buf))))

;;; Parse

(ert-deftest tv-test-parse ()
  (let ((spec (tv-test--spec)))
    (should (equal (alist-get 'title spec) "Test"))
    (should (= (length (table-view--columns spec)) 3))
    (should (= (length (table-view--actions spec)) 1))))

;;; Rendering

(ert-deftest tv-test-render-rows ()
  (tv-test--with-table
    (should (= (length table-view--rows) 3))
    (should (string-match-p "alpha" (buffer-string)))
    (should (string-match-p "bravo" (buffer-string)))
    (should (string-match-p "charlie" (buffer-string)))))

(ert-deftest tv-test-render-header ()
  (tv-test--with-table
    (should (string-match-p "Name" (buffer-string)))
    (should (string-match-p "Count" (buffer-string)))
    (should (string-match-p "Status" (buffer-string)))))

(ert-deftest tv-test-render-title ()
  (tv-test--with-table
    (should (string-match-p "Test" (buffer-string)))))

(ert-deftest tv-test-render-no-rows ()
  (let ((buf (get-buffer-create " *tv-test-empty*")))
    (unwind-protect
        (progn
          (table-view-display buf (tv-test--spec) nil)
          (with-current-buffer buf
            (should (string-match-p "(no rows)" (buffer-string)))))
      (kill-buffer buf))))

;;; Set rows / upsert

(ert-deftest tv-test-set-rows ()
  (tv-test--with-table
    (table-view-set-rows (current-buffer) (list (car (tv-test--rows))))
    (should (= (length table-view--rows) 1))
    (should (string-match-p "alpha" (buffer-string)))
    (should-not (string-match-p "bravo" (buffer-string)))))

(ert-deftest tv-test-upsert-new ()
  (tv-test--with-table
    (table-view-upsert-row (current-buffer)
      '((id . "d") (cells . ((name . "delta") (count . 9) (status . "ok")))))
    (should (= (length table-view--rows) 4))
    (should (string-match-p "delta" (buffer-string)))))

(ert-deftest tv-test-upsert-existing ()
  (tv-test--with-table
    (table-view-upsert-row (current-buffer)
      '((id . "a") (cells . ((name . "ALPHA") (count . 99) (status . "warn")))))
    (should (= (length table-view--rows) 3))
    (let ((row (cl-find "a" table-view--rows
                        :key (lambda (r) (alist-get 'id r)) :test #'equal)))
      (should (equal (alist-get 'name (alist-get 'cells row)) "ALPHA"))
      (should (equal (alist-get 'count (alist-get 'cells row)) 99)))))

;;; Sorting

(ert-deftest tv-test-sort-ascending ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("count" . t)))
    (table-view--sort-rows)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("b" "c" "a")))))

(ert-deftest tv-test-sort-descending ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("count")))   ; ("count" . nil) = descending
    (table-view--sort-rows)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("a" "c" "b")))))

(ert-deftest tv-test-sort-string ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("name" . t)))
    (table-view--sort-rows)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("a" "b" "c")))))

(ert-deftest tv-test-sort-badge ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("status" . t)))
    (table-view--sort-rows)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("a" "c" "b")))))

(ert-deftest tv-test-sort-sets-sorted-flag ()
  (tv-test--with-table
    (should-not table-view--sorted)
    (setq table-view--sort-keys '(("count" . t)))
    (table-view--sort-rows)
    (should table-view--sorted)))

(ert-deftest tv-test-set-rows-clears-sorted ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("count" . t)))
    (table-view--sort-rows)
    (should table-view--sorted)
    (table-view-set-rows (current-buffer) (tv-test--rows))
    (should-not table-view--sorted)))

(ert-deftest tv-test-sort-cycle-walks-columns-and-directions ()
  (tv-test--with-table
    (goto-char (point-min))             ; not on a column cell
    (setq table-view--sort-keys nil table-view--sorted nil)
    (cl-flet ((step ()
                (call-interactively #'table-view-sort-cycle)
                (car table-view--sort-keys)))
      (should (equal (step) '("name" . t)))
      (should (equal (step) '("name")))        ; name desc
      (should (equal (step) '("count" . t)))
      (should (equal (step) '("count")))       ; count desc
      (should (equal (step) '("status" . t)))
      (should (equal (step) '("status")))      ; status desc
      (should (equal (step) '("name" . t)))))) ; wraps around

(ert-deftest tv-test-sort-by-column-at-point ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column 2)       ; onto the "count" cell
    (should (equal (tv-test--col-at-point) "count"))
    (call-interactively #'table-view-sort-cycle)
    (should (equal table-view--sort-keys '(("count" . t))))
    (should table-view--sorted)))

(ert-deftest tv-test-sort-column-at-point-toggles ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column 2)       ; onto "count"
    (call-interactively #'table-view-sort-cycle)      ; count asc
    (should (equal table-view--sort-keys '(("count" . t))))
    (should (equal (tv-test--col-at-point) "count"))  ; cursor still on count
    (call-interactively #'table-view-sort-cycle)      ; same column -> toggle desc
    (should (equal table-view--sort-keys '(("count"))))
    (call-interactively #'table-view-sort-cycle)      ; toggle back to asc
    (should (equal table-view--sort-keys '(("count" . t))))))

;;; Multi-column sort (C-u ^)

(defconst tv-test--tie-rows
  '(((id . "x") (cells . ((name . "same") (count . 2) (status . "ok"))))
    ((id . "y") (cells . ((name . "same") (count . 1) (status . "err"))))
    ((id . "z") (cells . ((name . "diff") (count . 5) (status . "ok")))))
  "Rows where X and Y tie on `name'.")

(ert-deftest tv-test-sort-secondary-breaks-ties ()
  (tv-test--with-table
    (table-view-set-rows (current-buffer) tv-test--tie-rows)
    (setq table-view--sort-keys '(("name" . t) ("count" . t)))  ; name asc, count asc
    (table-view--sort-rows)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("z" "y" "x")))))                            ; ties broken by count

(ert-deftest tv-test-sort-secondary-direction-independent ()
  (tv-test--with-table
    (table-view-set-rows (current-buffer) tv-test--tie-rows)
    (setq table-view--sort-keys '(("name" . t) ("count")))      ; name asc, count DESC
    (table-view--sort-rows)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("z" "x" "y")))))

(ert-deftest tv-test-sort-cu-appends-secondary ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column)                          ; onto "name"
    (call-interactively #'table-view-sort-cycle)         ; ^ -> name asc
    (should (equal table-view--sort-keys '(("name" . t))))
    (table-view-forward-column)                          ; onto "count"
    (should (equal (tv-test--col-at-point) "count"))
    (let ((current-prefix-arg '(4)))
      (call-interactively #'table-view-sort-cycle))      ; C-u ^ -> append count
    (should (equal table-view--sort-keys '(("name" . t) ("count" . t))))))

(ert-deftest tv-test-sort-cu-toggles-chained-column ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("name" . t) ("count" . t)) table-view--sorted t)
    (table-view--goto-id "a")
    (table-view-forward-column)                          ; onto "name" (already chained)
    (let ((current-prefix-arg '(4)))
      (call-interactively #'table-view-sort-cycle))      ; C-u ^ -> flip name in place
    (should (equal table-view--sort-keys '(("name") ("count" . t))))))

(ert-deftest tv-test-sort-cu-off-column-is-noop ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("name" . t)) table-view--sorted t)
    (goto-char (point-min))                              ; not on a column
    (let ((current-prefix-arg '(4)))
      (call-interactively #'table-view-sort-cycle))      ; C-u ^ off a column
    (should (equal table-view--sort-keys '(("name" . t))))))  ; unchanged

(ert-deftest tv-test-sort-primary-collapses-chain ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("name" . t) ("count" . t)) table-view--sorted t)
    (table-view--goto-id "a")
    (table-view-forward-column 2)                        ; onto "count"
    (call-interactively #'table-view-sort-cycle)         ; ^ (no prefix) collapses
    (should (equal table-view--sort-keys '(("count" . t))))))

(ert-deftest tv-test-hint-multi-column ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("name" . t) ("count") ("status" . t))
          table-view--sorted t)
    (should (string-match-p "name asc -> count desc -> status asc"
                            (table-view--hint-string)))))

(ert-deftest tv-test-sort-by-header-column ()
  (tv-test--with-table
    (goto-char (point-min))
    (forward-line 3)                    ; header row
    (table-view-forward-column 2)       ; onto the "count" header cell
    (should (equal (tv-test--col-at-point) "count"))
    (call-interactively #'table-view-sort-cycle)   ; ^ on the header sorts by count
    (should (equal table-view--sort-keys '(("count" . t))))
    (should table-view--sorted)))

(ert-deftest tv-test-toggle-sort-key ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("name" . t) ("count" . t)) table-view--sorted t)
    (table-view--toggle-sort-key "count")
    (should (equal table-view--sort-keys '(("name" . t) ("count"))))       ; flipped
    (table-view--toggle-sort-key "count")
    (should (equal table-view--sort-keys '(("name" . t) ("count" . t)))))) ; flipped back

(ert-deftest tv-test-secondary-toggle-map ()
  ;; After `C-u ^', a run of plain `^' toggles the just-added key: the
  ;; transient map binds `^' to flip that column's direction.
  (tv-test--with-table
    (setq table-view--sort-keys '(("name" . t) ("count" . t)) table-view--sorted t)
    (let ((cmd (lookup-key (table-view--secondary-toggle-map "count") "^")))
      (should (commandp cmd))
      (call-interactively cmd)          ; simulate one transient `^'
      (should (equal table-view--sort-keys '(("name" . t) ("count"))))
      (call-interactively cmd)          ; continuous `^' keeps toggling
      (should (equal table-view--sort-keys '(("name" . t) ("count" . t)))))))

;;; Filtering

(ert-deftest tv-test-filter-matches ()
  (tv-test--with-table
    (setq table-view--filter "alpha")
    (let ((visible (table-view--visible-rows)))
      (should (= (length visible) 1))
      (should (equal (alist-get 'id (car visible)) "a")))))

(ert-deftest tv-test-filter-case-insensitive ()
  (tv-test--with-table
    (setq table-view--filter "BRAVO")
    (let ((visible (table-view--visible-rows)))
      (should (= (length visible) 1))
      (should (equal (alist-get 'id (car visible)) "b")))))

(ert-deftest tv-test-filter-across-columns ()
  (tv-test--with-table
    (setq table-view--filter "err")
    (let ((visible (table-view--visible-rows)))
      (should (= (length visible) 1))
      (should (equal (alist-get 'id (car visible)) "b")))))

(ert-deftest tv-test-filter-no-match ()
  (tv-test--with-table
    (setq table-view--filter "zzz")
    (should (= (length (table-view--visible-rows)) 0))))

(ert-deftest tv-test-filter-nil-shows-all ()
  (tv-test--with-table
    (setq table-view--filter nil)
    (should (= (length (table-view--visible-rows)) 3))))

(ert-deftest tv-test-filter-empty-string-shows-all ()
  (tv-test--with-table
    (setq table-view--filter "")
    (should (= (length (table-view--visible-rows)) 3))))

(ert-deftest tv-test-filter-renders-subset ()
  (tv-test--with-table
    (setq table-view--filter "charlie")
    (table-view--render)
    (should (string-match-p "charlie" (buffer-string)))
    (should-not (string-match-p "alpha" (buffer-string)))
    (should-not (string-match-p "bravo" (buffer-string)))))

(ert-deftest tv-test-sort-clears-filter ()
  (tv-test--with-table
    (setq table-view--filter "alpha")
    (call-interactively #'table-view-sort)
    (should-not table-view--filter)))

;;; Hint string

(ert-deftest tv-test-hint-unsorted ()
  (tv-test--with-table
    (setq table-view--sorted nil)
    (should (string-match-p "unsorted" (table-view--hint-string)))))

(ert-deftest tv-test-hint-sorted ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("count" . t))
          table-view--sorted t)
    (should (string-match-p "count asc" (table-view--hint-string)))))

(ert-deftest tv-test-hint-filter ()
  (tv-test--with-table
    (setq table-view--filter "alpha")
    (let ((hint (table-view--hint-string)))
      (should (string-match-p "filter: alpha" hint))
      (should (string-match-p "1/3" hint)))))

;;; Dispatch

(ert-deftest tv-test-dispatch ()
  (let ((called nil))
    (tv-test--with-table
      (setq table-view--handlers
            `(("open" . ,(lambda (id _row) (setq called id)))))
      (goto-char (point-min))
      (text-property-search-forward 'table-view-id)
      (table-view--dispatch "open")
      (should called))))

;;; Cell helpers

(ert-deftest tv-test-str ()
  (should (equal (table-view--str nil) ""))
  (should (equal (table-view--str "foo") "foo"))
  (should (equal (table-view--str 42) "42"))
  (should (equal (table-view--str 'sym) "sym")))

(ert-deftest tv-test-badge-color ()
  (let* ((spec (tv-test--spec))
         (col (table-view--column spec "status")))
    (should (equal (table-view--badge-color col "ok") "green"))
    (should (equal (table-view--badge-color col "warn") "yellow"))
    (should (equal (table-view--badge-color col "err") "red"))
    (should-not (table-view--badge-color col "unknown"))))

;;; Navigation (f/b)

(defun tv-test--col-at-point ()
  "Column key of the cell point is on, or nil."
  (get-text-property (point) 'table-view-col))

(ert-deftest tv-test-on-cells-p ()
  (tv-test--with-table
    (goto-char (point-min))             ; title line: no cells
    (should-not (table-view--on-cells-p))
    (forward-line 3)                    ; header row: has cells
    (should (table-view--on-cells-p))
    (table-view--goto-id "a")           ; data row: has cells
    (should (table-view--on-cells-p))))

(ert-deftest tv-test-cells-tagged-with-column ()
  (tv-test--with-table
    (table-view--goto-id "a")           ; point at the row's leading "|"
    (goto-char (+ (point) 2))           ; into the first cell, past "| "
    (should (equal (tv-test--col-at-point) "name"))))

(ert-deftest tv-test-header-cells-tagged ()
  (tv-test--with-table
    (goto-char (point-min))
    (forward-line 3)                    ; header row
    (forward-char 2)                    ; into the first header cell
    (should (equal (tv-test--col-at-point) "name"))))

(ert-deftest tv-test-forward-column-on-header ()
  (tv-test--with-table
    (goto-char (point-min))
    (forward-line 3)                    ; header row (at bol)
    (table-view-forward-column)
    (should (equal (tv-test--col-at-point) "name"))
    (table-view-forward-column)
    (should (equal (tv-test--col-at-point) "count"))))

(ert-deftest tv-test-f-on-header-moves-by-column ()
  (tv-test--with-table
    (goto-char (point-min))
    (forward-line 3)                    ; header row
    (call-interactively #'table-view-forward)   ; f -> column motion on the header
    (should (equal (tv-test--col-at-point) "name"))))

(ert-deftest tv-test-forward-column ()
  (tv-test--with-table
    (table-view--goto-id "a")           ; point at the row's leading "|"
    (table-view-forward-column)
    (should (equal (tv-test--col-at-point) "name"))
    (table-view-forward-column)
    (should (equal (tv-test--col-at-point) "count"))
    (table-view-forward-column)
    (should (equal (tv-test--col-at-point) "status"))))

(ert-deftest tv-test-backward-column ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column 3)       ; status
    (should (equal (tv-test--col-at-point) "status"))
    (table-view-backward-column)
    (should (equal (tv-test--col-at-point) "count"))
    (table-view-backward-column)
    (should (equal (tv-test--col-at-point) "name"))))

(ert-deftest tv-test-forward-column-count ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column 2)
    (should (equal (tv-test--col-at-point) "count"))))

(ert-deftest tv-test-forward-column-stops-at-last ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column 9)       ; well past the last cell
    (should (equal (tv-test--col-at-point) "status"))))

(ert-deftest tv-test-backward-column-stops-at-first ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column)         ; name (first cell)
    (table-view-backward-column)        ; no move
    (should (equal (tv-test--col-at-point) "name"))))

(ert-deftest tv-test-forward-on-row-moves-by-column ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (call-interactively #'table-view-forward)
    (should (equal (tv-test--col-at-point) "name"))
    (call-interactively #'table-view-forward)
    (should (equal (tv-test--col-at-point) "count"))))

(ert-deftest tv-test-backward-on-row-moves-by-column ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column 2)       ; count
    (call-interactively #'table-view-backward)
    (should (equal (tv-test--col-at-point) "name"))))

(ert-deftest tv-test-forward-off-row-moves-by-char ()
  (tv-test--with-table
    (goto-char (point-min))             ; title line, not a row
    (let ((before (point)))
      (call-interactively #'table-view-forward)
      (should (= (point) (1+ before))))))

(ert-deftest tv-test-backward-off-row-moves-by-char ()
  (tv-test--with-table
    (goto-char (point-min))
    (forward-char 3)
    (let ((before (point)))
      (call-interactively #'table-view-backward)
      (should (= (point) (1- before))))))

;;; Refresh (g) preserves ordering

(ert-deftest tv-test-g-preserves-unsorted-order ()
  (tv-test--with-table
    (should-not table-view--sorted)
    (let ((before (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)))
      (call-interactively #'table-view-sort)
      (should-not table-view--sorted)
      (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                     before)))))

(ert-deftest tv-test-g-clears-filter-keeps-unsorted ()
  (tv-test--with-table
    (setq table-view--filter "alpha")
    (call-interactively #'table-view-sort)
    (should-not table-view--filter)
    (should-not table-view--sorted)))

(ert-deftest tv-test-g-keeps-active-sort ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("count" . t)))
    (table-view--sort-rows)             ; ascending by count -> b,c,a
    (should table-view--sorted)
    (call-interactively #'table-view-sort)
    (should table-view--sorted)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("b" "c" "a")))))

;;; Cursor location preserved across re-renders (^ g /)

(ert-deftest tv-test-sort-cycle-preserves-point-location ()
  (tv-test--with-table
    (goto-char (point-min))
    (forward-line 3)                    ; header row, on the "name" column
    (forward-char 2)
    (let ((line (line-number-at-pos))
          (col (current-column)))
      (call-interactively #'table-view-sort-cycle)    ; ^ on the header sorts by it
      (should table-view--sorted)                     ; a sort was applied
      (should (= (line-number-at-pos) line))          ; same on-screen line
      (should (= (current-column) col)))))            ; same column (not col 0)

(ert-deftest tv-test-g-preserves-point-location ()
  (tv-test--with-table
    (goto-char (point-min))
    (forward-line 6)                    ; a data row (rows render a,b,c)
    (forward-char 4)
    (let ((line (line-number-at-pos))
          (col (current-column)))
      (call-interactively #'table-view-sort)          ; g (refresh)
      (should (= (line-number-at-pos) line))          ; same on-screen line
      (should (= (current-column) col)))))            ; same column (not col 0)

(ert-deftest tv-test-filter-preserves-point-location ()
  (tv-test--with-table
    (goto-char (point-min))
    (forward-line 3)                    ; header line, stable across filtering
    (forward-char 2)
    (let ((line (line-number-at-pos))
          (col (current-column)))
      (table-view-filter "alpha")       ; hint grows, rows drop
      (should (= (line-number-at-pos) line))          ; same on-screen line
      (should (= (current-column) col)))))            ; same column (not col 0)

(provide 'table-view-test)
;;; table-view-test.el ends here

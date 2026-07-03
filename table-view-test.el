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

(defmacro tv-test--with-display (json &rest body)
  "Display the JSON spec (with its own rows) in a temp buffer, then run BODY."
  (declare (indent 1))
  `(let ((buf (get-buffer-create " *tv-disp*")))
     (unwind-protect
         (progn
           (table-view-display buf (table-view-parse ,json) nil)
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

;;; Default sort declared in the spec

(ert-deftest tv-test-parse-sort ()
  ;; single {column, ascending}
  (should (equal (table-view--parse-sort '((column . "a") (ascending . t))) '(("a" . t))))
  (should (equal (table-view--parse-sort '((column . "a") (ascending . nil))) '(("a"))))
  (should (equal (table-view--parse-sort '((column . "a"))) '(("a" . t))))   ; default asc
  ;; list of them -> multi-column chain, order preserved
  (should (equal (table-view--parse-sort '(((column . "a") (ascending . t))
                                           ((column . "b") (ascending . nil))))
                 '(("a" . t) ("b"))))
  (should (equal (table-view--parse-sort nil) nil)))

(ert-deftest tv-test-default-single-sort-applied ()
  (tv-test--with-display
      "{ \"columns\": [ {\"key\":\"n\",\"header\":\"N\",\"type\":\"number\",\"sortable\":true} ],
         \"sort\": { \"column\": \"n\", \"ascending\": true },
         \"rows\": [ {\"id\":\"1\",\"cells\":{\"n\":3}},
                     {\"id\":\"2\",\"cells\":{\"n\":1}},
                     {\"id\":\"3\",\"cells\":{\"n\":2}} ] }"
    (should (equal table-view--sort-keys '(("n" . t))))
    (should table-view--sorted)                          ; applied on open
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("2" "3" "1")))))

(ert-deftest tv-test-default-multi-sort-applied ()
  (tv-test--with-display
      "{ \"columns\": [ {\"key\":\"g\",\"header\":\"G\",\"sortable\":true},
                        {\"key\":\"n\",\"header\":\"N\",\"type\":\"number\",\"sortable\":true} ],
         \"sort\": [ { \"column\": \"g\", \"ascending\": true },
                     { \"column\": \"n\", \"ascending\": false } ],
         \"rows\": [ {\"id\":\"x\",\"cells\":{\"g\":\"A\",\"n\":1}},
                     {\"id\":\"y\",\"cells\":{\"g\":\"A\",\"n\":9}},
                     {\"id\":\"z\",\"cells\":{\"g\":\"B\",\"n\":5}} ] }"
    (should (equal table-view--sort-keys '(("g" . t) ("n"))))   ; multi-column chain
    (should table-view--sorted)                                  ; applied on open
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("y" "x" "z")))))                            ; group by g, n desc within

(ert-deftest tv-test-no-default-sort-opens-unsorted ()
  (tv-test--with-display
      "{ \"columns\": [ {\"key\":\"n\",\"header\":\"N\",\"type\":\"number\"} ],
         \"rows\": [ {\"id\":\"1\",\"cells\":{\"n\":3}},
                     {\"id\":\"2\",\"cells\":{\"n\":1}} ] }"
    (should-not table-view--sort-keys)
    (should-not table-view--sorted)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("1" "2")))))                                ; load order

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

;;; Column reordering (M-left / M-right)

(defun tv-test--col-order ()
  "Current display order of column keys."
  (mapcar (lambda (c) (alist-get 'key c))
          (table-view--columns table-view--spec)))

(ert-deftest tv-test-move-column-right ()
  (tv-test--with-table
    (should (equal (tv-test--col-order) '("name" "count" "status")))
    (table-view--goto-id "a")
    (table-view-forward-column)          ; onto "name"
    (call-interactively #'table-view-move-column-right)
    (should (equal (tv-test--col-order) '("count" "name" "status")))
    (should (equal (tv-test--col-at-point) "name"))))   ; point follows the column

(ert-deftest tv-test-move-column-left ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column 2)         ; onto "count"
    (call-interactively #'table-view-move-column-left)
    (should (equal (tv-test--col-order) '("count" "name" "status")))
    (should (equal (tv-test--col-at-point) "count"))))

(ert-deftest tv-test-move-column-on-header ()
  (tv-test--with-table
    (goto-char (point-min))
    (forward-line 3)                      ; header row
    (table-view-forward-column)           ; onto "name" header
    (call-interactively #'table-view-move-column-right)
    (should (equal (tv-test--col-order) '("count" "name" "status")))
    (should (equal (tv-test--col-at-point) "name"))))

(ert-deftest tv-test-move-column-at-edge-noop ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column 3)         ; onto "status" (rightmost)
    (call-interactively #'table-view-move-column-right)
    (should (equal (tv-test--col-order) '("name" "count" "status")))))   ; unchanged

(ert-deftest tv-test-move-column-off-column-noop ()
  (tv-test--with-table
    (goto-char (point-min))               ; title line, not a column
    (call-interactively #'table-view-move-column-right)
    (should (equal (tv-test--col-order) '("name" "count" "status")))))

(ert-deftest tv-test-move-column-does-not-mutate-shared-spec ()
  ;; Reordering must touch only the buffer's private copy, not the spec
  ;; object handed to `table-view-display' (which callers may share).
  (let ((spec (tv-test--spec))
        (buf (get-buffer-create " *tv-shared*")))
    (unwind-protect
        (progn
          (table-view-display buf spec nil)
          (table-view-set-rows buf (tv-test--rows))
          (with-current-buffer buf
            (table-view--goto-id "a")
            (table-view-forward-column)
            (call-interactively #'table-view-move-column-right)
            (should (equal (tv-test--col-order) '("count" "name" "status"))))
          (should (equal (mapcar (lambda (c) (alist-get 'key c))
                                 (alist-get 'columns spec))
                         '("name" "count" "status"))))   ; original spec intact
      (kill-buffer buf))))

;;; Comparators: compare / values / natural

(ert-deftest tv-test-comparator-natural ()
  (let ((less (table-view--comparator '((key . "v") (compare . "natural")))))
    (should (funcall less "2" "10"))                         ; 2 < 10 numerically
    (should-not (funcall less "10" "2"))
    (should (funcall less "item2" "item10"))))

(ert-deftest tv-test-comparator-number-coerces-strings ()
  (let ((less (table-view--comparator '((key . "v") (compare . "number")))))
    (should (funcall less "8" "80"))
    (should (funcall less "80" "443"))))

(ert-deftest tv-test-comparator-string-is-lexicographic ()
  (let ((less (table-view--comparator '((key . "v")))))      ; default, no type
    (should (funcall less "apple" "banana"))
    (should (funcall less "10" "2"))))                       ; lexicographic: "10" < "2"

(ert-deftest tv-test-comparator-categorical-values ()
  (let ((less (table-view--comparator '((key . "v") (values . ("low" "medium" "high"))))))
    (should (funcall less "low" "high"))
    (should-not (funcall less "high" "low"))
    (should (funcall less "high" "unknown"))))               ; unlisted sorts last

(ert-deftest tv-test-comparator-values-coerce-number-cells ()
  ;; values are strings, cells are numbers -> matched via `table-view--str'
  (let ((less (table-view--comparator '((key . "v") (values . ("3" "1" "2"))))))
    (should (funcall less 3 1))                              ; 3 is first in the domain
    (should (funcall less 1 2))))

(ert-deftest tv-test-comparator-compare-function ()
  (let ((less (table-view--comparator `((key . "v") (compare . ,(lambda (a b) (> a b)))))))
    (should (funcall less 5 3))))                            ; custom: larger first

(ert-deftest tv-test-comparator-registered-name ()
  (let* ((table-view-comparators
          (list (cons "rev" (lambda (a b) (string> (table-view--str a)
                                                   (table-view--str b))))))
         (less (table-view--comparator '((key . "v") (compare . "rev")))))
    (should (funcall less "b" "a"))
    (should-not (funcall less "a" "b"))))

(ert-deftest tv-test-comparator-badge-unchanged ()
  ;; a badge column with no `values' still sorts by palette order
  (let ((less (table-view--comparator
               '((key . "s") (type . "badge")
                 (badges . (((value . "ok")) ((value . "warn")) ((value . "err"))))))))
    (should (funcall less "ok" "err"))
    (should-not (funcall less "err" "ok"))))

(ert-deftest tv-test-comparator-number-type-default ()
  (let ((less (table-view--comparator '((key . "n") (type . "number")))))
    (should (funcall less 2 10))
    (should (funcall less nil 2))))                          ; nil coerces to 0 < 2

(ert-deftest tv-test-natural-sort-end-to-end ()
  (tv-test--with-display
      "{ \"columns\": [ {\"key\":\"v\",\"header\":\"V\",\"compare\":\"natural\",\"sortable\":true} ],
         \"rows\": [ {\"id\":\"a\",\"cells\":{\"v\":\"item10\"}},
                     {\"id\":\"b\",\"cells\":{\"v\":\"item2\"}},
                     {\"id\":\"c\",\"cells\":{\"v\":\"item1\"}} ] }"
    (setq table-view--sort-keys '(("v" . t)))
    (table-view--sort-rows)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("c" "b" "a")))))                        ; item1, item2, item10

(ert-deftest tv-test-values-sort-end-to-end ()
  (tv-test--with-display
      "{ \"columns\": [ {\"key\":\"p\",\"header\":\"P\",\"sortable\":true,
                         \"values\":[\"low\",\"medium\",\"high\"]} ],
         \"rows\": [ {\"id\":\"a\",\"cells\":{\"p\":\"high\"}},
                     {\"id\":\"b\",\"cells\":{\"p\":\"low\"}},
                     {\"id\":\"c\",\"cells\":{\"p\":\"medium\"}} ] }"
    (setq table-view--sort-keys '(("p" . t)))
    (table-view--sort-rows)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("b" "c" "a")))))                        ; low, medium, high

;;; Sortable defaults to true

(ert-deftest tv-test-sortable-defaults-true-opt-out-false ()
  (tv-test--with-display
      "{ \"columns\": [ {\"key\":\"a\",\"header\":\"A\"},
                        {\"key\":\"b\",\"header\":\"B\",\"sortable\":true},
                        {\"key\":\"c\",\"header\":\"C\",\"sortable\":false} ],
         \"rows\": [] }"
    (let ((keys (table-view--sortable-keys)))
      (should (member "a" keys))          ; omitted -> sortable by default
      (should (member "b" keys))          ; explicit true
      (should-not (member "c" keys)))))   ; explicit false -> opt out

;;; Row deletion

(defun tv-test--has-id (id)
  "Non-nil when a row with ID is present."
  (cl-find id table-view--rows :key (lambda (r) (alist-get 'id r)) :test #'equal))

(ert-deftest tv-test-delete-row ()
  (tv-test--with-table
    (should (= (length table-view--rows) 3))
    (table-view--goto-id "b")
    (should (table-view-delete-row (current-buffer) "b"))
    (should (= (length table-view--rows) 2))
    (should-not (tv-test--has-id "b"))
    (should-not (string-match-p "bravo" (buffer-string)))
    (should (equal (get-text-property (point) 'table-view-id) "c"))))  ; point on next row

(ert-deftest tv-test-delete-row-last ()
  (tv-test--with-table
    (table-view--goto-id "c")
    (table-view-delete-row (current-buffer) "c")
    (should (= (length table-view--rows) 2))
    (should (equal (get-text-property (point) 'table-view-id) "b"))))  ; last -> previous

(ert-deftest tv-test-delete-row-only ()
  (tv-test--with-table
    (table-view-set-rows (current-buffer) (list (car (tv-test--rows))))
    (should (table-view-delete-row (current-buffer) "a"))
    (should (= (length table-view--rows) 0))
    (should (string-match-p "(no rows)" (buffer-string)))))

(ert-deftest tv-test-delete-row-missing-is-noop ()
  (tv-test--with-table
    (should-not (table-view-delete-row (current-buffer) "zzz"))
    (should (= (length table-view--rows) 3))))

(ert-deftest tv-test-delete-row-via-gated-handler ()
  ;; the "proceed only after success" pattern: a handler that deletes only
  ;; when its pre-delete step succeeds
  (tv-test--with-table
    (setq table-view--handlers
          `(("delete" . ,(lambda (id _row)
                           (when (equal id "b")           ; pretend cleanup succeeds only for b
                             (table-view-delete-row (current-buffer) id))))))
    (table-view--goto-id "a")
    (table-view--dispatch "delete")                       ; gate fails -> kept
    (should (= (length table-view--rows) 3))
    (should (tv-test--has-id "a"))
    (table-view--goto-id "b")
    (table-view--dispatch "delete")                       ; gate succeeds -> removed
    (should (= (length table-view--rows) 2))
    (should-not (tv-test--has-id "b"))))

;;; Marks and bulk

(ert-deftest tv-test-mark-toggle ()
  (tv-test--with-table
    (table-view--goto-id "b")
    (table-view-mark-toggle)
    (should (equal table-view--marks '("b")))
    (should (table-view--marked-p "b"))
    (table-view--goto-id "b")
    (table-view-mark-toggle)                       ; toggle off
    (should-not table-view--marks)))

(ert-deftest tv-test-mark-gutter-only-when-marked ()
  (tv-test--with-table
    (should-not (string-match-p "| \\* |" (buffer-string)))   ; no gutter yet
    (table-view--goto-id "a")
    (table-view-mark-toggle)
    (should (string-match-p "| \\* |" (buffer-string)))))     ; gutter with a `*'

(ert-deftest tv-test-mark-advances-point ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-mark-toggle)
    (should (equal (get-text-property (point) 'table-view-id) "b"))))

(ert-deftest tv-test-mark-gutter-preserves-column-nav ()
  (tv-test--with-table
    (table-view--goto-id "a") (table-view-mark-toggle)   ; gutter now present
    (table-view--goto-id "b")
    (table-view-forward-column)
    (should (equal (get-text-property (point) 'table-view-col) "name"))))

(ert-deftest tv-test-unmark-all ()
  (tv-test--with-table
    (table-view--goto-id "a") (table-view-mark-toggle)
    (table-view--goto-id "c") (table-view-mark-toggle)
    (should (= (length table-view--marks) 2))
    (table-view-unmark-all)
    (should-not table-view--marks)
    (should-not table-view--narrowed)))

(ert-deftest tv-test-marked-rows-in-row-order ()
  (tv-test--with-table
    (table-view--goto-id "c") (table-view-mark-toggle)
    (table-view--goto-id "a") (table-view-mark-toggle)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) (table-view-marked-rows))
                   '("a" "c")))))                 ; row order, not mark order

(ert-deftest tv-test-narrow-to-marked ()
  (tv-test--with-table
    (table-view--goto-id "a") (table-view-mark-toggle)
    (table-view--goto-id "c") (table-view-mark-toggle)
    (table-view-narrow-toggle)
    (should table-view--narrowed)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) (table-view--visible-rows))
                   '("a" "c")))
    (should-not (string-match-p "bravo" (buffer-string)))
    (table-view-narrow-toggle)                    ; widen
    (should-not table-view--narrowed)
    (should (string-match-p "bravo" (buffer-string)))))

(ert-deftest tv-test-slash-narrows-when-marked ()
  (tv-test--with-table
    (table-view--goto-id "a") (table-view-mark-toggle)
    (table-view-filter-or-narrow)                 ; marks present -> narrow, no prompt
    (should table-view--narrowed)))

(ert-deftest tv-test-bulk-dispatch-uses-marked ()
  (tv-test--with-table
    (let (got)
      (setq table-view--handlers
            `(("act" . ,(lambda (rows)
                          (setq got (mapcar (lambda (r) (alist-get 'id r)) rows))))))
      (table-view--goto-id "a") (table-view-mark-toggle)
      (table-view--goto-id "c") (table-view-mark-toggle)
      (table-view--dispatch "act" t)
      (should (equal got '("a" "c"))))))

(ert-deftest tv-test-bulk-dispatch-falls-back-to-current ()
  (tv-test--with-table
    (let (got)
      (setq table-view--handlers
            `(("act" . ,(lambda (rows)
                          (setq got (mapcar (lambda (r) (alist-get 'id r)) rows))))))
      (setq table-view--marks nil)
      (table-view--goto-id "b")
      (table-view--dispatch "act" t)
      (should (equal got '("b"))))))              ; nothing marked -> current row only

(ert-deftest tv-test-marks-pruned-on-delete ()
  (tv-test--with-table
    (table-view--goto-id "b") (table-view-mark-toggle)
    (should (table-view--marked-p "b"))
    (table-view-delete-row (current-buffer) "b")
    (should-not (table-view--marked-p "b"))
    (should-not table-view--marks)))

(ert-deftest tv-test-unmark-last-while-narrowed-widens ()
  ;; Regression: unmarking the last mark while narrowed must widen the view,
  ;; not leave it narrowed to an empty set showing "(no rows)".
  (tv-test--with-table
    (table-view--goto-id "a") (table-view-mark-toggle)
    (table-view-narrow-toggle)
    (should table-view--narrowed)
    (table-view--goto-id "a") (table-view-mark-toggle)   ; unmark the last mark
    (should-not table-view--marks)
    (should-not table-view--narrowed)                    ; widened
    (should (= (length (table-view--visible-rows)) 3))
    (should-not (string-match-p "(no rows)" (buffer-string)))))

(ert-deftest tv-test-marks-persist-across-sort ()
  (tv-test--with-table
    (table-view--goto-id "a") (table-view-mark-toggle)
    (setq table-view--sort-keys '(("count" . t)))
    (table-view--sort-rows)
    (table-view--render)
    (should (table-view--marked-p "a"))))         ; mark survives the re-sort

;;; Pagination (server-side)

(defvar tv-test--fetches nil
  "Requests the fake backend received during a paged test (newest first).")

(defun tv-test--dataset (n)
  "N rows r1..rN with a numeric `num' cell and a `name' cell \"user-K\"."
  (cl-loop for i from 1 to n
           collect `((id . ,(format "r%d" i))
                     (cells . ((num . ,i) (name . ,(format "user-%d" i)))))))

(defun tv-test--numof (row) (alist-get 'num (alist-get 'cells row)))

(defun tv-test--apply-query (rows req)
  "Filter and sort ROWS per REQ, emulating what a backend would do.
Filters `name' by substring and sorts by the FULL sort chain (so multi-key
push-down can be tested)."
  (let ((filter (plist-get req :filter))
        (sort (plist-get req :sort)))
    (when (and filter (not (string-empty-p filter)))
      (setq rows (cl-remove-if-not
                  (lambda (r)
                    (string-match-p (regexp-quote (downcase filter))
                                    (downcase (alist-get 'name (alist-get 'cells r)))))
                  rows)))
    (when sort
      (setq rows (sort (copy-sequence rows)
                       (lambda (a b)
                         (cl-loop
                          for ka in sort
                          for key = (intern (car ka))
                          for asc = (cdr ka)
                          for va = (alist-get key (alist-get 'cells a))
                          for vb = (alist-get key (alist-get 'cells b))
                          do (cond
                              ((if (numberp va) (< va vb)
                                 (string< (format "%s" va) (format "%s" vb)))
                               (cl-return asc))
                              ((if (numberp va) (> va vb)
                                 (string< (format "%s" vb) (format "%s" va)))
                               (cl-return (not asc))))
                          finally return nil)))))
    rows))

(defun tv-test--offset-page-fn (dataset)
  "An OFFSET-mode page-fn serving DATASET synchronously, reporting :total."
  (lambda (req)
    (push req tv-test--fetches)
    (let* ((matched (tv-test--apply-query dataset req))
           (total (length matched))
           (offset (plist-get req :offset))
           (limit (plist-get req :limit))
           (page (seq-subseq matched (min offset total) (min (+ offset limit) total))))
      (table-view-set-page (plist-get req :buffer) page :total total))))

(defun tv-test--keyset-page-fn (dataset)
  "A KEYSET-mode page-fn serving DATASET by ascending `num' via cursors."
  (lambda (req)
    (push req tv-test--fetches)
    (let* ((matched (tv-test--apply-query dataset req))
           (cursor (plist-get req :cursor))
           (dir (plist-get req :direction))
           (limit (plist-get req :limit))
           (page (cond
                  ((null cursor) (seq-take matched limit))
                  ((eq dir 'backward)
                   (last (cl-remove-if-not (lambda (r) (< (tv-test--numof r) cursor)) matched)
                         limit))
                  (t (seq-take (cl-remove-if-not
                                (lambda (r) (> (tv-test--numof r) cursor)) matched)
                               limit))))
           (first-num (and page (tv-test--numof (car page))))
           (last-num  (and page (tv-test--numof (car (last page)))))
           (has-next (and last-num
                          (cl-some (lambda (r) (> (tv-test--numof r) last-num)) matched)))
           (has-prev (and first-num
                          (cl-some (lambda (r) (< (tv-test--numof r) first-num)) matched))))
      (table-view-set-page (plist-get req :buffer) page
                           :next-cursor (and has-next last-num)
                           :prev-cursor (and has-prev first-num)))))

(defun tv-test--paged-spec (page-size strategy)
  (list (cons 'title "Paged")
        (cons 'columns
              (list (list (cons 'key "num") (cons 'header "Num") (cons 'type "number"))
                    (list (cons 'key "name") (cons 'header "Name"))))
        (cons 'pagination (list (cons 'page-size page-size) (cons 'strategy strategy)))))

(defmacro tv-test--with-paged (size page-size &rest body)
  "Display a paged OFFSET table over a fake backend of SIZE rows, run BODY."
  (declare (indent 2))
  `(let ((buf (get-buffer-create " *tv-paged*"))
         (tv-test--fetches nil)
         (data (tv-test--dataset ,size)))
     (unwind-protect
         (progn
           (table-view-display buf (tv-test--paged-spec ,page-size 'offset)
                               nil nil (tv-test--offset-page-fn data))
           (with-current-buffer buf ,@body))
       (kill-buffer buf))))

(defmacro tv-test--with-keyset (size page-size &rest body)
  "Display a paged KEYSET table over a fake backend of SIZE rows, run BODY."
  (declare (indent 2))
  `(let ((buf (get-buffer-create " *tv-keyset*"))
         (tv-test--fetches nil)
         (data (tv-test--dataset ,size)))
     (unwind-protect
         (progn
           (table-view-display buf (tv-test--paged-spec ,page-size 'keyset)
                               nil nil (tv-test--keyset-page-fn data))
           (with-current-buffer buf ,@body))
       (kill-buffer buf))))

(defun tv-test--visible-ids ()
  (mapcar (lambda (r) (alist-get 'id r)) (table-view--visible-rows)))

;; -- setup / offset basics --

(ert-deftest tv-test-page-enabled ()
  (tv-test--with-paged 10 3
    (should (table-view--paged-p))
    (should (= table-view--page-size 3))
    (should (eq table-view--strategy 'offset))))

(ert-deftest tv-test-page-initial-fetch ()
  (tv-test--with-paged 10 3
    (should (equal (tv-test--visible-ids) '("r1" "r2" "r3")))   ; page 1
    (should (= table-view--offset 0))
    (should (= table-view--page-index 0))
    (should (= table-view--total 10))
    (should table-view--has-next)
    (let ((req (car tv-test--fetches)))                         ; the page-1 request
      (should (= (plist-get req :offset) 0))
      (should (= (plist-get req :limit) 3)))))

(ert-deftest tv-test-page-point-on-first-row ()
  (tv-test--with-paged 10 3
    (should (equal (get-text-property (point) 'table-view-id) "r1"))))

(ert-deftest tv-test-page-next ()
  (tv-test--with-paged 10 3
    (table-view-next-page)
    (should (equal (tv-test--visible-ids) '("r4" "r5" "r6")))
    (should (= table-view--offset 3))
    (should (= table-view--page-index 1))
    (should (equal (get-text-property (point) 'table-view-id) "r4"))))  ; same on-screen row (was at top)

(ert-deftest tv-test-page-prev ()
  (tv-test--with-paged 10 3
    (table-view-next-page)
    (table-view-prev-page)
    (should (equal (tv-test--visible-ids) '("r1" "r2" "r3")))
    (should (= table-view--offset 0))))

(ert-deftest tv-test-page-prev-at-start-is-noop ()
  (tv-test--with-paged 10 3
    (let ((n (length tv-test--fetches)))
      (table-view-prev-page)                     ; already first page
      (should (= (length tv-test--fetches) n))   ; no new fetch
      (should (= table-view--offset 0)))))

(ert-deftest tv-test-page-next-at-end-is-noop ()
  (tv-test--with-paged 5 5
    (should-not table-view--has-next)            ; 5 rows, page holds all
    (let ((n (length tv-test--fetches)))
      (table-view-next-page)
      (should (= (length tv-test--fetches) n)))))

(ert-deftest tv-test-page-last ()
  (tv-test--with-paged 10 3
    (table-view-last-page)
    (should (= table-view--offset 9))            ; ceil(10/3)=4 pages -> last starts at 9
    (should (= table-view--page-index 3))
    (should (equal (tv-test--visible-ids) '("r10")))
    (should-not table-view--has-next)))

(ert-deftest tv-test-page-first ()
  (tv-test--with-paged 10 3
    (table-view-last-page)
    (table-view-first-page)
    (should (= table-view--offset 0))
    (should (equal (tv-test--visible-ids) '("r1" "r2" "r3")))))

(ert-deftest tv-test-page-goto ()
  (tv-test--with-paged 10 3
    (table-view-goto-page 3)                     ; 1-based -> index 2 -> offset 6
    (should (= table-view--offset 6))
    (should (equal (tv-test--visible-ids) '("r7" "r8" "r9")))))

(ert-deftest tv-test-page-goto-clamps-past-end ()
  (tv-test--with-paged 10 3
    (table-view-goto-page 99)
    (should (= table-view--page-index 3))))      ; clamped to the last page

(ert-deftest tv-test-page-indicator ()
  (tv-test--with-paged 10 3
    (should (string-match-p "page 1/4 · 1-3 of 10" (table-view--hint-string)))
    (table-view-next-page)
    (should (string-match-p "page 2/4 · 4-6 of 10" (table-view--hint-string)))))

;; -- filter push-down --

(ert-deftest tv-test-page-filter-pushdown ()
  (tv-test--with-paged 12 3
    (table-view-filter "user-1")                 ; matches user-1,10,11,12 -> 4 rows
    (let ((req (car tv-test--fetches)))
      (should (equal (plist-get req :filter) "user-1"))
      (should (= (plist-get req :offset) 0)))    ; reset to page 1
    (should (= table-view--total 4))
    (should (equal (tv-test--visible-ids) '("r1" "r10" "r11")))
    (should table-view--has-next)))

(ert-deftest tv-test-page-filter-then-next-pages-filtered-set ()
  (tv-test--with-paged 12 3
    (table-view-filter "user-1")
    (table-view-next-page)
    (should (equal (tv-test--visible-ids) '("r12")))   ; 4th match, page 2 of the filtered set
    (should-not table-view--has-next)))

(ert-deftest tv-test-page-filter-clear-refetches-all ()
  (tv-test--with-paged 12 3
    (table-view-filter "user-1")
    (table-view-filter "")                       ; clear
    (should-not table-view--filter)
    (should (= table-view--total 12))
    (should (equal (tv-test--visible-ids) '("r1" "r2" "r3")))))

;; -- sort push-down --

(ert-deftest tv-test-page-sort-pushdown ()
  (tv-test--with-paged 10 3
    (setq table-view--sort-keys '(("num")))      ; num descending
    (table-view--commit-order)
    (let ((req (car tv-test--fetches)))
      (should (equal (plist-get req :sort) '(("num"))))
      (should (= (plist-get req :offset) 0)))    ; sort change resets to page 1
    (should (equal (tv-test--visible-ids) '("r10" "r9" "r8")))))  ; server order

(ert-deftest tv-test-page-does-not-sort-loaded-page-locally ()
  (tv-test--with-paged 10 3
    ;; a page arrives already ordered; the client must not re-sort the slice
    (setq table-view--sort-keys '(("num" . t)))
    (table-view--sort-rows)                      ; no-op on the rows in paged mode
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("r1" "r2" "r3")))
    (should table-view--sorted)))                ; but the sort still counts as active

;; -- marks & bulk across pages --

(ert-deftest tv-test-page-marks-span-pages ()
  (tv-test--with-paged 10 3
    (table-view--goto-id "r1") (table-view-mark-toggle)   ; page 1
    (table-view-next-page)
    (table-view--goto-id "r4") (table-view-mark-toggle)   ; page 2
    (should (equal (sort (copy-sequence table-view--marks) #'string<) '("r1" "r4")))
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) (table-view-marked-rows))
                   '("r1" "r4")))))              ; cached rows from both pages

(ert-deftest tv-test-page-mark-survives-page-turn ()
  (tv-test--with-paged 10 3
    (table-view--goto-id "r1") (table-view-mark-toggle)
    (table-view-next-page)                       ; r1 leaves the loaded page
    (should (table-view--marked-p "r1"))         ; mark not pruned
    (table-view-prev-page)
    (should (table-view--marked-p "r1"))))

(ert-deftest tv-test-page-bulk-across-pages ()
  (tv-test--with-paged 10 3
    (let (got)
      (setq table-view--handlers
            `(("act" . ,(lambda (rows)
                          (setq got (mapcar (lambda (r) (alist-get 'id r)) rows))))))
      (table-view--goto-id "r1") (table-view-mark-toggle)
      (table-view-next-page)
      (table-view--goto-id "r5") (table-view-mark-toggle)
      (table-view--dispatch "act" t)
      (should (equal got '("r1" "r5"))))))       ; bulk sees both, across pages

(ert-deftest tv-test-page-narrow-renders-cache ()
  (tv-test--with-paged 10 3
    (table-view--goto-id "r1") (table-view-mark-toggle)
    (table-view-next-page)
    (table-view--goto-id "r6") (table-view-mark-toggle)
    (table-view-narrow-toggle)
    (should table-view--narrowed)
    (should (equal (tv-test--visible-ids) '("r1" "r6")))   ; cached, spanning pages
    (should (string-match-p "user-1\\b" (buffer-string)))
    (should (string-match-p "user-6" (buffer-string)))))

(ert-deftest tv-test-page-unmark-all-clears-cache ()
  (tv-test--with-paged 10 3
    (table-view--goto-id "r1") (table-view-mark-toggle)
    (table-view-next-page)
    (table-view--goto-id "r4") (table-view-mark-toggle)
    (table-view-unmark-all)
    (should-not table-view--marks)
    (should-not table-view--mark-cache)
    (should-not (table-view-marked-rows))))

;; -- set-page metadata: totals / has-next --

(ert-deftest tv-test-page-unknown-total-full-page-implies-more ()
  (let ((buf (get-buffer-create " *tv-nt*")))
    (unwind-protect
        (progn
          (table-view-display
           buf (tv-test--paged-spec 3 'offset) nil nil
           (lambda (req)
             (table-view-set-page (plist-get req :buffer)
                                  (tv-test--dataset 3))))   ; a full page, no :total
          (with-current-buffer buf
            (should-not table-view--total)
            (should table-view--has-next)                   ; full page -> maybe more
            (should (string-match-p "more…" (table-view--hint-string)))))
      (kill-buffer buf))))

(ert-deftest tv-test-page-unknown-total-short-page-is-last ()
  (let ((buf (get-buffer-create " *tv-nt2*")))
    (unwind-protect
        (progn
          (table-view-display
           buf (tv-test--paged-spec 5 'offset) nil nil
           (lambda (req)
             (table-view-set-page (plist-get req :buffer)
                                  (tv-test--dataset 2))))   ; short page (2 < 5)
          (with-current-buffer buf
            (should-not table-view--has-next)))             ; short page -> last
      (kill-buffer buf))))

(ert-deftest tv-test-page-explicit-has-next-overrides ()
  (let ((buf (get-buffer-create " *tv-hn*")))
    (unwind-protect
        (progn
          (table-view-display
           buf (tv-test--paged-spec 3 'offset) nil nil
           (lambda (req)
             (table-view-set-page (plist-get req :buffer)
                                  (tv-test--dataset 3) :has-next nil)))  ; full page but forced
          (with-current-buffer buf
            (should-not table-view--has-next)))
      (kill-buffer buf))))

;; -- error handling --

(ert-deftest tv-test-page-error-keeps-rows-and-shows-message ()
  (tv-test--with-paged 10 3
    (should (equal (tv-test--visible-ids) '("r1" "r2" "r3")))
    (table-view-page-error (current-buffer) "boom")
    (should (equal table-view--page-error "boom"))
    (should-not table-view--page-loading)
    (should (equal (tv-test--visible-ids) '("r1" "r2" "r3")))   ; old page still shown
    (should (string-match-p "error: boom" (table-view--hint-string)))))

;; -- keyset --

(ert-deftest tv-test-keyset-initial-and-next ()
  (tv-test--with-keyset 5 2
    (should (equal (tv-test--visible-ids) '("r1" "r2")))
    (should table-view--has-next)
    (should (= table-view--next-cursor 2))       ; boundary num of the page
    (table-view-next-page)
    (let ((req (car tv-test--fetches)))
      (should (= (plist-get req :cursor) 2))
      (should (eq (plist-get req :direction) 'forward)))
    (should (equal (tv-test--visible-ids) '("r3" "r4")))
    (should (= table-view--page-index 1))))

(ert-deftest tv-test-keyset-prev-uses-prev-cursor ()
  (tv-test--with-keyset 5 2
    (table-view-next-page)                       ; on r3,r4 now
    (should (= table-view--prev-cursor 3))
    (table-view-prev-page)
    (let ((req (car tv-test--fetches)))
      (should (= (plist-get req :cursor) 3))
      (should (eq (plist-get req :direction) 'backward)))
    (should (equal (tv-test--visible-ids) '("r1" "r2")))))

(ert-deftest tv-test-keyset-no-goto-or-last ()
  (tv-test--with-keyset 5 2
    (let ((n (length tv-test--fetches)))
      (table-view-last-page)                     ; unavailable in keyset
      (table-view-goto-page 2)                   ; unavailable in keyset
      (should (= (length tv-test--fetches) n)))))  ; neither fetched

;; -- page-request accessor (v2 seam) --

(ert-deftest tv-test-page-request-exposes-query ()
  (tv-test--with-paged 10 3
    (setq table-view--sort-keys '(("num")))
    (table-view--commit-order)
    (table-view-filter "user")
    (let ((q (table-view-page-request)))
      (should (equal (plist-get q :sort) '(("num"))))
      (should (equal (plist-get q :filter) "user"))
      (should (eq (plist-get q :strategy) 'offset))
      (should (= (plist-get q :page-size) 3)))))

;; -- backward compatibility: client buffers are untouched --

(ert-deftest tv-test-client-not-paged ()
  (tv-test--with-table
    (should-not (table-view--paged-p))
    (should-not (table-view-page-request))))

(ert-deftest tv-test-client-keeps-buffer-motion-keys ()
  ;; Page keys are bound only in paged buffers, so a client table keeps its
  ;; inherited motion keys: M-< / M-> stay beginning/end-of-buffer (global),
  ;; and < / > stay beginning/end-of-buffer (from `special-mode-map').
  (tv-test--with-table
    (should-not (eq (lookup-key (current-local-map) (kbd "M-<"))
                    #'table-view-first-page))
    (should-not (eq (lookup-key (current-local-map) ">") #'table-view-next-page))
    (should (eq (lookup-key (current-local-map) ">") #'end-of-buffer))))

(ert-deftest tv-test-paged-binds-page-keys ()
  (tv-test--with-paged 10 3
    (should (eq (lookup-key (current-local-map) ">") #'table-view-next-page))
    (should (eq (lookup-key (current-local-map) (kbd "M-<")) #'table-view-first-page))))

(ert-deftest tv-test-page-comma-dot-aliases ()
  ;; `.' aliases `>' (next page) and `,' aliases `<' (previous page)
  (tv-test--with-paged 10 3
    (should (eq (lookup-key (current-local-map) ".") #'table-view-next-page))
    (should (eq (lookup-key (current-local-map) ",") #'table-view-prev-page))))

;; -- point preservation on sort (paged) --

(ert-deftest tv-test-page-sort-preserves-point-location ()
  ;; `^' in a paged buffer keeps the cursor on the same on-screen line and
  ;; column (e.g. the column header just used), not the beginning of the line.
  (tv-test--with-paged 10 3
    (goto-char (point-min))
    (forward-line 3)                    ; header row
    (table-view-forward-column)         ; onto the "num" header
    (should (equal (tv-test--col-at-point) "num"))
    (let ((line (line-number-at-pos)) (col (current-column)))
      (call-interactively #'table-view-sort-cycle)   ; ^ -> sort by num, re-fetch page 1
      (should (equal (plist-get (car tv-test--fetches) :sort) '(("num" . t))))
      (should (= (line-number-at-pos) line))          ; same on-screen line
      (should (= (current-column) col))               ; same column, not col 0
      (should (equal (tv-test--col-at-point) "num")))))

(ert-deftest tv-test-page-filter-preserves-point-location ()
  (tv-test--with-paged 12 3
    (goto-char (point-min))
    (forward-line 3)                    ; header row, stable across filtering
    (table-view-forward-column 2)       ; onto the "name" header
    (let ((line (line-number-at-pos)) (col (current-column)))
      (table-view-filter "user")
      (should (= (line-number-at-pos) line))
      (should (= (current-column) col)))))

(ert-deftest tv-test-page-nav-preserves-point-location ()
  ;; a page turn keeps the cursor on the same on-screen line and column, so a
  ;; column can be scanned straight across pages instead of snapping to the top.
  (tv-test--with-paged 20 5
    (table-view--goto-id "r3")          ; 3rd row of page 1
    (table-view-forward-column 1)       ; onto its "num" cell
    (should (equal (tv-test--col-at-point) "num"))
    (let ((line (line-number-at-pos)) (col (current-column)))
      (table-view-next-page)            ; -> page 2 (r6..r10)
      (should (= (line-number-at-pos) line))       ; same on-screen line
      (should (= (current-column) col))            ; same column
      (should (equal (tv-test--col-at-point) "num"))
      (should (equal (get-text-property (point) 'table-view-id) "r8")))))  ; 3rd row of page 2

(ert-deftest tv-test-page-nav-point-clamps-on-short-last-page ()
  ;; when the last page has fewer rows, the preserved line clamps in-buffer
  ;; rather than erroring or landing off the table.
  (tv-test--with-paged 7 3
    (table-view--goto-id "r3")          ; last row of page 1
    (table-view-next-page)              ; page 2 -> r4,r5,r6
    (table-view-next-page)              ; page 3 -> only r7
    (should (equal (tv-test--visible-ids) '("r7")))
    (should (<= (point) (point-max)))))              ; no error, point valid

;; -- secondary (multi-key) sort pushes the full chain down --

(ert-deftest tv-test-page-multi-key-sort-pushdown ()
  (let ((buf (get-buffer-create " *tv-multi*"))
        (tv-test--fetches nil)
        (data (list '((id . "x") (cells . ((num . 2) (name . "same"))))
                    '((id . "y") (cells . ((num . 1) (name . "same"))))
                    '((id . "z") (cells . ((num . 5) (name . "diff")))))))
    (unwind-protect
        (progn
          (table-view-display buf (tv-test--paged-spec 10 'offset)
                              nil nil (tv-test--offset-page-fn data))
          (with-current-buffer buf
            (setq table-view--sort-keys '(("name" . t) ("num" . t)))  ; name asc, then num asc
            (table-view--commit-order)
            (let ((req (car tv-test--fetches)))
              (should (equal (plist-get req :sort) '(("name" . t) ("num" . t)))))
            (should (equal (tv-test--visible-ids) '("z" "y" "x")))))  ; ties broken by num
      (kill-buffer buf))))

;; -- g refreshes the current page (keeps filter + position), recovers errors --

(ert-deftest tv-test-page-g-refetches-current-keeps-filter ()
  (tv-test--with-paged 12 3
    (table-view-filter "user-1")        ; 4 matches
    (table-view-next-page)              ; page 2 of the filtered set -> r12
    (call-interactively #'table-view-sort)              ; g
    (should (equal table-view--filter "user-1"))        ; filter kept, not cleared
    (should (= table-view--offset 3))                   ; same page, not page 1
    (should (equal (tv-test--visible-ids) '("r12")))))

(ert-deftest tv-test-page-g-recovers-from-error ()
  (tv-test--with-paged 10 3
    (table-view-next-page)              ; page 2
    (table-view-page-error (current-buffer) "boom")
    (should table-view--page-error)
    (call-interactively #'table-view-sort)              ; g re-fetches the current page
    (should-not table-view--page-error)                 ; error cleared
    (should (= table-view--offset 3))
    (should (equal (tv-test--visible-ids) '("r4" "r5" "r6")))))

;; -- page navigation is refused while narrowed --

(ert-deftest tv-test-page-nav-blocked-while-narrowed ()
  (tv-test--with-paged 10 3
    (table-view--goto-id "r1") (table-view-mark-toggle)
    (table-view-narrow-toggle)
    (should table-view--narrowed)
    (let ((n (length tv-test--fetches)))
      (table-view-next-page)                 ; blocked
      (table-view-last-page)                 ; blocked
      (should (= (length tv-test--fetches) n))   ; no fetch fired
      (should (= table-view--offset 0))          ; underlying page unchanged
      (should (equal (tv-test--visible-ids) '("r1"))))))  ; still the marked set

(provide 'table-view-test)
;;; table-view-test.el ends here

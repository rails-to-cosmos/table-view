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

;;; Row navigation (n / p)

(ert-deftest tv-test-next-line-moves-between-rows ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-next-line)
    (should (equal (get-text-property (point) 'table-view-id) "b"))
    (table-view-next-line)
    (should (equal (get-text-property (point) 'table-view-id) "c"))))

(ert-deftest tv-test-next-line-stops-at-last-row ()
  (tv-test--with-table
    (table-view--goto-id "c")           ; last row (load order a,b,c)
    (table-view-next-line)
    (should (equal (get-text-property (point) 'table-view-id) "c"))))  ; stays

(ert-deftest tv-test-previous-line-moves-up ()
  (tv-test--with-table
    (table-view--goto-id "c")
    (table-view-previous-line)
    (should (equal (get-text-property (point) 'table-view-id) "b"))
    (table-view-previous-line)
    (should (equal (get-text-property (point) 'table-view-id) "a"))))

(ert-deftest tv-test-previous-line-stops-at-first-row ()
  (tv-test--with-table
    (table-view--goto-id "a")           ; first row, just below the rule
    (table-view-previous-line)
    (should (equal (get-text-property (point) 'table-view-id) "a"))    ; stays on the row
    (should (get-text-property (line-beginning-position) 'table-view-id))))  ; not the rule

(ert-deftest tv-test-next-line-preserves-column ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column 2)       ; onto the "count" cell
    (let ((col (current-column)))
      (table-view-next-line)
      (should (equal (get-text-property (point) 'table-view-id) "b"))
      (should (= (current-column) col))
      (should (equal (tv-test--col-at-point) "count")))))

(ert-deftest tv-test-next-line-enters-rows-from-header ()
  (tv-test--with-table
    (goto-char (point-min))
    (forward-line 3)                    ; header row (above the data rows)
    (should-not (get-text-property (line-beginning-position) 'table-view-id))
    (table-view-next-line)
    (should (equal (get-text-property (point) 'table-view-id) "a"))))  ; enters first row

(ert-deftest tv-test-next-line-from-title-lands-on-first-cell ()
  ;; `n' from the top of the buffer enters the first row ON the first cell,
  ;; not the leading "|" separator (which carries no `table-view-col').
  (tv-test--with-table
    (goto-char (point-min))             ; title line, column 0
    (table-view-next-line)
    (should (equal (get-text-property (point) 'table-view-id) "a"))   ; first row
    (should (equal (tv-test--col-at-point) "name"))))                 ; first cell, not "|"

(ert-deftest tv-test-previous-line-on-header-stays ()
  (tv-test--with-table
    (goto-char (point-min))
    (forward-line 3)                    ; header row
    (let ((line (line-number-at-pos)))
      (table-view-previous-line)        ; up from the header would leave the table
      (should (= (line-number-at-pos) line)))))  ; stays put, no jump into the rows

(ert-deftest tv-test-next-line-noop-when-empty ()
  (tv-test--with-table
    (table-view-set-rows (current-buffer) nil)   ; (no rows)
    (goto-char (point-min))
    (table-view-next-line)                        ; must not error
    (table-view-previous-line)))

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

(ert-deftest tv-test-filter-moves-to-first-row ()
  ;; after filtering, point lands on the first matching row (not preserved)
  (tv-test--with-table
    (table-view--goto-id "c")           ; start on the last row
    (table-view-filter "l")             ; matches alpha (a) and charlie (c)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) (table-view--visible-rows))
                   '("a" "c")))
    (should (equal (get-text-property (point) 'table-view-id) "a"))))  ; first match, not c

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

;;; Column schema (add / remove columns at runtime)

(ert-deftest tv-test-add-column-appends ()
  (tv-test--with-table
    (should (equal (table-view-add-column '((key . "x") (header . "X") (type . "text")))
                   '((key . "x") (header . "X") (type . "text"))))
    (should (equal (tv-test--col-order) '("name" "count" "status" "x")))
    (should (string-match-p "X" (buffer-string)))))

(ert-deftest tv-test-add-column-at-index ()
  (tv-test--with-table
    (table-view-add-column '((key . "x") (header . "X") (type . "text")) 1)
    (should (equal (tv-test--col-order) '("name" "x" "count" "status")))))

(ert-deftest tv-test-add-column-replaces-same-key ()
  (tv-test--with-table
    (table-view-add-column '((key . "x") (header . "First")  (type . "text")))
    (table-view-add-column '((key . "x") (header . "Second") (type . "text")))
    (should (equal (tv-test--col-order) '("name" "count" "status" "x")))   ; not duplicated
    (should (equal (alist-get 'header (table-view--column table-view--spec "x"))
                   "Second"))))

(ert-deftest tv-test-add-column-leaves-original-spec ()
  "Adding a column mutates only the buffer's own copy, not the shared spec."
  (let ((buf (get-buffer-create " *tv-add*"))
        (spec (tv-test--spec)))
    (unwind-protect
        (progn
          (table-view-display buf spec nil)
          (table-view-set-rows buf (tv-test--rows))
          (with-current-buffer buf
            (table-view-add-column '((key . "x") (header . "X") (type . "text")))
            (should (member "x" (tv-test--col-order))))
          (should (equal (mapcar (lambda (c) (alist-get 'key c))
                                 (alist-get 'columns spec))
                         '("name" "count" "status"))))   ; original spec untouched
      (kill-buffer buf))))

(ert-deftest tv-test-value-fn-materializes-and-sorts ()
  "A column with a `value-fn' has its cells computed at add/set time, so it
renders and sorts like a backend-supplied column."
  (tv-test--with-table
    (table-view-add-column
     `((key . "neg") (header . "Neg") (type . "number") (align . "right")
       (value-fn . ,(lambda (_id row)
                      (- (alist-get 'count (alist-get 'cells row)))))))
    (should (equal (table-view--cell (car table-view--rows) "neg") -3))   ; row "a", count 3
    (should (string-match-p "Neg" (buffer-string)))
    (setq table-view--sort-keys '(("neg" . t)))
    (table-view--sort-rows)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("a" "c" "b")))))

(ert-deftest tv-test-value-fn-recomputed-on-set-rows ()
  "A `value-fn' column survives a full row replacement -- fresh rows get it too."
  (tv-test--with-table
    (table-view-add-column
     `((key . "up") (header . "Up") (type . "text")
       (value-fn . ,(lambda (_id row) (upcase (alist-get 'name (alist-get 'cells row)))))))
    (should (equal (table-view--cell (car table-view--rows) "up") "ALPHA"))
    (table-view-set-rows (current-buffer)
                         '(((id . "d") (cells . ((name . "delta") (count . 9) (status . "ok"))))))
    (should (equal (table-view--cell (car table-view--rows) "up") "DELTA"))))

(ert-deftest tv-test-compute-cells-fills-only-missing ()
  "`table-view--compute-cells' fills a missing cell but keeps a supplied one.
This is the set-rows contract: a backend-delivered value wins over the `value-fn'."
  (let* ((spec `((columns . (((key . "v") (header . "V")
                              (value-fn . ,(lambda (_id _row) "computed")))))))
         (rows '(((id . "a") (cells . ((v . "supplied"))))
                 ((id . "b") (cells . nil))))
         (out (table-view--compute-cells rows spec)))
    (should (equal "supplied" (table-view--cell (nth 0 out) "v")))    ; supplied wins
    (should (equal "computed" (table-view--cell (nth 1 out) "v")))))  ; missing is filled

(ert-deftest tv-test-add-column-replace-recomputes-value-fn ()
  "Replacing a same-key value-fn column recomputes its cells (new fn wins)."
  (tv-test--with-table
    (table-view-add-column `((key . "x") (header . "X") (value-fn . ,(lambda (_i _r) 1))))
    (should (equal 1 (table-view--cell (car table-view--rows) "x")))
    (table-view-add-column `((key . "x") (header . "X") (value-fn . ,(lambda (_i _r) 2))))
    (should (equal 2 (table-view--cell (car table-view--rows) "x")))))

(ert-deftest tv-test-remove-readd-recomputes-value-fn ()
  "Removing then re-adding a value-fn column recomputes -- no stale cell survives."
  (tv-test--with-table
    (table-view-add-column `((key . "x") (header . "X") (value-fn . ,(lambda (_i _r) 1))))
    (should (equal 1 (table-view--cell (car table-view--rows) "x")))
    (table-view-remove-column "x")
    (table-view-add-column `((key . "x") (header . "X") (value-fn . ,(lambda (_i _r) 2))))
    (should (equal 2 (table-view--cell (car table-view--rows) "x")))))

(ert-deftest tv-test-add-column-materialises-mark-cache ()
  "A runtime-added value-fn column is materialised on cached marked rows too."
  (tv-test--with-table
    (table-view--goto-id "a")
    (call-interactively #'table-view-mark-toggle)     ; caches row "a"
    (table-view-add-column `((key . "x") (header . "X")
                             (value-fn . ,(lambda (id _r) (concat "v-" id)))))
    (should (equal "v-a" (table-view--cell (cdr (assoc "a" table-view--mark-cache)) "x")))))

(ert-deftest tv-test-remove-column ()
  (tv-test--with-table
    (table-view-remove-column "count")
    (should (equal (tv-test--col-order) '("name" "status")))
    (should-not (string-match-p "Count" (buffer-string)))))

(ert-deftest tv-test-remove-column-drops-sort-key ()
  (tv-test--with-table
    (setq table-view--sort-keys '(("count" . t) ("name" . t)))
    (table-view-remove-column "count")
    (should (equal table-view--sort-keys '(("name" . t))))))

(ert-deftest tv-test-remove-column-at-point ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-forward-column 2)               ; onto "count"
    (should (equal (tv-test--col-at-point) "count"))
    (call-interactively #'table-view-remove-column)
    (should (equal (tv-test--col-order) '("name" "status")))))

(ert-deftest tv-test-remove-column-refuses-last ()
  (tv-test--with-table
    (table-view-remove-column "name")
    (table-view-remove-column "count")
    (should (equal (tv-test--col-order) '("status")))
    (table-view-remove-column "status")         ; would be the last -> refused
    (should (equal (tv-test--col-order) '("status")))))

(ert-deftest tv-test-add-column-function-used ()
  "Interactive add builds the column via `table-view-add-column-function'."
  (tv-test--with-table
    (setq table-view-add-column-function
          (lambda () '((key . "src") (header . "Src") (type . "text"))))
    (call-interactively #'table-view-add-column)
    (should (member "src" (tv-test--col-order)))))

(ert-deftest tv-test-schema-changed-hook-fires ()
  (tv-test--with-table
    (let ((n 0))
      (add-hook 'table-view-schema-changed-hook (lambda () (setq n (1+ n))) nil t)
      (table-view-add-column '((key . "x") (header . "X") (type . "text")))
      (should (= n 1))
      (table-view-remove-column "x")
      (should (= n 2)))))

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

(ert-deftest tv-test-u-bound-to-unmark ()
  (should (eq (lookup-key table-view-mode-map "u") #'table-view-unmark)))

(ert-deftest tv-test-unmark-current ()
  (tv-test--with-table
    (table-view--goto-id "a") (table-view-mark-toggle)
    (table-view--goto-id "c") (table-view-mark-toggle)
    (should (= (length table-view--marks) 2))
    (table-view--goto-id "a")
    (table-view-unmark)                       ; unmark just a
    (should-not (table-view--marked-p "a"))
    (should (table-view--marked-p "c"))       ; c stays marked
    (should (= (length table-view--marks) 1))))

(ert-deftest tv-test-unmark-advances-point ()
  (tv-test--with-table
    (table-view--goto-id "a") (table-view-mark-toggle)
    (table-view--goto-id "a")
    (table-view-unmark)
    (should (equal (get-text-property (point) 'table-view-id) "b"))))  ; moves down

(ert-deftest tv-test-unmark-unmarked-is-noop-but-advances ()
  (tv-test--with-table
    (table-view--goto-id "a")
    (table-view-unmark)                       ; a is not marked
    (should-not table-view--marks)
    (should (equal (get-text-property (point) 'table-view-id) "b"))))

(ert-deftest tv-test-unmark-current-last-while-narrowed-widens ()
  ;; unmarking the last mark via `u' while narrowed must widen the view
  (tv-test--with-table
    (table-view--goto-id "a") (table-view-mark-toggle)
    (table-view-narrow-toggle)
    (should table-view--narrowed)
    (table-view--goto-id "a")
    (table-view-unmark)
    (should-not table-view--marks)
    (should-not table-view--narrowed)
    (should (= (length (table-view--visible-rows)) 3))))

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

(ert-deftest tv-test-page-filter-moves-to-first-row ()
  ;; after a pushed-down filter, point lands on the first matching row
  (tv-test--with-paged 12 3
    (table-view-next-page)              ; leave page 1 / the first row
    (table-view-filter "user-1")        ; matches r1,r10,r11,r12
    (should (equal (get-text-property (point) 'table-view-id) "r1"))))  ; first match

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

;;; Org links

(defmacro tv-test--with-links (rows &rest body)
  "Display a two-column table (name, n) and set it to ROWS, then run BODY."
  (declare (indent 1))
  `(let ((buf (get-buffer-create " *tv-links*")))
     (unwind-protect
         (progn
           (table-view-display
            buf '((title . "Links")
                  (columns . (((key . "name") (header . "Name"))
                              ((key . "n") (header . "N") (type . "number")))))
            nil)
           (table-view-set-rows buf ,rows)
           (with-current-buffer buf ,@body))
       (kill-buffer buf))))

(defun tv-test--first-link-pos ()
  "Position of the first `table-view-link' in the buffer, or nil."
  (text-property-not-all (point-min) (point-max) 'table-view-link nil))

(ert-deftest tv-test-delink-plain ()
  (should (equal (table-view--delink "hello") "hello")))

(ert-deftest tv-test-delink-full-link ()
  (should (equal (table-view--delink "[[https://x.com][Example]]") "Example")))

(ert-deftest tv-test-delink-bare-link ()
  (should (equal (table-view--delink "[[https://x.com]]") "https://x.com")))

(ert-deftest tv-test-delink-embedded-and-multiple ()
  (should (equal (table-view--delink "see [[a][A]] and [[b][B]] end")
                 "see A and B end")))

(ert-deftest tv-test-delink-respects-render-flag ()
  (let ((table-view-render-links nil))
    (should (equal (table-view--delink "[[x][Y]]") "[[x][Y]]"))))

(ert-deftest tv-test-linkify-propertizes ()
  (let ((s (table-view--linkify "[[https://x.com][Example]]")))
    (should (equal s "Example"))                          ; text = the description
    (should (equal (get-text-property 0 'table-view-link s) "https://x.com"))
    (should (eq (get-text-property 0 'face s) 'table-view-link))))

(ert-deftest tv-test-render-link-shows-description ()
  (tv-test--with-links
      '(((id . "a") (cells . ((name . "[[https://x.com][Homepage]]") (n . 1)))))
    (should (string-match-p "Homepage" (buffer-string)))
    (should-not (string-match-p "https://x.com" (buffer-string)))))  ; URL not in display text

(ert-deftest tv-test-render-link-carries-target ()
  (tv-test--with-links
      '(((id . "a") (cells . ((name . "[[https://x.com][Homepage]]") (n . 1)))))
    (let ((pos (tv-test--first-link-pos)))
      (should pos)
      (should (equal (get-text-property pos 'table-view-link) "https://x.com"))
      (should (eq (get-text-property pos 'keymap) table-view--link-keymap))
      (should (eq (get-text-property pos 'follow-link) t)))))

(ert-deftest tv-test-link-width-uses-display ()
  ;; the column is sized to the DESCRIPTION, not the raw [[...]] markup
  (tv-test--with-links
      '(((id . "a")
         (cells . ((name . "[[https://very-long-url.example.com/deep/path][Hi]]") (n . 1)))))
    (let ((widths (table-view--widths table-view--spec table-view--rows)))
      (should (= (alist-get "name" widths nil nil #'equal)
                 (string-width "Name"))))))            ; "Name" (4) > "Hi" (2)

(ert-deftest tv-test-link-filter-matches-description ()
  (tv-test--with-links
      '(((id . "a") (cells . ((name . "[[https://x.com][Homepage]]") (n . 1))))
        ((id . "b") (cells . ((name . "[[https://y.com][Docs]]") (n . 2)))))
    (setq table-view--filter "homepage")
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) (table-view--visible-rows))
                   '("a")))))

(ert-deftest tv-test-link-sort-by-description ()
  ;; a link column orders by the visible description, not the URL
  (tv-test--with-links
      '(((id . "a") (cells . ((name . "[[https://zzz.com][Apple]]") (n . 1))))
        ((id . "b") (cells . ((name . "[[https://aaa.com][Banana]]") (n . 2)))))
    (setq table-view--sort-keys '(("name" . t)))
    (table-view--sort-rows)
    (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                   '("a" "b")))))                       ; Apple < Banana, though URLs reversed

(ert-deftest tv-test-open-link-at-point ()
  (tv-test--with-links
      '(((id . "a") (cells . ((name . "[[https://x.com][Homepage]]") (n . 1)))))
    (let* ((opened nil)
           (table-view-open-link-function (lambda (target) (setq opened target))))
      (goto-char (tv-test--first-link-pos))
      (table-view-open-link)
      (should (equal opened "https://x.com")))))

(ert-deftest tv-test-open-link-no-link-is-noop ()
  (tv-test--with-links
      '(((id . "a") (cells . ((name . "plain") (n . 1)))))
    (let ((called nil)
          (table-view-open-link-function (lambda (_) (setq called t))))
      (table-view--goto-id "a")
      (table-view-open-link)
      (should-not called))))

(ert-deftest tv-test-c-c-c-o-bound-to-open-link ()
  (should (eq (lookup-key table-view-mode-map (kbd "C-c C-o")) #'table-view-open-link)))

(ert-deftest tv-test-render-links-disabled-shows-raw ()
  (let ((table-view-render-links nil))
    (tv-test--with-links
        '(((id . "a") (cells . ((name . "[[https://x.com][Homepage]]") (n . 1)))))
      (should (string-match-p (regexp-quote "[[https://x.com][Homepage]]")
                              (buffer-string))))))

;; -- empty description [[t][]] is not a valid Org link, so it's shown verbatim --

(ert-deftest tv-test-delink-empty-desc-left-verbatim ()
  ;; `org-link-bracket-re' does not match an empty description, so the cell
  ;; degrades to visible raw text rather than an invisible/unfollowable blank
  (should (equal (table-view--delink "[[https://x.com][]]") "[[https://x.com][]]"))
  (should (equal (table-view--linkify "[[https://x.com][]]") "[[https://x.com][]]")))  ; followable

;; -- sort by description for number and values (categorical) link columns --

(ert-deftest tv-test-link-sort-values-column-by-description ()
  (let ((buf (get-buffer-create " *tv-link-values*")))
    (unwind-protect
        (progn
          (table-view-display
           buf '((title . "V")
                 (columns . (((key . "p") (header . "P") (values . ("Apple" "Zebra"))))))
           nil)
          (table-view-set-rows
           buf '(((id . "z") (cells . ((p . "[[a][Zebra]]"))))
                 ((id . "a") (cells . ((p . "[[b][Apple]]"))))))
          (with-current-buffer buf
            (setq table-view--sort-keys '(("p" . t)))
            (table-view--sort-rows)
            (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                           '("a" "z")))))               ; Apple < Zebra, by description
      (kill-buffer buf))))

(ert-deftest tv-test-link-sort-number-column-by-description ()
  (let ((buf (get-buffer-create " *tv-link-num*")))
    (unwind-protect
        (progn
          (table-view-display
           buf '((title . "N")
                 (columns . (((key . "n") (header . "N") (type . "number")))))
           nil)
          (table-view-set-rows
           buf '(((id . "big")   (cells . ((n . "[[u][100]]"))))
                 ((id . "small") (cells . ((n . "[[u][9]]"))))))
          (with-current-buffer buf
            (setq table-view--sort-keys '(("n" . t)))
            (table-view--sort-rows)
            (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows)
                           '("small" "big")))))         ; 9 < 100 numerically, by description
      (kill-buffer buf))))

;; -- badge cells never link-render: raw everywhere, so the column stays aligned --

(ert-deftest tv-test-badge-cell-with-link-markup-stays-raw ()
  (let ((buf (get-buffer-create " *tv-badge-link*")))
    (unwind-protect
        (progn
          (table-view-display
           buf '((title . "B")
                 (columns . (((key . "s") (header . "S") (type . "badge")
                              (badges . (((value . "ok") (color . "green"))))))))
           nil)
          (table-view-set-rows buf '(((id . "a") (cells . ((s . "[[x][Y]]"))))))
          (with-current-buffer buf
            ;; width measured from the RAW markup, matching what's shown
            (let ((widths (table-view--widths table-view--spec table-view--rows)))
              (should (= (alist-get "s" widths nil nil #'equal)
                         (string-width "[[x][Y]]"))))
            (should (string-match-p (regexp-quote "[[x][Y]]") (buffer-string)))
            ;; filter also sees the raw markup, matching the display
            (setq table-view--filter "[[x")
            (should (= (length (table-view--visible-rows)) 1))))
      (kill-buffer buf))))

;;; Width cache (perf)

(ert-deftest tv-test-width-cache-stays-consistent ()
  ;; The cached widths must always equal a fresh computation over the visible
  ;; rows -- if any mutation seam forgot to invalidate, the cache would be
  ;; stale here and the columns would render misaligned.
  (tv-test--with-table
    (cl-flet ((chk () (should (equal table-view--widths-cache
                                     (table-view--widths table-view--spec
                                                         (table-view--visible-rows))))))
      (chk)                                          ; after the initial render
      (should table-view--widths-cache)              ; cache is populated
      (table-view-upsert-row (current-buffer)
        '((id . "w") (cells . ((name . "a-really-really-wide-name") (count . 1) (status . "ok")))))
      (chk)                                          ; upsert widened the column
      (should (>= (alist-get "name" table-view--widths-cache nil nil #'equal) 25))
      (table-view-delete-row (current-buffer) "w")
      (chk)                                          ; delete shrank it back
      (table-view-filter "alpha")
      (chk)                                          ; filter changed the visible set
      (call-interactively #'table-view-sort)         ; g clears the filter
      (chk)
      (setq table-view--sort-keys '(("count" . t)))
      (call-interactively #'table-view-sort-cycle)   ; sort reuses the cache
      (chk)
      (table-view--goto-id "a") (table-view-mark-toggle)
      (table-view--goto-id "c") (table-view-mark-toggle)
      (table-view-narrow-toggle)
      (chk)                                          ; narrowed to the marked subset
      (table-view-narrow-toggle)
      (chk)                                          ; widened back
      (table-view-add-column '((key . "extra") (header . "Extra-Wide-Header") (type . "text")))
      (chk)                                          ; new column
      (table-view-remove-column "extra")
      (chk))))                                       ; column removed

(ert-deftest tv-test-width-cache-reused-on-sort ()
  ;; sorting must NOT recompute widths (same cells) -- the cache object persists
  (tv-test--with-table
    (let ((cache table-view--widths-cache))
      (should cache)
      (setq table-view--sort-keys '(("count" . t)))
      (call-interactively #'table-view-sort-cycle)
      (should (eq table-view--widths-cache cache)))))  ; identical object, not recomputed

(provide 'table-view-test)
;;; table-view-test.el ends here

;;; table-view-native-test.el --- Tests for the native backend -*- lexical-binding: t; -*-

;; Guarded: every test skips unless the tvx binary is present/buildable, so the
;; pure-elisp suite (table-view-test.el) stays independent of cargo.

(require 'ert)
(require 'cl-lib)
(require 'table-view)
(require 'table-view-native)

(defconst tvn-test--words ["core" "lib" "utils" "http" "json" "async" "test" "cli"])

(defun tvn-test--mtime (f)
  (and (file-exists-p f)
       (float-time (file-attribute-modification-time (file-attributes f)))))

(defun tvn-test--binary ()
  "Path to a valid tvx, (re)building it when the Rust source is newer.
Returns nil when cargo is unavailable and no valid binary exists."
  (let* ((root (locate-dominating-file default-directory "table-view.el"))
         (built (expand-file-name "native/tvx/target/release/tvx" root))
         (src (directory-files (expand-file-name "native/tvx/src" root) t "\\.rs\\'"))
         (newest (apply #'max 0 (delq nil (mapcar #'tvn-test--mtime src))))
         (bin (tvn-test--mtime built)))
    ;; Rebuild if the binary is missing or older than any source file, so tests
    ;; never silently run against a stale backend.
    (when (and (table-view-native--cargo) (or (not bin) (> newest bin)))
      (call-process (table-view-native--cargo) nil nil nil "build" "--release"
                    "--manifest-path" (expand-file-name "native/tvx/Cargo.toml" root)))
    (table-view-native--validate built)))

(defmacro tvn-test--skip-unless-binary (&rest body)
  `(let ((bin (tvn-test--binary)))
     (skip-unless bin)
     (let ((table-view-native-program bin)
           (table-view-native--connection nil))
       (unwind-protect (progn ,@body)
         (when (and table-view-native--connection
                    (jsonrpc-running-p table-view-native--connection))
           (jsonrpc-shutdown table-view-native--connection))
         (setq table-view-native--connection nil)))))

(defun tvn-test--rows (n)
  (cl-loop for i from 0 below n collect
           (list (cons 'id (format "r%d" i))
                 (cons 'cells (list (cons 'name (format "%s-%05d" (aref tvn-test--words (mod i 8)) i))
                                    (cons 'num (abs (mod (* i 2654435761) 100000)))
                                    (cons 'val i))))))
(defun tvn-test--wire (rows)
  (vconcat (mapcar #'table-view-native--row->wire rows)))
(defconst tvn-test--spec
  '((title . "x")
    (columns . (((key . "name") (header . "Name"))
                ((key . "num") (header . "Num") (type . "number"))
                ((key . "val") (header . "Val") (type . "number"))))))

(defun tvn-test--elisp-order (rows sort-keys filter)
  (with-temp-buffer
    (table-view-mode)
    (setq table-view--spec (table-view--own-spec tvn-test--spec)
          table-view--rows (copy-sequence rows)
          table-view--filter-text-cache nil
          table-view--sort-keys sort-keys)
    (table-view--sort-rows)
    (let ((v (if (and filter (not (string-empty-p filter)))
                 (let ((pat (downcase filter)))
                   (cl-remove-if-not (lambda (r) (string-search pat (table-view--row-filter-text r)))
                                     table-view--rows))
               table-view--rows)))
      (mapcar (lambda (r) (alist-get 'id r)) v))))

(defun tvn-test--native-order (conn h sort filter)
  (let ((r (jsonrpc-request conn 'window
             (list :handle h :offset 0 :limit 1000 :sort sort :filter (or filter "")))))
    (mapcar (lambda (row) (plist-get row :id)) (append (plist-get r :rows) nil))))

(ert-deftest tvn-test-differential-native-equals-elisp ()
  "Native window row order must equal the elisp sort/filter for the same data."
  (tvn-test--skip-unless-binary
   (let* ((conn (make-instance 'jsonrpc-process-connection
                               :name "tvx"
                               :process (make-process :name "tvx" :command (list bin)
                                                      :coding 'utf-8-emacs-unix :connection-type 'pipe)))
          (rows (tvn-test--rows 300)))
     (jsonrpc-request conn 'initialize (list :protocol (list :min 1 :max 1)))
     (let ((h (plist-get (jsonrpc-request conn 'open
                          (list :source (list :kind "rows" :rows (tvn-test--wire rows))
                                :columns [(:key "name" :type "text") (:key "num" :type "number")
                                          (:key "val" :type "number")]
                                :pageSize 1000 :protocol 1)) :handle)))
       (dolist (c '(([["num" t]] (("num" . t)) nil)
                    ([["num" :json-false]] (("num")) nil)       ; desc: ties keep load order
                    ([["name" t]] (("name" . t)) nil)
                    ([] nil "lib")
                    ([["val" t]] (("val" . t)) "core")))
         (cl-destructuring-bind (nsort esort filter) c
           (should (equal (tvn-test--native-order conn h nsort filter)
                          (tvn-test--elisp-order rows esort filter)))))
       (setq table-view-native--connection conn)))))   ; so the macro shuts it down

(ert-deftest tvn-test-display-renders-paged ()
  "`table-view-native-display' opens a paged buffer and renders the first page."
  (tvn-test--skip-unless-binary
   (let ((buf (get-buffer-create " *tvn-e2e*")))
     (unwind-protect
         (progn
           (table-view-native-display buf (list :kind "rows" :rows (tvn-test--rows 20))
                                      tvn-test--spec)
           (sit-for 0.3)
           (with-current-buffer buf
             (should (table-view--paged-p))
             (should (string-match-p "Name" (buffer-string)))
             (should (string-match-p "core-00000" (buffer-string)))))
       (kill-buffer buf)))))

(ert-deftest tvn-test-fallback-warns-and-renders ()
  "When the backend is unavailable, inline rows render in elisp and a warning fires."
  (let ((table-view-native-program "/nonexistent/tvx")
        (table-view-native-auto-compile nil)
        (table-view-native-cargo-program "/nonexistent/cargo")
        (table-view-native--connection nil)
        (table-view-native--warned (make-hash-table))
        (warned nil)
        (buf (get-buffer-create " *tvn-fb*")))
    (unwind-protect
        ;; Force "no backend" regardless of any binary cached in this user's env.
        (cl-letf (((symbol-function 'display-warning) (lambda (&rest _) (setq warned t)))
                  ((symbol-function 'table-view-native--resolve) (lambda () nil)))
          (table-view-native-display buf (list :kind "rows" :rows (tvn-test--rows 5))
                                     tvn-test--spec)
          (should warned)
          (with-current-buffer buf (should (string-match-p "core-00000" (buffer-string)))))
      (kill-buffer buf))))

;;; Live layer: core `table-view-apply-delta' (pure, no backend needed)

(defconst tvn-test--client-spec
  '((title . "x") (columns . (((key . "name") (header . "N"))))))
(defun tvn-test--client-rows ()
  (mapcar (lambda (id) (list (cons 'id id) (cons 'cells (list (cons 'name (upcase id))))))
          '("a" "b" "c")))

(ert-deftest tvn-test-apply-delta-insert-delete ()
  "insert/delete ops splice the window and keep the right row order."
  (let ((buf (get-buffer-create " *tvn-ad*")))
    (unwind-protect
        (progn
          (table-view-display buf tvn-test--client-spec nil)
          (table-view-set-rows buf (tvn-test--client-rows))
          (with-current-buffer buf
            (table-view-apply-delta
             buf (list (list :op "insert" :index 1
                             :row '((id . "x") (cells . ((name . "X")))))))
            (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows) '("a" "x" "b" "c")))
            (table-view-apply-delta buf (list (list :op "delete" :index 0)))
            (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows) '("x" "b" "c")))))
      (kill-buffer buf))))

(ert-deftest tvn-test-apply-delta-reuses-eq ()
  "A row unchanged by a delta keeps its object identity (so its line is reused)."
  (let ((buf (get-buffer-create " *tvn-eq*")))
    (unwind-protect
        (progn
          (table-view-display buf tvn-test--client-spec nil)
          (table-view-set-rows buf (tvn-test--client-rows))
          (with-current-buffer buf
            (let ((b-cons (cl-find "b" table-view--rows :key (lambda (r) (alist-get 'id r)) :test #'equal)))
              (table-view-apply-delta
               buf (list (list :op "insert" :index 0
                               :row '((id . "z") (cells . ((name . "Z")))))))
              (should (eq b-cons (cl-find "b" table-view--rows
                                          :key (lambda (r) (alist-get 'id r)) :test #'equal))))))
      (kill-buffer buf))))

(ert-deftest tvn-test-apply-delta-reset ()
  "A reset op replaces the whole window, reusing objects for unchanged rows."
  (let ((buf (get-buffer-create " *tvn-rst*")))
    (unwind-protect
        (progn
          (table-view-display buf tvn-test--client-spec nil)
          (table-view-set-rows buf (tvn-test--client-rows))
          (with-current-buffer buf
            (let ((c-cons (cl-find "c" table-view--rows :key (lambda (r) (alist-get 'id r)) :test #'equal)))
              (table-view-apply-delta
               buf (list (list :op "reset"
                               :rows (vector '((id . "c") (cells . ((name . "C"))))
                                             '((id . "a") (cells . ((name . "A"))))))))
              (should (equal (mapcar (lambda (r) (alist-get 'id r)) table-view--rows) '("c" "a")))
              (should (eq c-cons (cl-find "c" table-view--rows
                                          :key (lambda (r) (alist-get 'id r)) :test #'equal))))))
      (kill-buffer buf))))

;;; Live layer end-to-end (backend): patch -> $/delta -> apply-delta

(defun tvn-test--settle ()
  "Pump process output so pending $/delta notifications are dispatched."
  (dotimes (_ 10) (accept-process-output nil 0.05)))

(defconst tvn-test--live-spec
  '((title . "x")
    (columns . (((key . "name") (header . "Name"))
                ((key . "num") (header . "Num") (type . "number"))))
    (sort . ((column . "name") (ascending . t)))
    (pagination . ((page-size . 100) (strategy . offset)))))

(ert-deftest tvn-test-live-delta-matches-rewindow ()
  "After each patch, the buffer's rows equal a fresh full re-window (the oracle)."
  (tvn-test--skip-unless-binary
   (let ((buf (get-buffer-create " *tvn-live*")))
     (unwind-protect
         (progn
           (table-view-native-display buf (list :kind "rows" :rows (tvn-test--rows 30))
                                      tvn-test--live-spec)
           (tvn-test--settle)
           (let* ((ch (buffer-local-value 'table-view-native--conn-handle buf))
                  (conn (car ch)) (handle (cdr ch)))
             (cl-flet ((truth ()
                         (mapcar (lambda (r) (plist-get r :id))
                                 (append (plist-get (jsonrpc-request conn 'window
                                          (list :handle handle :offset 0 :limit 200
                                                :sort [["name" t]] :filter "")) :rows) nil)))
                       (shown () (with-current-buffer buf
                                   (mapcar (lambda (r) (alist-get 'id r)) table-view--rows))))
               (table-view-native-patch buf :upserts (list '((id . "z9") (cells . ((name . "aaa") (num . 1))))))
               (tvn-test--settle) (should (equal (shown) (truth)))
               (table-view-native-patch buf :deletes '("r5"))
               (tvn-test--settle) (should (equal (shown) (truth)))
               (table-view-native-patch buf :upserts (list '((id . "r10") (cells . ((name . "zzz") (num . 9))))))
               (tvn-test--settle) (should (equal (shown) (truth)))
               (table-view-native-patch buf
                 :upserts (list '((id . "z9") (cells . ((name . "mmm") (num . 5)))))
                 :deletes '("r0" "r1"))
               (tvn-test--settle) (should (equal (shown) (truth))))))
       (kill-buffer buf)))))

(ert-deftest tvn-test-count-and-aggregate ()
  "count / aggregate match a direct elisp computation over the same rows."
  (tvn-test--skip-unless-binary
   (let ((buf (get-buffer-create " *tvn-agg*")) (rows (tvn-test--rows 30)))
     (unwind-protect
         (progn
           (table-view-native-display buf (list :kind "rows" :rows rows) tvn-test--live-spec)
           (tvn-test--settle)
           (let ((lib (cl-count-if (lambda (r) (string-search "lib" (alist-get 'name (alist-get 'cells r)))) rows))
                 (sum (cl-reduce #'+ rows :key (lambda (r) (alist-get 'num (alist-get 'cells r))) :initial-value 0)))
             (should (= (table-view-native-count buf "lib") lib))
             (should (= (table-view-native-aggregate buf "num" "sum" "") sum))
             (should (= (table-view-native-aggregate buf "num" "count" "") 30))))
       (kill-buffer buf)))))

(ert-deftest tvn-test-respawn-replays ()
  "Killing the backend process; the next refresh respawns, re-opens, re-renders."
  (tvn-test--skip-unless-binary
   (let ((buf (get-buffer-create " *tvn-respawn*")))
     (unwind-protect
         (progn
           (table-view-native-display buf (list :kind "rows" :rows (tvn-test--rows 12))
                                      tvn-test--live-spec)
           (tvn-test--settle)
           (dolist (p (process-list))
             (when (string-prefix-p "tvx" (process-name p)) (delete-process p)))
           (table-view-refresh buf)     ; triggers respawn + re-open + re-window
           (tvn-test--settle)
           (with-current-buffer buf
             (should (= (length table-view--rows) 12))
             (should (string-match-p "core-00000" (buffer-string)))))
       (kill-buffer buf)))))

(ert-deftest tvn-test-out-of-window-patch-refreshes-total ()
  "A patch outside the visible window still refreshes the total-row count."
  (tvn-test--skip-unless-binary
   (let ((buf (get-buffer-create " *tvn-total*"))
         (spec '((title . "x")
                 (columns . (((key . "name") (header . "Name"))
                             ((key . "num") (header . "Num") (type . "number"))))
                 (sort . ((column . "name") (ascending . t)))
                 (pagination . ((page-size . 2) (strategy . offset)))))
         (rows (cl-loop for i from 0 below 6 collect
                        (list (cons 'id (format "r%d" i))
                              (cons 'cells (list (cons 'name (format "n%02d" i)) (cons 'num i)))))))
     (unwind-protect
         (progn
           (table-view-native-display buf (list :kind "rows" :rows rows) spec)
           (tvn-test--settle)
           (should (= (buffer-local-value 'table-view--total buf) 6))
           (should (= (length (buffer-local-value 'table-view--rows buf)) 2)) ; 2-row window
           (table-view-native-patch buf :deletes '("r5"))                     ; outside the window
           (tvn-test--settle)
           (should (= (buffer-local-value 'table-view--total buf) 5))         ; count refreshed
           (should (= (length (buffer-local-value 'table-view--rows buf)) 2)))
       (kill-buffer buf)))))

(ert-deftest tvn-test-close-removes-handle-on-kill ()
  "Killing the buffer closes its backend handle and unregisters it."
  (tvn-test--skip-unless-binary
   (let ((buf (get-buffer-create " *tvn-close*")))
     (table-view-native-display buf (list :kind "rows" :rows (tvn-test--rows 5))
                                tvn-test--live-spec)
     (tvn-test--settle)
     (let ((handle (cdr (buffer-local-value 'table-view-native--conn-handle buf))))
       (should (gethash handle table-view-native--handles))
       (kill-buffer buf)
       (should-not (gethash handle table-view-native--handles))))))

;;; Deferred build path (accept build -> wait -> load or error)

(ert-deftest tvn-test-deferred-build-then-load ()
  "A deferred display shows a placeholder, then loads the table once built."
  (tvn-test--skip-unless-binary
   (let ((buf (get-buffer-create " *tvn-defer*")))
     (unwind-protect
         (cl-letf (((symbol-function 'display-buffer) #'ignore)
                   ;; Simulate a build that completes successfully with BIN.
                   ((symbol-function 'table-view-native-compile)
                    (lambda (_force cb) (funcall cb bin))))
           (table-view-native--display-deferred
            buf (list :kind "rows" :rows (tvn-test--rows 8)) tvn-test--live-spec nil)
           (tvn-test--settle)
           (with-current-buffer buf
             (should (table-view--paged-p))
             (should (string-match-p "core-00000" (buffer-string)))))
       (kill-buffer buf)))))

(ert-deftest tvn-test-deferred-build-failure-shows-error ()
  "A failed deferred build shows an error placeholder, not the table."
  (let ((buf (get-buffer-create " *tvn-defer-fail*")))
    (unwind-protect
        (cl-letf (((symbol-function 'display-buffer) #'ignore)
                  ((symbol-function 'table-view-native-compile)
                   (lambda (_force cb) (funcall cb nil))))   ; build failed
          (table-view-native--display-deferred
           buf (list :kind "rows" :rows (tvn-test--rows 3)) tvn-test--live-spec nil)
          (with-current-buffer buf
            (should (string-match-p "build failed" (buffer-string)))
            (should-not (string-match-p "core-00000" (buffer-string)))))
      (kill-buffer buf))))

;;; Auto-routing from basic table-view-display

(ert-deftest tvn-test-seam-registered ()
  "Loading table-view-native registers the display seam in the core."
  (should (eq table-view--native-display-function #'table-view-native--auto-display)))

(ert-deftest tvn-test-available-p ()
  ;; Unavailable when the binary does not resolve (deterministic, no binary needed).
  (cl-letf (((symbol-function 'table-view-native--resolve) (lambda () nil)))
    (should-not (table-view-native-available-p)))
  ;; Available when the binary resolves.
  (tvn-test--skip-unless-binary (should (table-view-native-available-p))))

(ert-deftest tvn-test-auto-display-routes-when-available ()
  "The auto-display routes a large inline table to the native backend."
  (tvn-test--skip-unless-binary
   (let ((buf (get-buffer-create " *tvn-auto*")))
     (unwind-protect
         (progn
           (should (table-view-native--auto-display
                    buf `((title . "t")
                          (columns . (((key . "name") (header . "Name"))
                                      ((key . "num") (header . "Num") (type . "number"))
                                      ((key . "val") (header . "Val") (type . "number"))))
                          (rows . ,(tvn-test--rows 20)))
                    nil))
           (sit-for 0.3)
           (with-current-buffer buf
             (should (table-view--paged-p))
             (should (string-match-p "core-00000" (buffer-string)))))
       (kill-buffer buf)))))

(ert-deftest tvn-test-auto-display-recommends-when-unavailable ()
  "When the backend is not ready, auto-display recommends a build and declines."
  (let ((table-view-native--warned (make-hash-table))
        (warned nil)
        (buf (get-buffer-create " *tvn-auto-rec*")))
    (unwind-protect
        (cl-letf (((symbol-function 'table-view-native--resolve) (lambda () nil))
                  ((symbol-function 'display-warning) (lambda (&rest _) (setq warned t))))
          (should-not (table-view-native--auto-display buf '((rows . nil)) nil))
          (should warned))
      (kill-buffer buf))))

(provide 'table-view-native-test)
;;; table-view-native-test.el ends here

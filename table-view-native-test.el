;;; table-view-native-test.el --- Tests for the native backend -*- lexical-binding: t; -*-

;; Guarded: every test skips unless the tvx binary is present/buildable, so the
;; pure-elisp suite (table-view-test.el) stays independent of cargo.

(require 'ert)
(require 'cl-lib)
(require 'table-view)
(require 'table-view-native)

(defconst tvn-test--words ["core" "lib" "utils" "http" "json" "async" "test" "cli"])

(defun tvn-test--binary ()
  "Path to a valid tvx, building it once if cargo is available; else nil."
  (let ((built (expand-file-name "native/tvx/target/release/tvx"
                                 (locate-dominating-file default-directory "table-view.el"))))
    (or (table-view-native--validate built)
        (when (table-view-native--cargo)
          (call-process (table-view-native--cargo) nil nil nil "build" "--release"
                        "--manifest-path"
                        (expand-file-name "native/tvx/Cargo.toml"
                                          (locate-dominating-file default-directory "table-view.el")))
          (table-view-native--validate built)))))

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
  (vconcat (mapcar (lambda (r)
                     (list :id (alist-get 'id r)
                           :cells (cl-loop for (k . v) in (alist-get 'cells r)
                                           append (list (intern (concat ":" (symbol-name k))) v))))
                   rows)))
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
           (table-view-native-display buf (list :kind "rows" :rows (tvn-test--wire (tvn-test--rows 20)))
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
        (cl-letf (((symbol-function 'display-warning) (lambda (&rest _) (setq warned t))))
          (table-view-native-display buf (list :kind "rows" :rows (tvn-test--wire (tvn-test--rows 5)))
                                     tvn-test--spec)
          (should warned)
          (with-current-buffer buf (should (string-match-p "core-00000" (buffer-string)))))
      (kill-buffer buf))))

(provide 'table-view-native-test)
;;; table-view-native-test.el ends here

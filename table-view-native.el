;;; table-view-native.el --- Native (Rust) data backend for table-view -*- lexical-binding: t; -*-

;; Author: Dmitry Akatov <akatovda@gmail.com>
;; URL: https://github.com/rails-to-cosmos/table-view
;; Version: 0.1.0
;; Package-Requires: ((emacs "28.1") (table-view "0.1.0"))
;; SPDX-License-Identifier: MIT

;;; Commentary:
;; Optional accelerator: a Rust subprocess (`tvx') owns the table data model
;; (sort, filter, window) so Emacs stays a thin view past ~20k rows.  It speaks
;; JSON-RPC over stdio via the built-in `jsonrpc.el' and plugs into the existing
;; `table-view' paged mode as a `page-fn' -- no core rewrite.
;;
;; Distribution is compile-on-install: the Rust source ships under native/ and
;; is built with cargo via `M-x table-view-native-compile'.  When the binary is
;; absent or unbuildable, table-view runs the pure-elisp path and warns.
;;
;; Phase 1: initialize / open / window / close (discrete paged windows).  The
;; live-update layer ($/delta, `table-view-apply-delta') lands later.

;;; Code:

(require 'cl-lib)
(require 'jsonrpc)
(require 'table-view)

(defconst table-view-native-protocol 1
  "Wire-protocol integer this Emacs side speaks.
Must equal the binary's `open' reply :protocol and the N in
\"tvx X.Y.Z protocol N\" from `tvx --version'.")

;;; Customization

(defgroup table-view-native nil
  "Native backend for `table-view'." :group 'table-view :prefix "table-view-native-")

(defcustom table-view-native-enabled t
  "When nil, always use the pure-elisp path (no native backend)." :type 'boolean)
(defcustom table-view-native-program nil
  "Explicit path to the `tvx' binary, or nil to auto-resolve." :type '(choice (const nil) file))
(defcustom table-view-native-cargo-program "cargo"
  "Cargo executable used to build the backend." :type 'string)
(defcustom table-view-native-auto-compile 'prompt
  "Whether first native use may build the binary: prompt, t (silent), nil (never)."
  :type '(choice (const prompt) (const t) (const nil)))
(defcustom table-view-native-warn t
  "When non-nil, warn the first time the pure-elisp fallback is used." :type 'boolean)

;;; Paths / resolution

(defvar table-view-native--source-dir
  (let ((d (or (and load-file-name (file-name-directory load-file-name))
               (ignore-errors (file-name-directory (locate-library "table-view-native"))))))
    (and d (expand-file-name "native/tvx/" d)))
  "Directory of the bundled Rust crate (native/tvx/).")

(defvar table-view-native--cache-dir (locate-user-emacs-file "table-view/tvx/")
  "User-writable directory holding the compiled binary.")

(defun table-view-native--exe () (if (eq system-type 'windows-nt) "tvx.exe" "tvx"))

(defun table-view-native--cached-binary ()
  "Path of the cached compiled binary (name embeds the protocol version)."
  (expand-file-name (format "tvx-p%d%s" table-view-native-protocol
                            (if (eq system-type 'windows-nt) ".exe" ""))
                    table-view-native--cache-dir))

(defun table-view-native--validate (prog)
  "Return PROG when it runs and reports the expected protocol, else nil."
  (when (and prog (file-executable-p prog))
    (ignore-errors
      (with-temp-buffer
        (when (and (eq 0 (call-process prog nil t nil "--version"))
                   (string-match "protocol \\([0-9]+\\)" (buffer-string))
                   (= (string-to-number (match-string 1 (buffer-string)))
                      table-view-native-protocol))
          prog)))))

(defun table-view-native--resolve ()
  "Return a validated backend path, or nil.  Order: custom, cache, PATH, cargo bin."
  (seq-some #'table-view-native--validate
            (list (and table-view-native-program (executable-find table-view-native-program))
                  (let ((c (table-view-native--cached-binary))) (and (file-executable-p c) c))
                  (executable-find (table-view-native--exe))
                  (let ((c (expand-file-name (format "~/.cargo/bin/%s" (table-view-native--exe)))))
                    (and (file-executable-p c) c)))))

;;; Fallback + warning

(defvar table-view-native--warned (make-hash-table)
  "Reasons already warned about this session, for dedupe.")

(defun table-view-native--warn-text (reason detail)
  (concat
   (pcase reason
     ('no-cargo "native backend unavailable: cargo not found.  Install Rust (https://rustup.rs), then M-x table-view-native-compile.")
     ('no-binary "native backend not built.  M-x table-view-native-compile to enable it.")
     ('building "building the native backend; using the pure-elisp path until it finishes.")
     ('build-failed "native build failed -- see *tvx-compile*.  Using the pure-elisp path.")
     ('version-mismatch (format "native binary speaks protocol %s, need %d.  Rebuild with M-x table-view-native-compile."
                                detail table-view-native-protocol))
     ('unsupported-source "the native backend is required for this data source.")
     (_ "using the pure-elisp path (slow past ~20k rows)."))
   "  Silence: (setq table-view-native-warn nil)."))

(defun table-view-native--fallback (reason &optional detail)
  "Note that the pure-elisp path is in use because of REASON; warn once."
  (when (and table-view-native-warn (not (gethash reason table-view-native--warned)))
    (puthash reason t table-view-native--warned)
    (display-warning 'table-view (table-view-native--warn-text reason detail) :warning))
  nil)

;;; Build (compile-on-install)

(defvar table-view-native--build-in-progress nil)

(defun table-view-native--cargo ()
  (or (executable-find table-view-native-cargo-program)
      (let ((c (expand-file-name "~/.cargo/bin/cargo"))) (and (file-executable-p c) c))))

(defun table-view-native-compile (&optional force callback)
  "Build the native backend with cargo and cache the binary.
With FORCE (interactively, or non-nil), rebuild even when a valid binary
exists.  CALLBACK, if given, is called with the resulting path (or nil)."
  (interactive (list t nil))
  (let ((have (and (not force) (table-view-native--resolve))))
    (cond
     (have (when callback (funcall callback have)) have)
     ((not (table-view-native--cargo))
      (table-view-native--fallback 'no-cargo) (when callback (funcall callback nil)) nil)
     (table-view-native--build-in-progress
      (table-view-native--fallback 'building) nil)
     ((not table-view-native--source-dir)
      (when callback (funcall callback nil)) nil)
     (t
      (setq table-view-native--build-in-progress t)
      (make-directory table-view-native--cache-dir t)
      (let* ((manifest (expand-file-name "Cargo.toml" table-view-native--source-dir))
             (buf (get-buffer-create "*tvx-compile*")))
        (with-current-buffer buf (erase-buffer))
        (make-process
         :name "tvx-compile" :buffer buf :noquery t
         :command (list (table-view-native--cargo) "build" "--release" "--manifest-path" manifest)
         :sentinel
         (lambda (proc _event)
           (when (memq (process-status proc) '(exit signal))
             (setq table-view-native--build-in-progress nil)
             (let ((ok (eq 0 (process-exit-status proc)))
                   (built (expand-file-name (format "target/release/%s" (table-view-native--exe))
                                            table-view-native--source-dir))
                   (dest (table-view-native--cached-binary)))
               (if (and ok (file-executable-p built))
                   (progn (copy-file built dest t) (set-file-modes dest #o755)
                          (let ((valid (table-view-native--validate dest)))
                            (unless valid (table-view-native--fallback 'version-mismatch))
                            (when callback (funcall callback valid))))
                 (table-view-native--fallback 'build-failed)
                 (when callback (funcall callback nil)))))))
        (message "Building the table-view native backend in *tvx-compile*...")
        nil)))))

(defun table-view-native--ensure ()
  "Return a validated backend path, building if policy allows; else nil + warn."
  (cond
   ((not table-view-native-enabled) nil)
   ((table-view-native--resolve))
   (table-view-native--build-in-progress (table-view-native--fallback 'building))
   ((not (table-view-native--cargo)) (table-view-native--fallback 'no-cargo))
   (t (pcase table-view-native-auto-compile
        ('nil (table-view-native--fallback 'no-binary))
        ('t (table-view-native-compile) (table-view-native--fallback 'building))
        (_ (if (y-or-n-p "Build the table-view native backend now (~30s)? ")
               (progn (table-view-native-compile) (table-view-native--fallback 'building))
             (table-view-native--fallback 'no-binary)))))))

;;; Connection

(defvar table-view-native--connection nil "Shared jsonrpc connection, or nil.")
(defvar table-view-native--handles (make-hash-table) "Handle -> buffer, for respawn.")

(defun table-view-native--make-connection (prog)
  (let ((conn (make-instance 'jsonrpc-process-connection
                :name "tvx"
                :notification-dispatcher #'table-view-native--dispatch
                :process (make-process :name "tvx" :command (list prog)
                                       :coding 'utf-8-emacs-unix :connection-type 'pipe
                                       :stderr (get-buffer-create "*tvx stderr*") :noquery t))))
    (jsonrpc-request conn 'initialize
                     (list :clientInfo (list :name "table-view" :version "0.1.0")
                           :protocol (list :min 1 :max table-view-native-protocol)
                           :wire ["json"] :capabilities (list :delta :json-false)))
    conn))

(defun table-view-native--ensure-connection ()
  "Return a live connection, starting one if needed and possible; else nil."
  (or (and table-view-native--connection
           (jsonrpc-running-p table-view-native--connection)
           table-view-native--connection)
      (when-let ((prog (table-view-native--ensure)))
        (setq table-view-native--connection (table-view-native--make-connection prog)))))

(defun table-view-native--dispatch (_conn _method _params)
  "Notification dispatcher (phase 1: no live layer; ignored)." nil)

;;; Row conversion (jsonrpc plist -> table-view alist)

(defun table-view-native--row (r)
  "Convert a reply row plist R to table-view's ((id . ID) (cells . ALIST)) shape."
  (list (cons 'id (plist-get r :id))
        (cons 'cells (cl-loop for (k v) on (plist-get r :cells) by #'cddr
                              collect (cons (intern (substring (symbol-name k) 1)) v)))))

;;; The page-fn closure

(defun table-view-native--columns (spec)
  "Backend column schema from SPEC.
A vector of (:key K :type T); `value-fn' columns are excluded (Emacs-side only)."
  (vconcat
   (delq nil
         (mapcar (lambda (col)
                   (unless (alist-get 'value-fn col)   ; value-fn cols are Emacs-side only
                     (list :key (alist-get 'key col)
                           :type (pcase (alist-get 'type col)
                                   ("number" "number") ("badge" "badge") (_ "text")))))
                 (table-view--columns spec)))))

(defun table-view-native--page-fn (conn handle)
  "Return a `page-fn' closure fetching windows from CONN for HANDLE."
  (lambda (req)
    (let ((buf (plist-get req :buffer)))
      (jsonrpc-async-request
       conn 'window
       (list :handle handle
             :offset (or (plist-get req :offset) 0)
             :limit (plist-get req :limit)
             :sort (vconcat (mapcar (lambda (ka) (vector (car ka) (and (cdr ka) t)))
                                    (plist-get req :sort)))
             :filter (or (plist-get req :filter) ""))
       :success-fn
       (lambda (reply)
         (table-view-set-page
          buf (mapcar #'table-view-native--row (append (plist-get reply :rows) nil))
          :total (plist-get reply :matched)
          :offset (plist-get reply :offset)
          :has-next (eq (plist-get reply :hasNext) t)))
       :error-fn
       (lambda (err) (table-view-page-error buf (plist-get err :message)))
       :timeout-fn
       (lambda () (table-view-page-error buf "native backend timeout"))))))

;;; Public entry

;;;###autoload
(defun table-view-native-display (buffer source spec &optional handlers)
  "Display SPEC in BUFFER backed by the native tvx over SOURCE.
SOURCE is a plist, e.g. (:kind \"rows\" :rows [...]) or (:kind \"file\"
:path P :format \"csv\").  Falls back to the pure-elisp path -- with a
warning -- when the backend is unavailable.  Returns the buffer."
  (if-let ((conn (table-view-native--ensure-connection)))
      (let* ((pg (alist-get 'pagination spec))
             (open (jsonrpc-request
                    conn 'open
                    (list :source source
                          :columns (table-view-native--columns spec)
                          :pageSize (or (alist-get 'page-size pg) 50)
                          :protocol table-view-native-protocol)))
             (handle (plist-get open :handle))
             ;; force a paged buffer even if the spec omitted `pagination'
             (spec (if pg spec (append spec (list (cons 'pagination
                                                        (list (cons 'page-size (or (alist-get 'page-size pg) 50))
                                                              (cons 'strategy 'offset))))))))
        (table-view-display buffer spec handlers nil (table-view-native--page-fn conn handle))
        (with-current-buffer (get-buffer buffer)
          (setq-local table-view-native--handle handle
                      table-view-native--source source)
          (puthash handle (current-buffer) table-view-native--handles))
        (get-buffer buffer))
    ;; Fallback: render inline rows in pure elisp; other sources need the backend.
    (if (equal (plist-get source :kind) "rows")
        (let ((rows (mapcar #'table-view-native--row (append (plist-get source :rows) nil))))
          (table-view-display buffer spec handlers)
          (table-view-set-rows buffer rows)
          (get-buffer buffer))
      (table-view-native--fallback 'unsupported-source)
      (table-view-display buffer spec handlers))))

(defvar-local table-view-native--handle nil)
(defvar-local table-view-native--source nil)

(defun table-view-native-reset ()
  "Clear native fallback/crash state and rebuild the backend."
  (interactive)
  (clrhash table-view-native--warned)
  (when (and table-view-native--connection (jsonrpc-running-p table-view-native--connection))
    (jsonrpc-shutdown table-view-native--connection))
  (setq table-view-native--connection nil)
  (table-view-native-compile t))

(provide 'table-view-native)
;;; table-view-native.el ends here

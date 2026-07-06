;;; native.el --- Native (Rust) backend: a MILLION rows, sorted in Rust -*- lexical-binding: t; -*-

;; Eval this buffer for a 1,000,000-row table whose sort, filter, and paging run
;; in the `tvx' Rust subprocess (see docs/proposals/native-backend.org), never
;; in Emacs.  `table-view-native-display' is a drop-in for a paged table: you
;; hand it a SOURCE plist and it wires the backend in as the page-fn for you.
;;
;; Here SOURCE is (:kind "gen" :n 1000000): the rows are SYNTHESIZED IN THE
;; BACKEND, so a million of them never cross into Emacs -- only the ~25 on
;; screen do.  Sorting a string column across 1M rows is ~170 ms in Rust; the
;; equivalent in-buffer elisp sort is ~2 s of blocked Emacs.
;;
;; First run: if the backend is not built, table-view offers to build it (cargo,
;; ~30s).  Accept and the buffer shows a "Building…" placeholder with live output
;; in *tvx-compile*, then loads the table once the build finishes.  Decline (or
;; set `table-view-native-auto-compile' to nil) and a "gen" source cannot render;
;; build later with
;;   M-x table-view-native-compile       (needs cargo -- https://rustup.rs)
;; A big inline "rows" source would instead fall back to a (slower) pure-elisp
;; render; see examples/native-live.el for a "rows" source.
;;
;;   ^        sort by the column at point   (Rust re-orders; jumps to page 1)
;;   /        filter                        (Rust matches; count is the whole set)
;;   > / <    next / previous page
;;   M-> M-<  last / first page
;;   M-g      go to page N
;;   g        refresh

(require 'table-view-native)

(let ((spec '((title . "1,000,000 rows — sorted & filtered in Rust")
              (columns . (((key . "name") (header . "Name"))
                          ((key . "num")  (header . "Hash")  (type . "number") (align . "right"))
                          ((key . "val")  (header . "Index") (type . "number") (align . "right"))))
              (sort . ((column . "name") (ascending . t)))
              (pagination . ((page-size . 25) (strategy . offset))))))
  ;; SOURCE plist: "gen" N tells the backend to synthesize N rows itself.
  (table-view-native-display "*native-1M*" '(:kind "gen" :n 1000000) spec))

;;; native.el ends here

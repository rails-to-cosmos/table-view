;;; org-links.el --- Org links inside table cells -*- lexical-binding: t; -*-

;; Eval this buffer for a table whose cells hold Org bracket links.  A cell
;; value like "[[TARGET][DESC]]" renders as DESC and is followable:
;;
;;   RET, C-c C-o   open the link at point
;;   mouse-1        click a link to open it
;;
;; `C-c C-o' and mouse are built in; RET is wired here as a consumer action
;; (a handler that calls `table-view-open-link') to show how to add it.
;;
;; Width, filtering (`/'), and sorting (`^') all use the visible description,
;; not the raw "[[...]]" markup -- so columns line up and `/ manual' matches
;; the "Manual" link.  https:, mailto:, and ftp: links open with `browse-url';
;; file: and other Org link types are handed to Org.  Rebind
;; `table-view-open-link-function' to change what following a link does.

(require 'table-view)

(let ((spec '((title . "Projects (cells are Org links)")
              (columns . (((key . "name")   (header . "Project"))
                          ((key . "docs")   (header . "Docs"))
                          ((key . "owner")  (header . "Maintainer"))
                          ((key . "stars")  (header . "Stars")
                           (type . "number") (align . "right"))))
              (actions . (((key . "RET") (label . "Open link") (command . "open-link"))))
              (sort . ((column . "stars") (ascending . nil)))
              (rows . (((id . "org")
                        (cells . ((name  . "[[https://orgmode.org][Org mode]]")
                                  (docs  . "[[https://orgmode.org/manual/][Manual]]")
                                  (owner . "[[mailto:maint@orgmode.org][email]]")
                                  (stars . 1200))))
                       ((id . "magit")
                        (cells . ((name  . "[[https://magit.vc][Magit]]")
                                  (docs  . "[[https://magit.vc/manual/][Manual]]")
                                  (owner . "[[https://github.com/tarsius][tarsius]]")
                                  (stars . 6400))))
                       ((id . "self")
                        (cells . ((name  . "[[https://github.com/rails-to-cosmos/table-view][table-view]]")
                                  ;; a file: link to this very file
                                  (docs  . "[[file:org-links.el][example]]")
                                  (owner . "[[https://github.com/rails-to-cosmos][rails-to-cosmos]]")
                                  (stars . 3))))))))
      ;; RET follows the link under point, just like C-c C-o.
      (handlers `(("open-link" . ,(lambda (_id _row) (table-view-open-link))))))
  (table-view-display "*projects*" spec handlers))

;;; org-links.el ends here

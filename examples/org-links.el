;;; org-links.el --- Org links inside table cells -*- lexical-binding: t; -*-


(require 'table-view)

(let ((spec '((title . "Projects (cells are Org links)")
              (columns . (((key . "name")   (header . "Project") (sortable . t))
                          ((key . "docs")   (header . "Docs") (sortable . t))
                          ((key . "owner")  (header . "Maintainer") (sortable . t))
                          ((key . "stars")  (header . "Stars")
                           (type . "number") (align . "right") (sortable . t))))
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
                                  (docs  . "[[file:org-links.el][example]]")
                                  (owner . "[[https://github.com/rails-to-cosmos][rails-to-cosmos]]")
                                  (stars . 3))))))))
      (handlers `(("open-link" . ,(lambda (_id _row) (table-view-open-link))))))
  (table-view-display "*projects*" spec handlers))

;;; org-links.el ends here

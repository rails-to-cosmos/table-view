;;; bulk.el --- Marking, narrowing, and bulk actions -*- lexical-binding: t; -*-

;; Eval this buffer for a downloads table with bulk operations:
;;
;;   m    mark / unmark the row at point (marked rows get a `*' gutter column)
;;   U    unmark all
;;   /    narrow to the marked rows; with nothing marked, filter by substring
;;   d    delete -- a BULK action: it operates on the marked rows, or the row
;;        at point if none are marked, and each removal goes through a
;;        pre-delete gate (a `locked' file is refused, so its row stays)
;;
;; `d' is declared with `(bulk . t)', so its handler receives the operative
;; ROW LIST rather than a single (id row); see `table-view-current-or-marked-rows'.

(require 'table-view)

(defun bulk-example--purge (row)
  "Pretend to remove the file for ROW; non-nil on success.
Refuses a `locked' row, to show the gate keeping it."
  (if (equal (alist-get 'state (alist-get 'cells row)) "locked")
      (progn (message "Skipped %s (locked)" (alist-get 'id row)) nil)
    (message "Deleted %s" (alist-get 'id row))
    t))

(let ((spec '((title . "Downloads")
              (columns . (((key . "name")  (header . "File"))
                          ((key . "size")  (header . "Size") (type . "number") (align . "right"))
                          ((key . "state") (header . "State") (type . "badge")
                           (badges . (((value . "ready")  (color . "#50fa7b"))
                                      ((value . "locked") (color . "#ff5555")))))))
              (actions . (((key . "d") (label . "Delete") (command . "delete") (bulk . t))))
              (rows . (((id . "a") (cells . ((name . "report.pdf")  (size . 4096) (state . "ready"))))
                       ((id . "b") (cells . ((name . "invoice.xls") (size . 128)  (state . "locked"))))
                       ((id . "c") (cells . ((name . "photo.png")   (size . 8192) (state . "ready"))))
                       ((id . "d") (cells . ((name . "notes.txt")   (size . 64)   (state . "ready"))))))))
      (handlers `(("delete" . ,(lambda (rows)
                                 (when (yes-or-no-p (format "Delete %d file(s)? " (length rows)))
                                   (dolist (row rows)
                                     (when (bulk-example--purge row)
                                       (table-view-delete-row (current-buffer)
                                                              (alist-get 'id row))))))))))
  (table-view-display "*downloads*" spec handlers))

;;; bulk.el ends here

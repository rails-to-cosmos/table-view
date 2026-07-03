;;; delete.el --- Row deletion with a custom pre-delete gate -*- lexical-binding: t; -*-

;; Eval this buffer for a cache-entries table where `d' deletes the row at
;; point -- but only AFTER a custom pre-delete step succeeds.  Here that step
;; (`delete-example--purge') stands in for removing files / database rows: it
;; refuses to delete a `locked' entry, so the row is KEPT when cleanup fails.
;;
;; This is the pattern for "remove some files / DB entries and proceed only
;; after success": your action handler does the work and calls
;; `table-view-delete-row' ONLY on success.
;;
;;   d    delete the entry at point (ask, then purge, then remove the row)

(require 'table-view)

(defun delete-example--purge (id row)
  "Pretend to remove the files / database rows for ROW; non-nil on success.
Refuses a `locked' entry, to show the gate keeping the row when the
cleanup step fails."
  (if (equal (alist-get 'state (alist-get 'cells row)) "locked")
      (progn (message "Cannot purge %s: entry is locked" id) nil)
    (message "Purged files and DB rows for %s" id)
    t))

(let ((spec '((title . "Cache entries")
              (columns . (((key . "name")  (header . "Entry") (sortable . t))
                          ((key . "size")  (header . "Size") (type . "number")
                           (align . "right") (sortable . t))
                          ((key . "state") (header . "State") (type . "badge") (sortable . t)
                           (badges . (((value . "ready")  (color . "#50fa7b"))
                                      ((value . "locked") (color . "#ff5555")))))))
              (actions . (((key . "d") (label . "Delete") (command . "delete"))))
              (rows . (((id . "a") (cells . ((name . "thumbnails") (size . 4096) (state . "ready"))))
                       ((id . "b") (cells . ((name . "sessions")   (size . 128)  (state . "locked"))))
                       ((id . "c") (cells . ((name . "renders")    (size . 8192) (state . "ready"))))))))
      (handlers `(("delete" . ,(lambda (id row)
                                 (when (yes-or-no-p (format "Delete %s? " id))
                                   (if (delete-example--purge id row)
                                       (table-view-delete-row (current-buffer) id)
                                     (message "Kept %s -- cleanup failed" id))))))))
  (table-view-display "*cache*" spec handlers))

;;; delete.el ends here

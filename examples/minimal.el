;;; minimal.el --- Minimal table-view example -*- lexical-binding: t; -*-

;; Eval this buffer to display a table with inline rows.  It opens sorted by
;; the spec's default sort (year, descending).
;; Press RET on a row to see its id, ^ to re-sort, / to filter, g to refresh.
;;
;; A spec is a plain alist: column `key's are strings, and a row's `cells'
;; use the matching symbols.  (If your data arrives as JSON, run it through
;; `table-view-parse' to get this same shape.)

(require 'table-view)

(let ((spec '((title . "Books")
              (columns . (((key . "title") (header . "Title"))
                          ((key . "year")  (header . "Year") (type . "number")
                           (align . "right"))))
              (actions . (((key . "RET") (label . "Open") (command . "open"))))
              (sort . ((column . "year") (ascending . nil)))   ; descending
              (rows . (((id . "1") (cells . ((title . "SICP")               (year . 1996))))
                       ((id . "2") (cells . ((title . "PAIP")               (year . 1992))))
                       ((id . "3") (cells . ((title . "The Little Schemer") (year . 1995))))))))
      (handlers `(("open" . ,(lambda (id _row) (message "Opened book %s" id))))))
  (table-view-display "*books*" spec handlers))

;;; minimal.el ends here

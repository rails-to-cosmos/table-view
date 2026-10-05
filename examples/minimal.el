;;; minimal.el --- Minimal table-view example -*- lexical-binding: t; -*-


(require 'table-view)

(let ((spec '((title . "Books")
              (columns . (((key . "title") (header . "Title") (sortable . t))
                          ((key . "year")  (header . "Year") (type . "number")
                           (align . "right") (sortable . t))))
              (actions . (((key . "RET") (label . "Open") (command . "open"))))
              (sort . ((column . "year") (ascending . nil)))   ; descending
              (rows . (((id . "1") (cells . ((title . "SICP")               (year . 1996))))
                       ((id . "2") (cells . ((title . "PAIP")               (year . 1992))))
                       ((id . "3") (cells . ((title . "The Little Schemer") (year . 1995))))))))
      (handlers `(("open" . ,(lambda (id _row) (message "Opened book %s" id))))))
  (table-view-display "*books*" spec handlers))

;;; minimal.el ends here

;;; native.el --- Native (Rust) accelerator: a MILLION rows, sorted in Rust -*- lexical-binding: t; -*-


(require 'table-view-native)

(let ((spec '((title . "1,000,000 rows — sorted & filtered in Rust")
              (columns . (((key . "name") (header . "Name") (sortable . t))
                          ((key . "num")  (header . "Hash")  (type . "number")
                           (align . "right") (sortable . t))
                          ((key . "val")  (header . "Index") (type . "number")
                           (align . "right") (sortable . t))))
              (sort . ((column . "name") (ascending . t)))
              (pagination . ((page-size . 25) (strategy . offset))))))
  (table-view-native-display "*native-1M*" '(:kind "gen" :n 1000000) spec))

;;; native.el ends here

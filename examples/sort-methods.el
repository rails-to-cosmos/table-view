;;; sort-methods.el --- Per-column sort methods: values / compare -*- lexical-binding: t; -*-

;; Eval this buffer for a release dashboard that shows the per-column sort
;; controls added to table-view.  It opens already sorted by the spec's
;; multi-column default (Env, then Version descending).  Put point on any
;; column -- a header cell or a data cell -- and press `^' to sort by it:
;;
;;   Env      sorts dev < staging < prod  -- a categorical `values' order,
;;            NOT alphabetical (which would give dev < prod < staging).
;;   Version  sorts 1.9 < 1.10 < 2.10     -- `(compare . "natural")' (number
;;            aware), NOT lexicographic (which would give 1.10 < 1.9).
;;   Size     sorts by real byte count    -- a CUSTOM comparator: the column's
;;            `compare' is a predicate FUNCTION, `sort-methods--size-lessp'
;;            (1500KB < 128MB < 2GB), which neither natural nor lexicographic
;;            order gets right.  (From a JSON spec you would register it by
;;            name in `table-view-comparators' and use "compare": "bytes".)
;;   Status   an unchanged colored `badges' column, sorting by palette order.
;;
;; `values' is ordering only -- colours still live in `badges'.  Other built-in
;; `compare' methods are "number" (coerces number-strings) and "string".
;; C-u ^ adds a column as a tie-breaker; M-<left> / M-<right> move a column.

(require 'table-view)

(defun sort-methods--bytes (s)
  "Parse a human size string like \"512MB\" into a byte count."
  (let* ((s (downcase (format "%s" s)))
         (n (string-to-number s))
         (unit (if (string-match "\\([kmgt]\\)b" s) (match-string 1 s) "")))
    (round (* n (pcase unit ("k" 1e3) ("m" 1e6) ("g" 1e9) ("t" 1e12) (_ 1))))))

(defun sort-methods--size-lessp (a b)
  "Order sizes A and B by their parsed byte count."
  (< (sort-methods--bytes a) (sort-methods--bytes b)))

(let ((spec '((title . "Releases")
              (columns . (((key . "service") (header . "Service") (sortable . t))
                          ((key . "env") (header . "Env")                           (values . ("dev" "staging" "prod")))
                          ((key . "version") (header . "Version")                           (compare . "natural"))
                          ((key . "size") (header . "Size") (sortable . t) (align . "right")
                           (compare . sort-methods--size-lessp))   ; a predicate function
                          ((key . "status") (header . "Status") (type . "badge")                           (badges . (((value . "ok")   (color . "#50fa7b"))
                                      ((value . "warn") (color . "#f1fa8c"))
                                      ((value . "err")  (color . "#ff5555")))))))
              (actions . (((key . "RET") (label . "Log") (command . "log"))))
              (sort . (((column . "env")     (ascending . t))
                       ((column . "version") (ascending . nil))))
              (rows . (((id . "api-prod") (cells . ((service . "api")    (env . "prod")    (version . "2.10.0") (size . "512MB")  (status . "ok"))))
                       ((id . "api-stg")  (cells . ((service . "api")    (env . "staging") (version . "2.11.0") (size . "512MB")  (status . "warn"))))
                       ((id . "web-prod") (cells . ((service . "web")    (env . "prod")    (version . "1.9.0")  (size . "2GB")    (status . "ok"))))
                       ((id . "web-dev")  (cells . ((service . "web")    (env . "dev")     (version . "1.10.0") (size . "1500KB") (status . "err"))))
                       ((id . "wrk-prod") (cells . ((service . "worker") (env . "prod")    (version . "0.4.0")  (size . "128MB")  (status . "ok"))))
                       ((id . "wrk-dev")  (cells . ((service . "worker") (env . "dev")     (version . "0.5.0")  (size . "64MB")   (status . "warn"))))))))
      (handlers `(("log" . ,(lambda (id _row) (message "Logs for %s" id))))))
  (table-view-display "*releases*" spec handlers))

;;; sort-methods.el ends here

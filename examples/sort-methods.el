;;; sort-methods.el --- Per-column sort methods: values / compare -*- lexical-binding: t; -*-


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
                          ((key . "env") (header . "Env") (sortable . t)
                           (values . ("dev" "staging" "prod")))
                          ((key . "version") (header . "Version") (sortable . t)
                           (compare . "natural"))
                          ((key . "size") (header . "Size") (sortable . t) (align . "right")
                           (compare . sort-methods--size-lessp))   ; a predicate function
                          ((key . "status") (header . "Status") (type . "badge") (sortable . t)
                           (badges . (((value . "ok")   (color . "#50fa7b"))
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

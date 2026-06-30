;;; minimal.el --- Minimal table-view example -*- lexical-binding: t; -*-

;; Eval this buffer to display a table with inline rows.
;; Press RET on a row to see its id, g to sort, / to filter.

(require 'table-view)

(let* ((json "{ \"title\": \"Books\",
                \"columns\": [
                  { \"key\": \"title\",  \"header\": \"Title\",  \"sortable\": true },
                  { \"key\": \"year\",   \"header\": \"Year\",   \"type\": \"number\",
                    \"align\": \"right\", \"sortable\": true }
                ],
                \"actions\": [
                  { \"key\": \"RET\", \"label\": \"Open\", \"command\": \"open\" }
                ],
                \"sort\": { \"column\": \"year\", \"ascending\": false },
                \"rows\": [
                  { \"id\": \"1\", \"cells\": { \"title\": \"SICP\",               \"year\": 1996 } },
                  { \"id\": \"2\", \"cells\": { \"title\": \"PAIP\",               \"year\": 1992 } },
                  { \"id\": \"3\", \"cells\": { \"title\": \"The Little Schemer\", \"year\": 1995 } }
                ] }")
       (spec (table-view-parse json))
       (handlers
        `(("open" . ,(lambda (id _row)
                       (message "Opened book %s" id))))))
  (table-view-display "*books*" spec handlers))

;;; minimal.el ends here

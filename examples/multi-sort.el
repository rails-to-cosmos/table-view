;;; multi-sort.el --- Column navigation and multi-column sort -*- lexical-binding: t; -*-

;; Eval this buffer to explore column navigation and multi-column sorting.
;; The table opens in load order.  Inside it:
;;
;;   n / p     move between rows
;;   f / b     move between cells (columns) in a row (char motion off the table)
;;   ^         sort by the column at point; press again to toggle asc / desc
;;   C-u ^     ADD the column at point as a secondary (tie-breaker) sort key
;;   /         filter      g   refresh      q   quit
;;
;; Walkthrough:
;;   1. Put point on the Dept column and press `^'    -> group by department.
;;   2. Move to Score with `f' and press `C-u ^'      -> order by score within
;;      each department (press `C-u ^' again to flip that key to descending).
;;   3. Move to Name and press `C-u ^'                -> break the 77 / 77 score
;;      tie in Ops alphabetically (Gil before Hugh).
;;   The hint line shows the chain, e.g. "dept asc -> score asc -> name asc".
;;   Press `^' on any column to collapse back to a single-column sort.

(require 'table-view)

(let* ((json "{ \"title\": \"Team Roster\",
                \"columns\": [
                  { \"key\": \"dept\",  \"header\": \"Dept\",  \"sortable\": true },
                  { \"key\": \"name\",  \"header\": \"Name\",  \"sortable\": true },
                  { \"key\": \"level\", \"header\": \"Level\", \"type\": \"badge\",
                    \"sortable\": true,
                    \"badges\": [
                      { \"value\": \"sr\",  \"color\": \"#50fa7b\" },
                      { \"value\": \"mid\", \"color\": \"#f1fa8c\" },
                      { \"value\": \"jr\",  \"color\": \"#6272a4\" } ] },
                  { \"key\": \"score\", \"header\": \"Score\", \"type\": \"number\",
                    \"align\": \"right\", \"sortable\": true }
                ],
                \"actions\": [
                  { \"key\": \"RET\", \"label\": \"Who\", \"command\": \"who\" }
                ],
                \"rows\": [
                  { \"id\": \"ada\",  \"cells\": { \"dept\": \"Eng\",   \"name\": \"Ada\",  \"level\": \"sr\",  \"score\": 92 } },
                  { \"id\": \"bell\", \"cells\": { \"dept\": \"Eng\",   \"name\": \"Bell\", \"level\": \"mid\", \"score\": 88 } },
                  { \"id\": \"carr\", \"cells\": { \"dept\": \"Eng\",   \"name\": \"Carr\", \"level\": \"sr\",  \"score\": 95 } },
                  { \"id\": \"dot\",  \"cells\": { \"dept\": \"Sales\", \"name\": \"Dot\",  \"level\": \"mid\", \"score\": 70 } },
                  { \"id\": \"eve\",  \"cells\": { \"dept\": \"Sales\", \"name\": \"Eve\",  \"level\": \"jr\",  \"score\": 82 } },
                  { \"id\": \"finn\", \"cells\": { \"dept\": \"Ops\",   \"name\": \"Finn\", \"level\": \"sr\",  \"score\": 60 } },
                  { \"id\": \"hugh\", \"cells\": { \"dept\": \"Ops\",   \"name\": \"Hugh\", \"level\": \"mid\", \"score\": 77 } },
                  { \"id\": \"gil\",  \"cells\": { \"dept\": \"Ops\",   \"name\": \"Gil\",  \"level\": \"jr\",  \"score\": 77 } }
                ] }")
       (spec (table-view-parse json))
       (handlers
        `(("who" . ,(lambda (id row)
                      (message "%s is in %s" id
                               (alist-get 'dept (alist-get 'cells row))))))))
  (table-view-display "*roster*" spec handlers))

;;; multi-sort.el ends here

;;; paginate.el --- Server-side pagination over a fake producer -*- lexical-binding: t; -*-

;; Eval this buffer for a 137-row "package registry" served ONE PAGE AT A
;; TIME.  Only the current page lives in the buffer; sort, filter, and totals
;; are the producer's job.  A real consumer swaps the in-memory `db' below for
;; a database or HTTP call and delivers each page with `table-view-set-page'
;; (or `table-view-page-error' on failure) -- from an async callback if the
;; fetch is slow.
;;
;;   > / <        next / previous page
;;   M-> / M-<    last / first page
;;   M-g          go to page N
;;   /            filter -- PUSHED DOWN: you page through the matches, and the
;;                indicator counts the whole filtered set, not the loaded page
;;   ^            sort by the column at point -- PUSHED DOWN: the server
;;                re-orders and you jump back to page 1
;;   m / U        mark / unmark a row.  Marks are cached, so they SURVIVE page
;;                turns: mark a row here, page away, come back -- still marked
;;   x            a bulk action over every marked row ACROSS ALL PAGES, not
;;                just the ones on screen
;;   g            refresh (re-fetch the current page)

(require 'table-view)
(require 'cl-lib)
(require 'seq)

;;; A pretend producer: an in-memory table the page-fn queries.

(defconst paginate-example--words
  '("core" "lib" "utils" "http" "json" "async" "test" "cli")
  "Name stems, cycled so `/ lib' matches a subset spread across pages.")

(defun paginate-example--db (n)
  "Build N rows of a fake package registry."
  (cl-loop for i from 1 to n
           for word = (nth (mod i (length paginate-example--words))
                           paginate-example--words)
           collect `((id . ,(format "p%d" i))
                     (cells . ((name . ,(format "%s-%03d" word i))
                               (downloads . ,(* i 137))
                               (status . ,(nth (mod i 3) '("stable" "beta" "alpha"))))))))

(defun paginate-example--query (db req)
  "Return DB filtered and sorted per REQ -- the WHERE + ORDER BY a server runs.
Filters `name' by the pushed-down substring and orders by the FULL sort
chain (primary key, then each tie-breaker), so `C-u ^' secondary sorts work.
Each key reads its direction with `table-view--sort-key-asc' and its empty-cell
placement with `table-view--sort-key-nulls' -- the reference for translating a
sort key to SQL `ORDER BY col [ASC|DESC] NULLS FIRST|LAST'."
  (let ((filter (plist-get req :filter))
        (sort (plist-get req :sort))
        (rows db))
    (when (and filter (not (string-empty-p filter)))          ; WHERE name ILIKE %s
      (setq rows (cl-remove-if-not
                  (lambda (r)
                    (string-match-p (regexp-quote (downcase filter))
                                    (downcase (alist-get 'name (alist-get 'cells r)))))
                  rows)))
    (when sort                          ; ORDER BY k1 [ASC|DESC] NULLS …, k2 …
      (setq rows (sort (copy-sequence rows)
                       (lambda (a b)
                         (cl-loop
                          for ka in sort
                          for key = (intern (car ka))
                          for asc = (table-view--sort-key-asc ka)
                          for nfirst = (eq (table-view--sort-key-nulls ka) 'first)
                          for va = (alist-get key (alist-get 'cells a))
                          for vb = (alist-get key (alist-get 'cells b))
                          ;; A null is an empty-string or absent cell; place it
                          ;; absolutely -- top for nulls-first, bottom for last --
                          ;; regardless of ASC.
                          for na = (or (null va) (equal va ""))
                          for nb = (or (null vb) (equal vb ""))
                          do (cond
                              ((and na nb) nil)               ; tie on this key
                              (na (cl-return nfirst))
                              (nb (cl-return (not nfirst)))
                              ((if (numberp va) (< va vb)
                                 (string< (format "%s" va) (format "%s" vb)))
                               (cl-return asc))
                              ((if (numberp va) (> va vb)
                                 (string< (format "%s" vb) (format "%s" va)))
                               (cl-return (not asc))))
                          finally return nil)))))
    rows))

(defun paginate-example--page-fn (db)
  "Return a page-fn that serves DB one page per REQUEST.
Here it delivers synchronously; a real fetcher would kick off an async
request and call `table-view-set-page' from the callback instead."
  (lambda (req)
    (let* ((matched (paginate-example--query db req))
           (total   (length matched))                         ; SELECT count(*)
           (offset  (plist-get req :offset))
           (limit   (plist-get req :limit))
           (page    (seq-subseq matched
                                (min offset total)
                                (min (+ offset limit) total)))) ; OFFSET .. LIMIT ..
      (table-view-set-page (plist-get req :buffer) page :total total))))

;;; Wire it up.

(let* ((db (paginate-example--db 137))
       (spec '((title . "Packages (server-paged)")
               (columns . (((key . "name")      (header . "Name") (sortable . t))
                           ((key . "downloads") (header . "Downloads")
                            (type . "number") (align . "right") (sortable . t))
                           ((key . "status")    (header . "Status") (type . "badge")
                            (sortable . t)
                            (badges . (((value . "stable") (color . "#50fa7b"))
                                       ((value . "beta")   (color . "#f1fa8c"))
                                       ((value . "alpha")  (color . "#ff5555")))))))
               (actions . (((key . "x") (label . "Report") (command . "report") (bulk . t))))
               (sort . ((column . "downloads") (ascending . nil)))   ; default ORDER BY
               (pagination . ((page-size . 15) (strategy . offset)))))
       (handlers
        `(("report" . ,(lambda (rows)
                         (message "Marked across all pages: %s"
                                  (mapconcat (lambda (r) (alist-get 'id r)) rows " ")))))))
  ;; page-fn is the 5th argument to table-view-display (fill-fn, the 4th, is nil).
  (table-view-display "*packages*" spec handlers
                      nil (paginate-example--page-fn db)))

;;; paginate.el ends here

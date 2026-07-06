;;; native-live.el --- Native backend live updates: patch -> $/delta -*- lexical-binding: t; -*-

;; Eval this buffer for a native-backed table that MUTATES LIVE.  A timer pushes
;; row upserts and deletes into the backend with `table-view-native-patch'; the
;; backend re-sorts, re-filters, diffs the visible window, and pushes back only
;; the minimal insert/delete ops as a $/delta notification -- so Emacs re-renders
;; just the changed lines, not the page.  This is the live layer over the paged
;; backend (see examples/native.el for the base).
;;
;; The echo area updates via `table-view-native-count' and
;; `table-view-native-aggregate' -- both computed in Rust under the live filter.
;;
;; First run offers to build the backend (cargo, ~30s): accept and the buffer
;; shows build progress, then loads.  Decline and this "rows" source still
;; renders in pure elisp (with a warning) -- but the live timer's patches then
;; have no backend to reach.
;;
;;   ^ / /   sort / filter -- pushed down; live updates keep flowing under them
;;   g       refresh
;; Kill the buffer to stop the timer.

(require 'table-view-native)
(require 'cl-lib)

(defconst native-live--words '("core" "lib" "utils" "http" "json" "async" "test" "cli"))
(defvar native-live--timer nil)
(defvar native-live--tick 0)

(defun native-live--row (i &optional load)
  "Row for worker I; LOAD defaults to a stable pseudo-random value."
  (list (cons 'id (format "p%d" i))
        (cons 'cells (list (cons 'name (format "%s-%04d" (nth (mod i 8) native-live--words) i))
                           (cons 'load (or load (mod (* i 2654435761) 1000)))))))

(defun native-live--stop ()
  (when native-live--timer (cancel-timer native-live--timer) (setq native-live--timer nil)))

(defun native-live--start ()
  (native-live--stop)
  (setq native-live--tick 200)
  (let ((buf "*native-live*")
        (spec '((title . "Live workers (native backend)")
                (columns . (((key . "name") (header . "Worker"))
                            ((key . "load") (header . "Load") (type . "number") (align . "right"))))
                (sort . ((column . "load") (ascending . nil)))       ; hottest first
                (pagination . ((page-size . 20) (strategy . offset))))))
    ;; Seed with 200 rows the backend then owns.
    (table-view-native-display buf (list :kind "rows" :rows (mapcar #'native-live--row (number-sequence 0 199)))
                               spec)
    (setq native-live--timer
          (run-with-timer
           0.5 0.5
           (lambda ()
             (if (not (get-buffer buf))
                 (native-live--stop)
               (cl-incf native-live--tick)
               ;; Each tick: re-load one existing worker (update), hire a new one
               ;; (insert), and retire an old one every 5th tick (delete).
               (let ((upserts (list (native-live--row (mod native-live--tick 200)
                                                      (mod (* native-live--tick 97) 1000))
                                    (native-live--row native-live--tick)))
                     (deletes (when (zerop (mod native-live--tick 5))
                                (list (format "p%d" (mod (* native-live--tick 7) 200))))))
                 (table-view-native-patch buf :upserts upserts :deletes deletes)
                 (message "workers=%s  peak load=%s"
                          (table-view-native-count buf "")
                          (table-view-native-aggregate buf "load" "max" "")))))))))

(native-live--start)

;;; native-live.el ends here

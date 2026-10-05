;;; native-live.el --- Native accelerator live updates: patch -> $/delta -*- lexical-binding: t; -*-


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
        (spec '((title . "Live workers (native accelerator)")
                (columns . (((key . "name") (header . "Worker") (sortable . t))
                            ((key . "load") (header . "Load") (type . "number")
                             (align . "right") (sortable . t))))
                (sort . ((column . "load") (ascending . nil)))       ; hottest first
                (pagination . ((page-size . 20) (strategy . offset))))))
    (table-view-native-display buf (list :kind "rows" :rows (mapcar #'native-live--row (number-sequence 0 199)))
                               spec)
    (setq native-live--timer
          (run-with-timer
           0.5 0.5
           (lambda ()
             (if (not (get-buffer buf))
                 (native-live--stop)
               (cl-incf native-live--tick)
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

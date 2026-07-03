;;; fill-function.el --- Populate a table via a fill function -*- lexical-binding: t; -*-

;; Eval this buffer to see a table whose rows come from a fill function
;; rather than the spec itself.  Press g to re-run the fill function.

(require 'table-view)

(defvar fill-example--spec
  '((title . "Processes")
    (columns . (((key . "name")   (header . "Name") (sortable . t))
                ((key . "pid")    (header . "PID") (type . "number")
                 (align . "right") (sortable . t))
                ((key . "status") (header . "Status") (type . "badge") (sortable . t)
                 (badges . (((value . "run")   (color . "#50fa7b"))
                            ((value . "sleep") (color . "#6272a4"))
                            ((value . "stop")  (color . "#ff5555")))))))
    (actions . (((key . "RET") (label . "Info") (command . "info"))))
    (sort . ((column . "pid") (ascending . t)))
    (rows . ()))
  "Spec for the processes example (rows arrive via the fill function).")

(defun fill-example--fill (buffer)
  "Populate BUFFER with a snapshot of running Emacs subprocesses."
  (let ((rows
         (cl-loop for proc in (process-list)
                  collect `((id . ,(process-name proc))
                            (cells . ((name . ,(process-name proc))
                                      (pid . ,(or (process-id proc) 0))
                                      (status . ,(symbol-name (process-status proc)))))))))
    (table-view-set-rows buffer rows)))

(table-view-display "*processes*" fill-example--spec
                    `(("info" . ,(lambda (id _row)
                                   (message "Process: %s" id))))
                    #'fill-example--fill)

;;; fill-function.el ends here

;;; fill-function.el --- Populate a table via a fill function -*- lexical-binding: t; -*-

;; Eval this buffer to see a table whose rows come from a fill function
;; rather than the spec itself.  Press r to re-run the fill function.
;;
;; `g' (`table-view-revert') re-renders what the buffer already holds; it is
;; `table-view-refresh' that calls the fill function again, so the example
;; binds that.  A fill function must also apply the spec's declared sort
;; itself: the core seeds the sort keys at display time but sorts only the
;; rows that arrived with the spec.

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
    (table-view-set-rows buffer rows)
    ;; Rows that arrive after display are unsorted until this is called.
    (with-current-buffer buffer (table-view-apply-sort))))

(table-view-display "*processes*" fill-example--spec
                    `(("info" . ,(lambda (id _row)
                                   (message "Process: %s" id))))
                    #'fill-example--fill)

(with-current-buffer "*processes*"
  (local-set-key (kbd "r") (lambda () (interactive)
                             (table-view-refresh (current-buffer))
                             (message "Refilled"))))

;;; fill-function.el ends here

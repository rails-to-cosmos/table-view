;;; upsert.el --- Streaming row updates with upsert -*- lexical-binding: t; -*-


(require 'table-view)

(defvar upsert-example--spec
  '((title . "Live Counter")
    (columns . (((key . "label") (header . "Label") (sortable . t))
                ((key . "value") (header . "Value") (type . "number")
                 (align . "right") (sortable . t))))
    (sort . ((column . "label") (ascending . t)))
    (rows . ()))
  "Spec for the live-counter example (rows arrive via the timer).")

(defvar upsert-example--timer nil)
(defvar upsert-example--tick 0)

(defun upsert-example--stop ()
  "Stop the example timer."
  (when upsert-example--timer
    (cancel-timer upsert-example--timer)
    (setq upsert-example--timer nil)))

(defun upsert-example--start ()
  "Start the example: add rows then update them."
  (upsert-example--stop)
  (setq upsert-example--tick 0)
  (let ((buf "*live-counter*")
        (labels '("charlie" "alpha" "bravo")))
    (table-view-display buf upsert-example--spec nil)
    (setq upsert-example--timer
          (run-with-timer 0.5 1.0
            (lambda ()
              (if (not (get-buffer buf))
                  (upsert-example--stop)
                (cl-incf upsert-example--tick)
                (let* ((label (nth (mod (1- upsert-example--tick) (length labels))
                                   labels))
                       (row `((id . ,label)
                              (cells . ((label . ,label)
                                        (value . ,upsert-example--tick))))))
                  (table-view-upsert-row buf row)
                  (with-current-buffer buf (table-view-apply-sort)))))))))

(upsert-example--start)

;;; upsert.el ends here

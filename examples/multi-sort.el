;;; multi-sort.el --- Column navigation and multi-column sort -*- lexical-binding: t; -*-


(require 'table-view)

(let ((spec '((title . "Team Roster")
              (columns . (((key . "dept")  (header . "Dept") (sortable . t))
                          ((key . "name")  (header . "Name") (sortable . t))
                          ((key . "level") (header . "Level") (type . "badge") (sortable . t)
                           (badges . (((value . "sr")  (color . "#50fa7b"))
                                      ((value . "mid") (color . "#f1fa8c"))
                                      ((value . "jr")  (color . "#6272a4")))))
                          ((key . "score") (header . "Score") (type . "number")
                           (align . "right") (sortable . t))))
              (actions . (((key . "RET") (label . "Who") (command . "who"))))
              (rows . (((id . "ada")  (cells . ((dept . "Eng")   (name . "Ada")  (level . "sr")  (score . 92))))
                       ((id . "bell") (cells . ((dept . "Eng")   (name . "Bell") (level . "mid") (score . 88))))
                       ((id . "carr") (cells . ((dept . "Eng")   (name . "Carr") (level . "sr")  (score . 95))))
                       ((id . "dot")  (cells . ((dept . "Sales") (name . "Dot")  (level . "mid") (score . 70))))
                       ((id . "eve")  (cells . ((dept . "Sales") (name . "Eve")  (level . "jr")  (score . 82))))
                       ((id . "finn") (cells . ((dept . "Ops")   (name . "Finn") (level . "sr")  (score . 60))))
                       ((id . "hugh") (cells . ((dept . "Ops")   (name . "Hugh") (level . "mid") (score . 77))))
                       ((id . "gil")  (cells . ((dept . "Ops")   (name . "Gil")  (level . "jr")  (score . 77))))))))
      (handlers `(("who" . ,(lambda (id row)
                              (message "%s is in %s" id
                                       (alist-get 'dept (alist-get 'cells row))))))))
  (table-view-display "*roster*" spec handlers))

;;; multi-sort.el ends here

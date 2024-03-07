(defun toggle-transparency ()
  "Toggle transparency."
  (interactive)
  (let ((desired-alpha 80))
    (set-frame-parameter nil 'alpha-background (if (not (frame-parameter nil 'alpha-background)) desired-alpha))))
;; toggle transparency

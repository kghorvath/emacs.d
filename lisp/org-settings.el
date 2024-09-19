(setq org-directory "~/.emacs.d/org")
(setq org-agenda-files '("inbox.org" "work.org"))

;; (add-hook 'org-mode-hook 'variable-pitch-mode)
;; (setq org-hide-emphasis-markers t)
;; (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(font-lock-add-keywords 'org-mode
                        '(("^ +\\([-*]\\) "
                           (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(setq org-todo-keywords '((sequence "TODO" "IN-PROG" "|" "DONE")))
;; additional TODO keywords

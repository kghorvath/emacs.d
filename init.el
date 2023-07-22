(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; add MELPA package source

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
;; additional keybinds for org-mode

(setq org-todo-keywords '((sequence "TODO" "IN-PROGRESS" "|" "DONE")))
;; additional TODO keywords for org-mode

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" default))
 '(org-agenda-files nil)
 '(package-selected-packages
   '(evil magit no-littering ement mastodon sudo-edit spacemacs-theme solarized-theme))
 '(wdired-allow-to-change-permissions t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)
;; load custom theme

(scroll-bar-mode -1)
;; customize appearance

(require 'no-littering)
(require 'sudo-edit)
(require 'evil)
;; enable packages

(setq mastodon-instance-url "https://social.kghorvath.com"
      mastodon-active-user "kamin")
;; mastodon

(evil-mode 1)
;; enable evil mode
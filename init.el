(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
;; add MELPA Stable package source

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
;; load custom file

(scroll-bar-mode -1)
(column-number-mode)
;; customize appearance

(require 'no-littering)
(require 'sudo-edit)
(require 'evil)
;; enable packages

(package-initialize)
(elpy-enable)
;; (evil-mode 1)
;; enable modes

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; load additional themes

(when (display-graphic-p)
  (load-theme 'wombat))
;; (load-theme 'tokyo t)
;; load custom theme

(load "~/.emacs.d/private/gnus.el")
(load "~/.emacs.d/private/mastodon.el")
(load "~/.emacs.d/lisp/keybindings.el")
(load "~/.emacs.d/lisp/org-settings.el")
;; load additional files

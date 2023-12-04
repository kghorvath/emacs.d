(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://melpa.org/packages/"))
;; add MELPA package source

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
;; load custom file

(scroll-bar-mode -1)
(tool-bar-mode -1)
(column-number-mode)
(pixel-scroll-precision-mode)
;; customize appearance

(when (display-graphic-p)
  (context-menu-mode))
;; enable right click menu

(cua-mode)
;; enable CUA mode

(use-package corfu
  :ensure t
  :init
  (global-corfu-mode))
(use-package corfu-popupinfo
  :after corfu
  :hook (corfu-mode . corfu-popupinfo-mode)
  :custom
  (corfu-popupinfo-delay '(0.25 . 0.1))
  (corfu-popupinfo-hide nil)
  :config
  (corfu-popupinfo-mode))
(use-package corfu-terminal
  :if (not (display-graphic-p))
  :ensure t
  :config
  (corfu-terminal-mode))
(setq completion-cycle-threshold 1) ; tab cycling
(setq completions-detailed t) ; show completion annotations
(setq tab-always-indent 'complete)
;; corfu settings

(use-package which-key
  :ensure t
  :config
  (which-key-mode))
;; enable which-key

(setq backup-directory-alist '(("." . "~/.emacs.d/backup/")))
;; put all backup files in .emacs.d

(require 'no-littering)
(require 'sudo-edit)
;; enable packages

(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; load additional themes

(when (display-graphic-p)
  (load-theme 'monokai))
;; load custom theme

(load "~/.emacs.d/private/gnus.el")
(load "~/.emacs.d/private/mastodon.el")
(load "~/.emacs.d/lisp/keybindings.el")
(load "~/.emacs.d/lisp/org-settings.el")
;; load additional files

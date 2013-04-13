(add-to-list 'load-path "~/.emacs.d/settings")

(require 'custom-functions)
(require 'ui-settings)

(require 'window-settings)
(require 'cursor-settings)
(require 'text-settings)

;; Smart Operator
(add-to-list 'load-path "~/.emacs.d/plugins/smart-operator")
(require 'smart-operator)

;; Autopair
(add-to-list 'load-path "~/.emacs.d/plugins/autopair")
(require 'autopair)

;; MuMaMo
(load "~/.emacs.d/plugins/nxhtml/autostart.el")
;; Workaround the annoying warnings:
;;    Warning (mumamo-per-buffer-local-vars):
;;    Already 'permanent-local t: buffer-file-name
(when (and (equal emacs-major-version 24)
           (equal emacs-minor-version 3))
  (eval-after-load "mumamo"
    '(setq mumamo-per-buffer-local-vars
           (delq 'buffer-file-name mumamo-per-buffer-local-vars))))

;; Popup
(add-to-list 'load-path "~/.emacs.d/plugins/popup")
(require 'popup)

;; Websocket
(add-to-list 'load-path "~/.emacs.d/plugins/websocket")
(require 'websocket)

;; Request
(add-to-list 'load-path "~/.emacs.d/plugins/request")
(require 'request)

;; Ido mode
(require 'ido)
(ido-mode 1)

;; Markdown mode
(add-to-list 'load-path "~/.emacs.d/plugins/markdown-mode")
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (append 
       (list '("\\.text" . markdown-mode) 
	     '("\\.md" . markdown-mode) 
	     '("\\.markdown" . markdown-mode) 
	     )
       auto-mode-alist))

;; C indentation styles
(setq c-basic-offset 8)
(setq c-default-style (quote (
    (c-mode . "bsd") 
    (java-mode . "java") 
    (awk-mode . "awk") 
    (other . "gnu"))))

;; Auto complete
(require 'auto-complete-settings)

;; Camelcase functions
(require 'camelcase-settings)

;; Fill column indicator
;(require 'fill-column-indicator-settings)

;; Python mode 
(require 'python-settings)

;; LaTeX and Auctex
(require 'latex-settings)

;; Church
;(require 'church)

;; Haskell
;(require 'haskell-mode)

;; R
;(require 'ess-site)
;(setq-default inferior-R-program-name "R")

;; Git
(add-to-list 'load-path "~/.emacs.d/plugins/magit")
(require 'magit)


;; Put auto 'custom' changes in a separate file
(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)

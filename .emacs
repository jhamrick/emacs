(add-to-list 'load-path "~/.emacs.d/settings")

(require 'custom-functions)
(require 'ui-settings)

(require 'window-settings)
(require 'cursor-settings)
(require 'text-settings)
(require 'color-theme-settings)

;; Popup
(add-to-list 'load-path "~/.emacs.d/popup-git/")
(require 'popup)

;; Websocket
(add-to-list 'load-path "~/.emacs.d/websocket-git")
(require 'websocket)

;; Request
(add-to-list 'load-path "~/.emacs.d/request-git")
(require 'request)

;; Ido mode
(require 'ido)
(ido-mode 1)

;; Markdown mode
(add-to-list 'load-path "~/.emacs.d/markdown-mode-git")
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.text" . markdown-mode) auto-mode-alist))

;; C indentation styles
(setq c-basic-offset 8)
(setq c-default-style (quote (
    (c-mode . "bsd") 
    (java-mode . "java") 
    (awk-mode . "awk") 
    (other . "gnu"))))

;; Auto complete
(require 'auto-complete-settings)

;; ;; Fill column indicator
;; (require 'fill-column-indicator-settings)
;; Python mode 
(require 'python-settings)

;; LaTeX and Auctex
(require 'latex-settings)

;; Camelcase functions
(require 'camelcase-settings)


;(require 'haskell-settings)
;(require 'church-settings)
;(require 'matlab-settings)
;(require 'r-settings)
;(require 'encryption-settings)
;(require 'org-settings)
;(require 'template-settings)


(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)

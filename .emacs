;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; global config variables
(setq plugin-path "~/.emacs.d/plugins/")

;; define various custom functions
(require 'custom-functions)

;; install dependencies with el-get
(require 'el-get-settings)

;; configure general settings
(require 'general-settings)


;---------------;
;;; Utilities ;;;
;---------------;

;; Git
(include-plugin "magit")
(require 'magit)

;; Popup
(include-elget-plugin "popup")
(require 'popup)

;; Websocket
(include-plugin "websocket")
(require 'websocket)

;; Request
(include-plugin "request")
(require 'request)

;; Auto complete
(require 'auto-complete-settings)

;; Camelcase functions
(require 'camelcase-settings)


;-----------;
;;; Modes ;;;
;-----------;

;; Ido mode
(require 'ido)
(ido-mode 1)

;; MuMaMo
(require 'mumamo-settings)

;; Markdown mode
(require 'markdown-settings)

;; Python mode 
(require 'python-settings)

;; LaTeX and Auctex
(require 'latex-settings)

;; SCSS Mode
(require 'scss-settings)

;; Matlab mode
(require 'matlab-settings)


;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)

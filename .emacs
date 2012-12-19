(add-to-list 'load-path "~/.emacs.d/settings")

(require 'custom-functions)
(require 'ui-settings)

(require 'window-settings)
(require 'cursor-settings)
(require 'text-settings)
(require 'color-theme-settings)

(require 'ido-settings)
(require 'auto-complete-settings)
(require 'fill-column-indicator-settings)

(require 'python-settings)
(require 'haskell-settings)
(require 'church-settings)
(require 'c-settings)
(require 'matlab-settings)
(require 'r-settings)

(require 'latex-settings)
(require 'encryption-settings)
(require 'websocket-settings)
(require 'markdown-settings)
(require 'org-settings)
(require 'camelcase-settings)
(require 'template-settings)

(load 
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)

;(server-start)
;(find-file "~/Documents/todo.org")

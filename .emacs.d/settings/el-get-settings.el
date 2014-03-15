; set the el-get path, and create it if it doesn't exist
(setq elget-path "~/.emacs.d/el-get/")
(unless (file-exists-p elget-path)
  (make-directory elget-path))

; load the el-get plugin
(include-plugin "el-get")
(require 'el-get)

; packages to install
(setq 
 my-packages '(auctex
               auto-complete
               color-theme-solarized
               ein
               magit
               markdown-mode
               matlab-mode
               nxhtml
               pydoc-info
               request
               scss-mode
               websocket
               popup
               jedi
               ))   

(el-get 'sync my-packages)

(provide 'el-get-settings)


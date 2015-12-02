;-----------------;
;;; SCSS / SASS ;;;
;-----------------;

(include-plugin "scss-mode")
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(setq scss-sass-command (expand-file-name "~/.rvm/gems/ruby-1.9.3-p392/bin/sass"))
(setq scss-compile-at-save nil)

(provide 'scss-settings)

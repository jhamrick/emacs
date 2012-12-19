;---------------------;
;;; Markdown Syntax ;;;
;---------------------;

(add-to-list 'load-path "~/.emacs.d/markdown-mode-1.8.1")
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.text" . markdown-mode) auto-mode-alist))

(provide 'markdown-settings)

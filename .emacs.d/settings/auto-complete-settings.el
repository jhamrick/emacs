;-------------------;
;;; Auto-Complete ;;;
;-------------------;

(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1")
(require 'auto-complete) 
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config) 
(ac-config-default)
(global-auto-complete-mode 1)

(provide 'auto-complete-settings)

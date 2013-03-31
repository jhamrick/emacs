;-------------------;
;;; Auto-Complete ;;;
;-------------------;

(setq ac-directory "~/.emacs.d/plugins/auto-complete")
(add-to-list 'load-path ac-directory)
(require 'auto-complete) 
;; (setq ac-dictionary-files (list (concat "~/.emacs.d/" ".dict")))
(add-to-list 'ac-dictionary-directories (concat ac-directory "ac-dict"))
(require 'auto-complete-config) 
(ac-config-default)
(global-auto-complete-mode 1)
;; hack to fix ac-sources after pycomplete.el breaks it
(add-hook 'python-mode-hook
          '(lambda ()
             (setq ac-sources '(ac-source-pycomplete
                                ac-source-abbrev
                                ac-source-dictionary
                                ac-source-words-in-same-mode-buffers))))

(provide 'auto-complete-settings)

;--------------------;
;;; User Interface ;;;
;--------------------;

; always use spaces, not tabs, when indenting
(setq-default indent-tabs-mode -1)
 
; ignore case when searching
(setq-default case-fold-search 1)

; require final newlines in files when they are saved
(setq require-final-newline 1)
; add a new line when going to the next line
(setq next-line-add-newlines t)

; window modifications
;; (global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
;; (global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
;; (global-set-key (kbd "S-C-<down>") 'shrink-window)
;; (global-set-key (kbd "S-C-<up>") 'enlarge-window)

; set the keybinding so that you can use f4 for goto line
(global-set-key [f4] 'goto-line)

; set command key to be meta instead of option
(if (system-is-mac)
    (setq ns-command-modifier 'meta))

; sane path
(setq path "/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin")
(setenv "PATH" path)

(provide 'ui-settings)

;---------;
;;; Org ;;;
;---------;

(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook 'turn-off-fci-mode)
(add-hook 'org-mode-hook 'turn-off-linum-mode)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Documents/todo.org" "Tasks")
             "* TODO %?\n Created on %U")
        ("j" "Journal" entry (file+datetree "~/Documents/journal.org")
             "* %?\nEntered on %U\n  %i\n  %a")
	
))

(global-set-key (kbd "C-c c") 'org-capture)

(provide 'org-settings)





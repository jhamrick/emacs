;---------------;
;;; Templates ;;;
;---------------;

(add-to-list 'load-path "~/.emacs.d/template-3.1c")
(require 'template)
(template-initialize)

(defun create-from-template (dir template)
  (interactive)
  (switch-to-buffer (ido-find-file-in-dir dir))
  (template-find-template template t)
  (template-new-file-0 nil))

(defun create-talk-notes ()
  (interactive)
  (create-from-template 
   "~/Dropbox/Notes/Talk Notes"
   "~/.templates/talk-template.org.tpl"))
(defun create-meeting-notes ()
  (interactive)
  (create-from-template 
   "~/Dropbox/Notes/Meeting Notes"
   "~/.templates/meeting-template.org.tpl"))

(global-set-key (kbd "C-c t") 'create-talk-notes)
(global-set-key (kbd "C-c m") 'create-meeting-notes)

(provide 'template-settings)


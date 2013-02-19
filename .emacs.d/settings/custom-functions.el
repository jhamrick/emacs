;----------------------;
;;; Custom Functions ;;;
;----------------------;

; unfill a paragraph, i.e., make it so the text does not wrap in the
; paragraph where the cursor is
(defun unfill-paragraph ()
  (interactive)
  (let ((fill-column (point-max)))
    (fill-paragraph nil)))

; unfill a region, i.e., make is so the text in that region does not
; wrap
(defun unfill-region ()
  (interactive)
  (let ((fill-column (point-max)))
    (fill-region (region-beginning) (region-end) nil)))

; uncomment a region
;; (defun uncomment-region (beg end &optional arg)
;;    (interactive "*r\np")
;;    (comment-region beg end (- arg)))

(defun system-is-mac ()
  (interactive)
  (string-equal system-type "darwin"))

(defun system-is-linux ()
  (interactive)
  (string-equal system-type "gnu/linux"))

; Send selected region to omnifocus
; From http://timprouty-tech.blogspot.com/2009/08/omnifocus-quick-entry-from-emacs.html
(defun omniQuickEntry (beg end)
  (interactive "r")
  ;; (message (buffer-substring beg end))
  (do-applescript (concat
"tell application \"OmniFocus\"
	tell quick entry
		open
		make new inbox task with properties {name:\""
(buffer-substring beg end) "\"}
		select {inbox task 1}
	end tell
end tell
tell application \"System Events\"
	tell process \"OmniFocus\"
		keystroke tab
	end tell
end tell")
		   ;; "tell front document of application \"OmniFocus\"
		   ;; 	tell quick entry
		   ;; 	    make new inbox task with properties {name:\""
		   ;; 	        (buffer-substring beg end) "\"}
		   ;; 	    activate
		   ;; 	    select {inbox task 1}
		   ;; 	end tell
		   ;;  end tell")
	))

(global-set-key "\C-c o" 'omniQuickEntry)


(provide 'custom-functions)

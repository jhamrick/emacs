;----------------------;
;;; Windows & Frames ;;;
;----------------------;

; language
(setq current-language-environment "English")

; don't show the startup screen
(setq inhibit-startup-screen 1)
; don't show the menu bar
(menu-bar-mode -1)
; don't show the tool bar
(require 'tool-bar)
(tool-bar-mode -1)
; don't show the scroll bar
(scroll-bar-mode -1)

; number of characters until the fill column 
(setq-default fill-column 70)

; specify the fringe width for windows -- this sets both the left and
; right fringes to 10
(require 'fringe)
;(fringe-mode 10)
(fringe-mode 0)

; lines which are exactly as wide as the window (not counting the
; final newline character) are not continued. Instead, when point is
; at the end of the line, the cursor appears in the right fringe.
(setq overflow-newline-into-fringe 1)

; each line of text gets one line on the screen (i.e., text will run
; off the left instead of wrapping around onto a new line)
(setq-default truncate-lines 1)
; truncate lines even in partial-width windows
(setq truncate-partial-width-windows 1)

; display line numbers to the right of the window
(global-linum-mode 1)
(setq linum-format " %d ") ; bug fix for Mac OS X
(defun turn-on-linum-mode () (linum-mode 1))
(defun turn-off-linum-mode () (linum-mode -1))
;(add-hook 'find-file-hook 'turn-on-linum-mode)
; show the current line and column numbers in the stats bar as well
(line-number-mode 1)
(column-number-mode 1)

; default window width and height
(defun custom-set-frame-size ()
  (add-to-list 'default-frame-alist '(height . 65))
  (add-to-list 'default-frame-alist '(width . 102)))
(custom-set-frame-size)
(add-hook 'before-make-frame-hook 'custom-set-frame-size)

(provide 'window-settings)

;------------;
;;; Cursor ;;;
;------------;

; highlight the current line
;; (add-to-list 'load-path "~/.emacs.d/highlight-current-line-0.57")
;; (require 'highlight-current-line)
;; (global-hl-line-mode 1)
;; (setq highlight-current-line-globally 1)
;; (setq highlight-current-line-high-faces -1)
;; (setq highlight-current-line-whole-line -1)
;; (setq hl-line-face (quote highlight))

; don't blink the cursor
(blink-cursor-mode -1)

; make sure transient mark mode is enabled (it should be by default,
; but just in case)
(transient-mark-mode 1)

; turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode 1)

(provide 'cursor-settings)

;------------;
;;; Cursor ;;;
;------------;

; don't blink the cursor
(blink-cursor-mode -1)

; make sure transient mark mode is enabled (it should be by default,
; but just in case)
(transient-mark-mode 1)

; turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode 1)

(provide 'cursor-settings)

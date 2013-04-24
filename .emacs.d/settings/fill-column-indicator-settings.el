;---------------------------;
;;; Fill Column Indicator ;;;
;---------------------------;

(include-plugin "fill-column-indicator")
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)
(defun turn-on-fci-mode () (fci-mode 1))
(defun turn-off-fci-mode () (fci-mode -1))
;(add-hook 'find-file-hooks 'turn-on-fci-mode)

(provide 'fill-column-indicator-settings)

;---------------------;
;;; MuMaMo / nxhtml ;;;
;---------------------;

(load (make-plugin-path "nxhtml/elisp/autostart.el"))
;; Workaround the annoying warnings:
;;    Warning (mumamo-per-buffer-local-vars):
;;    Already 'permanent-local t: buffer-file-name
(when (and (equal emacs-major-version 24)
           (equal emacs-minor-version 3))
  (eval-after-load "mumamo"
    '(setq mumamo-per-buffer-local-vars
           (delq 'buffer-file-name mumamo-per-buffer-local-vars))))

(provide 'mumamo-settings)

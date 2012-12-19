;-----------------;
;;; Color Theme ;;;
;-----------------;

; use the "Subtle Hacker" color theme as a base for the custom scheme
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global 1)
(color-theme-subtle-hacker)

;(set-fontset-font "fontset-default" 'ucs "dejavu sans mono-11")
;(set-default-font "DejaVu Sans Mono-11")
(set-default-font "-*-dejavu sans mono-medium-*-normal--0-0-0-0-m-0-*-*")

; make sure the frames have the dark background mode by default
(setq default-frame-alist (quote (
  (frame-background-mode . dark)
)))

(provide 'color-theme-settings)

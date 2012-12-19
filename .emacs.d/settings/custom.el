
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray2" :foreground "#FFF991" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "apple" :family "DejaVu_Sans_Mono"))))
 '(border ((t nil)))
 '(cursor ((t (:background "firebrick1" :foreground "black"))))
 '(ein:cell-input-area ((((class color) (background dark)) (:background "gray10"))))
 '(ein:cell-input-prompt ((t (:inherit header-line :background "gray20" :foreground "green" :box (:line-width 1 :color "white") :weight extra-bold))))
 '(ein:cell-output-prompt ((t (:inherit header-line :background "gray20" :foreground "red" :box (:line-width 1 :color "white") :weight extra-bold))))
 '(highlight ((t (:background "khaki1" :foreground "black" :box (:line-width -1 :color "firebrick1")))))
 '(lazy-highlight ((t (:background "paleturquoise" :foreground "black"))))
 '(mode-line ((t (:background "dark olive green" :foreground "dark blue" :box (:line-width -1 :color "gray75") :weight bold))))
 '(mode-line-buffer-id ((t (:background "dark olive green" :foreground "beige"))))
 '(mode-line-highlight ((((class color) (min-colors 88)) nil)))
 '(mode-line-inactive ((t (:background "dark olive green" :foreground "dark khaki" :weight light))))
 '(mouse ((t (:background "Grey" :foreground "black"))))
 '(trailing-whitespace ((((class color) (background dark)) (:background "firebrick1")))))

(require 'faces)
(set-face-attribute 'cursor nil
		    :background "firebrick1" 
		    :foreground "black")

(set-face-attribute 'font-lock-comment-face nil
		    :foreground "lime green")

(set-face-attribute 'font-lock-doc-face nil
		    :foreground "tomato" 
		    :slant 'italic)

(set-face-attribute 'font-lock-function-name-face nil
		    :foreground "deep sky blue" 
		    :underline t 
		    :weight 'bold)

(set-face-attribute 'font-lock-keyword-face nil
		    :foreground "gold" 
		    :weight 'bold)

(set-face-attribute 'font-lock-string-face nil
		    :foreground "tomato" 
		    :slant 'italic)

(set-face-attribute 'fringe nil
		    :background "black")

(set-face-attribute 'link nil
		    :foreground "DodgerBlue3" 
		    :underline t)

(set-face-attribute 'menu nil
		    :background "gray2" 
		    :foreground "#FFF991")

(set-face-attribute 'minibuffer-prompt nil
		    :foreground "royal blue")


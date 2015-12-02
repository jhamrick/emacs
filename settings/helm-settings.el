(require 'helm)
(require 'helm-descbinds)

(fset 'describe-bindings 'helm-descbinds)
(helm-mode 1)

(global-set-key (kbd "C-c h") 'helm-mini)

(provide 'helm-settings)

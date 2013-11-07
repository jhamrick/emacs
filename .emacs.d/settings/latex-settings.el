;-----------;
;;; LaTeX ;;;
;-----------;

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
(include-plugin "auctex")
(load "auctex.el" -1 1 1)
(load "preview-latex.el" -1 1 1)

(if (system-is-mac)
    (progn
      (require 'tex-site)
      (require 'font-latex)
      (setq TeX-view-program-list
	    (quote 
	     (("Skim" 
	       (concat "/Applications/Skim.app/Contents/SharedSupport/displayline"
		       " %n %o %b")))))
      (setq TeX-view-program-selection 
	    (quote (((output-dvi style-pstricks) "dvips and gv") 
		    (output-dvi "xdvi") 
		    (output-pdf "Skim")
		    (output-html "xdg-open")))))

  (if (system-is-linux)
      (setq TeX-view-program-selection 
	     (quote (((output-dvi style-pstricks) "dvips and gv") 
		     (output-dvi "xdvi") 
		     (output-pdf "evince")
		     (output-html "xdg-open"))))))

(provide 'latex-settings)

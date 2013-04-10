;------------------------;
;;; Python Programming ;;;
;------------------------;

; python-mode
(setq py-install-directory "~/.emacs.d/plugins/python-mode-6.1.1/")
(add-to-list 'load-path py-install-directory)
(require 'python-mode) 

; use IPython
(setq-default py-shell-name "/usr/local/bin/ipython")
(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
(setq-default py-python-command-args
	      (if (system-is-mac)
		  '("--gui=osx" "--pylab=osx" "--colors" "Linux")
		(if (system-is-linux)
		    '("--gui=wx" "--pylab=wx" "--colors" "Linux")
		  '())))
(setq py-force-py-shell-name-p 1)

; switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p 1)
(setq py-switch-buffers-on-execute-p 1)
; don't split windows
(setq py-split-windows-on-execute-p -1)
; try to automagically figure out indentation
(setq py-indent-honors-inline-comment 1)
;; ;(setq py-indent-honors-inline-comment -1)
(setq-default py-smart-indentation 1)

(defun load-pycomplete ()
  "Load and initialize pycomplete."
  (interactive)
  (let* ((pyshell (py-choose-shell))
         (path (getenv "PYTHONPATH")))
    (setenv "PYTHONPATH" (concat
                          (expand-file-name py-install-directory) "completion"
                          (if path (concat path-separator path))))
    (if (py-install-directory-check)
        (progn
          (setenv "PYMACS_PYTHON" (if (string-match "IP" pyshell)
                                      "python"
                                    pyshell))
          (autoload 'pymacs-apply "pymacs")
          (autoload 'pymacs-call "pymacs")
          (autoload 'pymacs-eval "pymacs")
          (autoload 'pymacs-exec "pymacs")
          (autoload 'pymacs-load "pymacs")
          (load (concat py-install-directory "completion/pycomplete.el") nil t)
	  (add-hook 'python-mode-hook 'py-complete-initialize))
      (error "`py-install-directory' not set, see INSTALL"))))

; pymacs
(defun setup-pymacs ()
  (interactive)
  (add-to-list 'load-path "~/.emacs.d/plugins/pymacs")
  (autoload 'pymacs-apply "pymacs")
  (autoload 'pymacs-call "pymacs")
  (autoload 'pymacs-eval "pymacs" -1 1)
  (autoload 'pymacs-exec "pymacs" -1 1)
  (autoload 'pymacs-load "pymacs" -1 1)
  (autoload 'pymacs-autoload "pymacs")
  (setq py-load-pymacs-p 1)
  (setq py-complete-set-keymap-p 1))

;; activate the virtualenv where Pymacs is located
(virtualenv-workon "default/")
(eval-after-load 'pymacs '(load-pycomplete))
(setup-pymacs)
(require 'pymacs)

;; pyflakes flymake integration
;; http://stackoverflow.com/a/1257306/347942
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "~/bin/pycheckers" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))
(add-hook 'python-mode-hook 'flymake-mode)

; use autocompletion, but don't start to autocomplete after a dot
(setq ein:complete-on-dot -1)
(setq ein:use-auto-complete 1)

; set python console args
(setq ein:console-args
      (if (system-is-mac)
	  '("--profile nbserver" "--gui=osx" "--pylab=osx" "--colors" "Linux")
	(if (system-is-linux)
	    '("--profile nbserver" "--gui=wx" "--pylab=wx" "--colors" "Linux"))))

; timeout settings
(setq ein:query-timeout 1000)

; IPython notebook
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-ipython-notebook/lisp")
(require 'ein)

; shortcut function to load notebooklist
(defun load-ein () 
  (ein:notebooklist-load)
  (interactive)
  (ein:notebooklist-open))

; Set PYTHONPATH, because we don't load .bashrc
(setenv "PYTHONPATH"
 (concat 
  "/Users/jhamrick/project/pyutil/src:"
  "/Users/jhamrick/project/pystoch/src:"
  "/Users/jhamrick/project/gutenbach/server/lib:"
  "/Users/jhamrick/project/cogphysics/dev/code:"
  "/Developer/Panda3D/lib/:"
  "/usr/local/lib/python2.7/site-packages:"))

(provide 'python-settings)


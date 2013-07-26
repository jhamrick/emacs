# Emacs Configuration

Jessica Hamrick  
jhamrick@berkeley.edu

**Version**: GNU Emacs 24.3.1 (x86_64-apple-darwin12.4.0, NS apple-appkit-1187.39) of 2013-06-27

To install the plugins that are include as submodules, you will need
to run `git submodule init; git submodule update`.

## Emacs plugins

The following plugins are required for this configuration. Each plugin
lists the other included plugins that it depends on.

### Included as submodules

* [Auto Complete](https://github.com/auto-complete/auto-complete) (`.emacs.d/plugins/auto-complete`)
    * Autopair
	* Popup
* [Autopair](https://github.com/capitaomorte/autopair) (`.emacs.d/plugins/autopair`)
* [Solarized Color Theme](https://github.com/sellout/emacs-color-theme-solarized) (`.emacs.d/plugins/color-theme-solarized`)
* [Table Component](https://github.com/kiwanami/emacs-ctable) (`.emacs.d/plugins/ctable`)
* [Deferred](https://github.com/kiwanami/emacs-deferred) (`.emacs.d/plugins/deferred`)
* [Emacs IPython Notebook](https://github.com/tkf/emacs-ipython-notebook) (`.emacs.d/plugins/emacs-ipython-notebook`)
    * Auto Complete
	* Jedi
	* Markdown Mode
	* MuMaMo (nxhtml)
	* Request
	* Websocket
* [EPC](https://github.com/kiwanami/emacs-epc) (`.emacs.d/plugins/epc`)
    * Table Component
	* Deferred
* [Jedi](https://github.com/tkf/emacs-jedi) (`.emacs.d/plugins/jedi`)
	* Auto Complete
	* Deferred
    * EPC
* [Magit](https://github.com/magit/magit) (`.emacs.d/plugins/magit`)
* [Markdown Mode](http://jblevins.org/projects/markdown-mode/) (`.emacs.d/plugins/markdown-mode`)
* [nxhtml](https://github.com/emacsmirror/nxhtml) (`.emacs.d/plugins/nxhtml`)
* [Popup](https://github.com/auto-complete/popup-el) (`.emacs.d/plugins/popup`)
* [Request](https://github.com/tkf/emacs-request) (`.emacs.d/plugins/request`)
    * Deferred
* [SCSS Mode](https://github.com/antonj/scss-mode/) (`.emacs.d/plugins/scss-mode`)
* [Websocket](https://github.com/ahyatt/emacs-websocket) (`.emacs.d/plugins/websocket`)

### Manual install

* [AUCTex 11.87](http://www.gnu.org/software/auctex/download.html) (`.emacs.d/plugins/auctex`)
* [Pydoc Info 0.2](https://bitbucket.org/jonwaltman/pydoc-info) (`.emacs.d/plugins/pydoc-info-0.2`)
* [MATLAB CVS version 2013-04-02](http://matlab-emacs.sourceforge.net/) (`.emacs.d/plugins/matlab`)

## Non-Emacs dependencies

* Python 2.7.4
* IPython 1.0dev

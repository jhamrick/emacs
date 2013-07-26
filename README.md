# Emacs Configuration

Jessica Hamrick  
jhamrick@berkeley.edu

**Version**: GNU Emacs 24.3.1 (x86_64-apple-darwin12.4.0, NS apple-appkit-1187.39) of 2013-06-27

## Emacs plugins

The following plugins are required for this configuration. Each plugin
lists the other included plugins that it depends on.

### Included as submodules

To install these plugins that are include as submodules, you will need
to run `git submodule init; git submodule update`.

* [Solarized Color Theme](https://github.com/sellout/emacs-color-theme-solarized) (`.emacs.d/plugins/color-theme-solarized`)
* [el-get](https://github.com/dimitri/el-get) (`.emacs.d/plugins/el-get`)
* [Emacs IPython Notebook](https://github.com/tkf/emacs-ipython-notebook) (`.emacs.d/plugins/emacs-ipython-notebook`)
	* Jedi
	* Markdown Mode
	* MuMaMo (nxhtml)
	* Request
	* Websocket
* [Magit](https://github.com/magit/magit) (`.emacs.d/plugins/magit`)
* [Markdown Mode](http://jblevins.org/projects/markdown-mode/) (`.emacs.d/plugins/markdown-mode`)
* [nxhtml](https://github.com/emacsmirror/nxhtml) (`.emacs.d/plugins/nxhtml`)
* [Request](https://github.com/tkf/emacs-request) (`.emacs.d/plugins/request`)
* [SCSS Mode](https://github.com/antonj/scss-mode/) (`.emacs.d/plugins/scss-mode`)
* [Websocket](https://github.com/ahyatt/emacs-websocket) (`.emacs.d/plugins/websocket`)

### Install using el-get

These plugins should be installed using `el-get` (which is included as
a submodule). To install these, open emacs and run `M-x el-get-install
<plugin>`.

* [Auto Complete](https://github.com/auto-complete/auto-complete)
* [Jedi](https://github.com/tkf/emacs-jedi)
* [Popup](https://github.com/auto-complete/popup-el)

### Manual install

These plugins must be manually downloaded and saved to the path
indicated in the parentheses.

* [AUCTex 11.87](http://www.gnu.org/software/auctex/download.html) (`.emacs.d/plugins/auctex`)
* [Pydoc Info 0.2](https://bitbucket.org/jonwaltman/pydoc-info) (`.emacs.d/plugins/pydoc-info-0.2`)
* [MATLAB CVS version 2013-04-02](http://matlab-emacs.sourceforge.net/) (`.emacs.d/plugins/matlab`)

## Non-Emacs dependencies

* Python 2.7.4
* IPython 1.0dev

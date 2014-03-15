# Emacs Configuration

Jessica Hamrick  
jhamrick@berkeley.edu

**Version**: GNU Emacs 24.3.1 (x86_64-apple-darwin12.4.0, NS apple-appkit-1187.39) of 2013-08-22

## Installing

Clone this repository, and then run the `bootstrap.sh` script. This
will copy all of the necessary files to `~/.emacs` and
`~/.emacs.d`. Note that if these files exist for you already, **this
will overwrite those files**.

One you have run the bootstrap script, start Emacs (make sure you are
connected to the internet when you do this for the first time). It
will install [`el-get`](https://github.com/dimitri/el-get) and all of
the other plugins listed in the next section. This initial
installation may take a while, so be patient.

## Dependencies

For some of the plugins to work, you will need to have some external
dependencies installed, such as Python, IPython, git, etc. If the
installation gives you an error, it might mean you are missing a
required dependency that el-get doesn't install.

## Emacs plugins

This configuration installs several plugins using
[`el-get`](https://github.com/dimitri/el-get). These plugins are
specified in `.emacs.d/settings/el-get-settings.el`, and are also
listed below:

* `auctex` -- LaTeX plugin
* `ein` -- [IPython notebook](http://ipython.org/notebook) plugin
* `jedi` -- general Python support
* `pydoc-info` -- Python documentation
* `auto-complete` -- auto completion
* `popup` -- visual popup (e.g., for auto completion)
* `color-theme-solarized` -- the [solarized](http://ethanschoonover.com/solarized) color theme
* `magit` -- git plugin
* `markdown-mode` -- support for [Markdown](http://daringfireball.net/projects/markdown/) files
* `matlab-mode` -- support Matlab files
* `nxhtml` (MuMaMo)
* `scss-mode` -- support for [SCSS](http://sass-lang.com/) files
* `nyan-mode` -- silly mode that renders a nyan cat to display how far
  you are through a file

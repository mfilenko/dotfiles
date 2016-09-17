(require 'package) ; load the built-in package manager

; add popular package repositories to the list of the available repositories
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(tool-bar-mode -1)   ; disable toolbar with buttons
(scroll-bar-mode -1) ; disable vertical scroll bar
(menu-bar-mode -1)   ; disable menu bar

(setq make-backup-files nil)      ; do not back up files
(setq tramp-default-method "ssh") ; faster than the default `scp`
(require 'package) ; load the built-in package manager

; add popular package repositories to the list of the available repositories
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize) ; intialize packages as early as possible

(tool-bar-mode -1)   ; disable toolbar with buttons
(scroll-bar-mode -1) ; disable vertical scroll bar
(menu-bar-mode -1)   ; disable menu bar

(add-to-list 'default-frame-alist '(fullscreen . maximized)) ; maximize all frames

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . light))

(custom-set-variables
 '(inhibit-startup-screen t)                              ; do not inhibit the startup screen
 '(initial-scratch-message nil))                          ; display empty message in *scratch* buffer at startup

(setq ns-use-proxy-icon nil)
(setq frame-title-format nil)

(setq make-backup-files nil)      ; do not back up files
(setq tramp-default-method "ssh") ; faster than the default `scp`

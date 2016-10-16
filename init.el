;; initialize
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
         '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; load configurations
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/config.el")

(add-to-list 'load-path "~/.emacs.d/customizations")
(load "editing.el")
(load "elisp-editing.el")
(load "navigation.el")
(load "setup-clojure.el")
(load "setup-js.el")
(load "ui.el")

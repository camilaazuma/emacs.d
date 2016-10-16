;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; Sets up exec-path-from shell
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs
   '("PATH")))

;; twitter configuration
 (require 'twittering-mode)
 (add-to-list 'load-path "~/.emacs.d/elpa/twitter-20090422/")
 (autoload 'twitter-get-friends-timeline "twitter" nil t)
 (autoload 'twitter-status-edit "twitter" nil t)
 (global-set-key "\C-xt" 'twitter-get-friends-timeline)
 (add-hook 'twitter-status-edit-mode-hook 'longlines-mode)
 (setq twittering-use-master-password t)

;; delimitadores coloridos
(require 'rainbow-delimiters)
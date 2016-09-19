;;
;; custom packages
;;

;; js-comint
(require 'js-comint)
(setq inferior-js-program-command "/usr/bin/java org.mozilla.javascript.tools.shell.Main")
(add-hook 'js2-mode-hook '(lambda () 
			    (local-set-key "\C-x\C-e" 'js-send-last-sexp)
			    (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
			    (local-set-key "\C-cb" 'js-send-buffer)
			    (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
			    (local-set-key "\C-cl" 'js-load-file-and-go)
			    ))

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

;; Comment out if you've already loaded this package...
(require 'cl)

	(defvar my-packages
	'(auctex
		clojure-mode
		clojure-mode-extra-font-locking ;; extra syntax highlighting for clojure
		cider ;; integration with a Clojure REPL
	    ido-ubiquitous ;; allow ido usage in as many contexts as possible.
	    smex ;; Enhances M-x to allow easier execution of commands. Provides a filterable list of possible commands in the minibuffer
	    projectile ;; project navigation
	    rainbow-delimiters ;; colorful parenthesis matching
	    tagedit ;; edit html tags like sexps
	    twittering-mode
	    oauth2
		deft
		expand-region
		gist
		groovy-mode 
		haml-mode 
		inf-ruby
		js-comint
		magit ;; git integration
		magithub 
		markdown-mode
		paredit 
		python
		sass-mode 
		rainbow-mode 
		scss-mode 
		solarized-theme
		volatile-highlights 
		yaml-mode 
		yari
		zenburn-theme
	))


(defun my-packages-installed-p ()
  (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (package-refresh-contents)
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))
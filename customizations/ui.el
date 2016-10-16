;; change startup screen
(setq inhibit-startup-screen t)

;; disable ring bell
(setq visible-bell 1)

;; no bell
(setq ring-bell-function 'ignore)

;; Turn off the menu bar at the top of each frame
(menu-bar-mode -1)

;; Show line numbers
(global-linum-mode)

;; remove toolbar
 (when (fboundp 'tool-bar-mode)
   (tool-bar-mode -1))

;; remove scrollbar
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Color Themes
(load-theme 'zenburn t)

;; increase font size for better readability
(set-face-attribute 'default nil :height 140)

;; set the width (in characters wide) and height
;; (in lines high) Emacs will have whenever you start it
;; (setq initial-frame-alist '((top . 0) (left . 0) (width . 177) (height . 53)))

;; These settings relate to how emacs interacts with your operating system
(setq ;; makes killing/yanking interact with the clipboard
      x-select-enable-clipboard t

      ;; I'm actually not sure what this does but it's recommended?
      x-select-enable-primary t

      ;; Save clipboard strings into kill ring before replacing them.
      ;; When one selects something in another program to paste it into Emacs,
      ;; but kills something in Emacs before actually pasting it,
      ;; this selection is gone unless this variable is non-nil
      save-interprogram-paste-before-kill t

      apropos-do-all t

      ;; Mouse yank commands yank at point instead of at click.
      mouse-yank-at-point t)

;; No cursor blinking
(blink-cursor-mode 0)

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

;; don't pop up font menu
(global-set-key (kbd "s-t") '(lambda () (interactive)))

;; resize window kbd
(global-set-key (kbd "C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-<down>") 'shrink-window)
(global-set-key (kbd "C-<up>") 'enlarge-window)

;; move windows kbd
(global-set-key (kbd "M-<left>") 'windmove-left)
(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)

;; start linum mode
(setq linum-format "%4d ")
(add-hook 'prog-mode-hook 'linum-mode)

;; truncate-lines
(set-default 'truncate-lines t)

;; bind "-" on dired
(add-hook 'dired-mode-hook
     (lambda ()
       (define-key dired-mode-map (kbd "-")
         (lambda () (interactive) (find-alternate-file "..")))))
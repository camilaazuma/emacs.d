;;; emojify-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (emojify-insert-emoji emojify-apropos-emoji global-emojify-mode
;;;;;;  emojify-mode emojify-set-emoji-styles) "emojify" "emojify.el"
;;;;;;  (22495 11358 82120 272000))
;;; Generated autoloads from emojify.el

(autoload 'emojify-set-emoji-styles "emojify" "\
Set the type of emojis that should be displayed.

STYLES is the styles emoji styles that should be used, see `emojify-emoji-styles'

\(fn STYLES)" nil nil)

(autoload 'emojify-mode "emojify" "\
Emojify mode

\(fn &optional ARG)" t nil)

(defvar global-emojify-mode nil "\
Non-nil if Global-Emojify mode is enabled.
See the command `global-emojify-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-emojify-mode'.")

(custom-autoload 'global-emojify-mode "emojify" nil)

(autoload 'global-emojify-mode "emojify" "\
Toggle Emojify mode in all buffers.
With prefix ARG, enable Global-Emojify mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Emojify mode is enabled in all buffers where
`emojify-mode' would do it.
See `emojify-mode' for more information on Emojify mode.

\(fn &optional ARG)" t nil)

(autoload 'emojify-apropos-emoji "emojify" "\
Show Emojis that match PATTERN.

\(fn PATTERN)" t nil)

(autoload 'emojify-insert-emoji "emojify" "\
Interactively prompt for Emojis and insert them in the current buffer.

This respects the `emojify-emoji-styles' variable.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("emojify-pkg.el") (22495 11358 89623 688000))

;;;***

(provide 'emojify-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; emojify-autoloads.el ends here

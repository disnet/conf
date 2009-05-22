; nice color themes
(color-theme-initialize)
(color-theme-comidia)

; remove toolbar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
; transperency eye-canday
(set-frame-parameter nil 'alpha 95)
(add-to-list 'default-frame-alist '(alpha . (90 70)))
(setq frame-alpha-lower-limit 20)

; viper/vimpulse settings
(add-hook 'emacs-startup-hook 'viper-mode)
(setq viper-ex-style-editing nil)
(setq woman-use-own-frame nil)
(setq woman-use-topic-at-point t)

; Selection is copied to clipboard
(setq x-select-enable-clipboard t)

; Not sure what this does...apparently was trying to do something with ssh
;(setq tramp-default-method "ssh")

;; Setup org mode -- Not using so commented out
;(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;(global-set-key "\C-cl" 'org-store-link)
;(global-set-key "\C-ca" 'org-agenda)
;(add-hook 'org-mode-hook 'turn-on-font-lock)

(setq anything-sources
      '(anything-c-source-buffers
	anything-c-source-file-name-history
	anything-c-source-files-in-current-dir
	anything-c-source-locate
	anything-c-source-man-pages
	anything-c-source-info-pages
	anything-c-source-info-elisp
	anything-c-source-emacs-commands
	anything-c-source-emacs-functions
	anything-c-source-emacs-variables
	anything-c-source-bookmarks
	anything-c-source-ctags))

(desktop-save-mode 1)

(shell)

; Setup auto-load
;(require 'auto-install)
;(setq auto-install-directory "~/emacs/auto-install/")


;; (setenv "PATH" (concat (getenv "PATH") ":/usr/texbin"))
;; (setq exec-path (append exec-path'("/usr/texbin")))
;(require 'icicles)

; latex settings
;; (load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq-default TeT-master nil)
;; ;(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
;; (add-hook 'LaTeX-mode-hook 'flyspell-mode)
;; (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; (setq reftex-plug-into-AUCTeX t)
;; (setq TeX-PDF-mode t)

;; (require 'linum)
;(global-linum-mode 1)

;; (require 'vimpulse)
;; (setq viper-ex-style-editing nil)

;; (require 'anything-config)

;(require 'malyon)
;(require 'bookmark+)

; js mode
;; (autoload 'js2-mode "js2" nil t)
;; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


(require 'scala-mode-auto)

(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-to-list 'load-path "~/usr/ensime/elisp/")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

; required by slime/ccl
;(set-language-environment "utf-8")
;(setq inferior-lisp-program "/Users/tim/usr/bin/ccl -K utf-8")
;(require 'slime)
;(setq slime-net-coding-system 'utf-8-unix)
;(slime-setup '(slime-fancy))

(load-file "~/dev/posterous.el/posterous.el")
(require 'posterous)

;; ; bookmarks+
;; (require 'bookmark+)

; new org mode
;; (setq load-path (cons "~/usr/org/lisp" load-path))
;; (setq load-path (cons "~/usr/org/contrib/lisp" load-path))
;; (require 'org-install)

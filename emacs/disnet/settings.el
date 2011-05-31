; nice color themes
;; (require 'color-theme)
;; (color-theme-initialize)
;; (require 'color-theme-tangotango)
;; (color-theme-tangotango)

; remove toolbar
;; (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
; transperency eye-canday
;(set-frame-parameter nil 'alpha 100)
;(add-to-list 'default-frame-alist '(alpha . (90 70)))
;(setq frame-alpha-lower-limit 20)

;(icy-mode 1)



;(setq woman-use-own-frame nil)
;(setq woman-use-topic-at-point t)

; Selection is copied to clipboard
;(setq x-select-enable-clipboard t)



; Not sure what this does...apparently was trying to do something with ssh
;(setq tramp-default-method "ssh")

;; Setup org mode -- Not using so commented out
;(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;(global-set-key "\C-cl" 'org-store-link)
;(global-set-key "\C-ca" 'org-agenda)
;(add-hook 'org-mode-hook 'turn-on-font-lock)

;; (setq anything-sources
;;       '(anything-c-source-buffers
;;         anything-c-source-file-name-history
;;         anything-c-source-files-in-current-dir
;;         anything-c-source-locate
;;         anything-c-source-man-pages
;;         anything-c-source-info-pages
;;         anything-c-source-info-elisp
;;         anything-c-source-emacs-commands
;;         anything-c-source-emacs-functions
;;         anything-c-source-emacs-variables
;;         anything-c-source-bookmarks
;;         anything-c-source-ctags))

; (desktop-save-mode 1)

;; (setq compile-command "make -k")

; (require 'quack)

; (setenv "PATH" (concat (getenv "PATH") ":/Users/tim/usr/scheme/bin")) (setq exec-path (append exec-path '("/Users/tim/usr/scheme/bin")))


; smoth scrolling
;; (setq mouse-wheel-scroll-amount '(3 ((shift) . 3)))
;; (setq mouse-wheel-progressive-speed nil)
;; (setq mouse-wheel-follow-mouse 't)
;; (setq scroll-step 3)

;; (setq ring-bell-function 'ignore)

;; (setq-default indent-tabs-mode nil)


; posterous settings
(setq posterous-email "tim.disney@gmail.com")
(setq posterous-password "tdisney07")
(setq posterous-default-siteid "1979950")


; markdown settings
(autoload 'markdown-mode "markdown-mode.el" 
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.mkd" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.markdown" . auto-fill-mode) auto-mode-alist))


; for smex
;(require 'smex)
;(smex-initialize)

; for org and remember

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(setq org-directory "~/dev/org/")
(setq org-default-notes-file (concat org-directory "default.org"))
 (setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/dev/org/gtd.org" "Tasks")
             "* TODO %?\n  %i\n")
        ("j" "Journal" entry (file+datetree "~/dev/org/journal.org")
             "* %?\nEntered on %U\n  %i\n")
        ("q" "Quote" entry (file+datetree "~/dev/org/journal.org")
             "* %? :QUOTE:\nEntered on %U\n  %i\n")
        ("b" "Book" entry (file+datetree "~/dev/org/journal.org")
             "* %? :BOOK:\n %[~/.book_template.txt]\nEntered on %U\n  %i\n")))
;(setq org-remember-templates
;      '(("t" "Todo" entry (file+headline "~/dev/org/gtd.org" "Tasks")
;             "* TODO %?\n  %i\n  %a")
;        ("j" "Journal" entry (file+datetree "~/dev/org/journal.org")
;             "* %?\nEntered on %U\n  %i\n  %a")))

;(setq org-remember-templates
;    '(("Todo" ?t "* TODO %^{Brief Description} %^g\n%?\nAdded: %U" "~/dev/org/gtd.org" "Tasks")
;      ("Journal"   ?j "** %^{Head Line} %U %^g\n%i%?"  "~/dev/org/journal.org")
;      ("Book" ?b "** %^{Book Title} %t :BOOK: \n%[~/.book_template.txt]\n" 
;         "~/dev/org/journal.org")
;      ("Film" ?f "** %^{Film Title} %t :FILM: \n%[~/.film_template.txt]\n" 
;         "~/dev/org/journal.org")
;      ("Someday"   ?s "** %^{Someday Heading} %U\n%?\n"  "~/dev/org/someday.org")))

;; (setq TeX-master nil)

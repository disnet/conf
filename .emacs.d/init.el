(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(setenv "NODE_DISABLE_COLORS" "true")

(setenv "PATH"
        (concat
         "/usr/texbin"  ":" 
         "/usr/local/bin" ":"
         (getenv "PATH")))


(setq exec-path
         '("/opt/local/bin"
           "/Users/tim/usr/bin" 
           "/Users/tim/usr/node/bin" 
           "/Users/tim/.cabal/bin"
           "/Users/tim/node_modules/.bin"
           "/Users/tim/usr/Racket v5.1.1/bin"
           "/usr/texbin" 
           "/bin"
           "/usr/local/bin"
           "/usr/bin"
           "/usr/local/git/bin"))

(load-file "~/.emacs.d/custom/keymap.el")

 (when (not package-archive-contents)
  (package-refresh-contents))


(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-eshell
                                  starter-kit-bindings starter-kit-js
                                  starter-kit-ruby
                                  haskell-mode
                                  coffee-mode full-ack markdown-mode
                                  col-highlight hl-line+ crosshairs
                                  auctex
                                  magit
                                  bookmark+
                                  expand-region
                                  flymake
                                  deft
                                  anything anything-config anything-match-plugin))
 
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))



(server-start)

(setq load-path (cons "~/.emacs.d/custom/" load-path))
(setq load-path (cons "~/.emacs.d/custom/evil" load-path))
(setq load-path (cons "~/.emacs.d/custom/jekyll.el" load-path))

(setq custom-theme-load-path (cons "~/emacs/emacs-color-theme-solarized/" custom-theme-load-path))

(setq mac-command-key-is-meta 1)
(setq mac-command-modifier 'meta)

(require 'undo-tree)
(require 'evil)
(require 'deft)
(require 'jekyll)

(require 'couchdb-document)


(setq jekyll-directory "~/disnet.github.com/")
(setq jekyll-post-template
      "---\ntitle: %s\nlayout: post\n---")
(evil-mode 1)

(setq-default tab-width 4)

(defun coffee-custom ()
  "coffee-mode-hook"
  (imenu-add-menubar-index)
  (setq coffee-args-compile '("-c" "--contracts"))
  (and (file-exists-p (buffer-file-name))
       (file-exists-p (coffee-compiled-file-name))
       (coffee-cos-mode t))
  (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
          '(lambda () (coffee-custom)))

;; (add-hook 'coffee-mode-hook
;;           'imenu-add-menubar-index)

(require 'dired+)

(menu-bar-mode)
(require 'bookmark+)
(require 'expand-region)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t)

(require 'flymake)
(require 'org-install)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))

(require 'org-latex)
(unless (boundp 'org-export-latex-classes)
  (setq org-export-latex-classes nil)) (add-to-list 'org-export-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")))

(setq ispell-program-name "aspell")
(setq ispell-dictionary "english")

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'deft-mode-hook 'flyspell-mode)
(add-hook 'deft-mode-hook 'flyspell-buffer)

(setq auto-mode-alist
      (cons '("\\.markdown" . markdown-mode) auto-mode-alist))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(couchdb-document-host "localhost")
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(save-place t nil (saveplace))
 '(save-place-file "~/.emacs.d/places")
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setenv "PATH"
        (concat
         "/opt/local/bin" ":"
         "/Users/work/usr/bin"  ":"
         "/usr/texbin"  ":" 
         "/usr/bin"  ":" 
         "/Users/work/.cabal/bin"  ":" 
         "/Users/work/usr/node/bin" ":"
         "/usr/local/git/bin" ":"
         (getenv "PATH")))

(setq exec-path
         '("/opt/local/bin"
           "/Users/work/usr/bin" 
           "/Users/work/usr/node/bin" 
           "/Users/work/.cabal/bin"
           "/usr/texbin" 
           "/usr/bin"
           "/usr/local/git/bin"))

(setq load-path (cons "~/emacs" load-path))
;(setq load-path (cons "~/dev/vimpulse"))
(setq load-path (cons "~/emacs/color-theme" load-path))
(setq load-path (cons "~/emacs/scala-mode" load-path))
(setq load-path (cons "~/emacs/snippets" load-path))
(setq load-path (cons "/usr/share/emacs/site-lisp/" load-path))
(setq load-path (cons "~/.cabal/share/scion-0.2.0.2/emacs" load-path))
;(setq load-path (cons "~/emacs/auto-install" load-path))

(autoload 'flyspell-mode "flyspell" "On-thefly spelling checker." t)
(autoload 'flyspell-delay-command "flyspell" "Delay on command." t)
(autoload 'tex-mode-flyspell-verify "flyspell" "" t)


; latex settings
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq-default TeT-master nil)
;; ;(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
;; (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; (setq reftex-plug-into-AUCTeX t)
;; (setq TeX-PDF-mode t)

;(load-file "~/emacs/disnet/load.el")
;(load-file "~/emacs/disnet/commands.el")
;(load-file "~/emacs/disnet/settings.el")

;;;; Temp...goto settings or somesuch ;;;;;
(require 'vimpulse)
(require 'icicles)
(require 'anything-config)
(require 'autopair)
(require 'breadcrumb)

(require 'color-theme)
(color-theme-initialize)
;(require 'color-theme-tangotango)
;(color-theme-tangotango)

(load-file "~/emacs/color-theme-solarized.el")
(color-theme-solarized-dark)
(load-file "~/emacs/disnet/keymap.el")

;(require 'setnu+)

(fset 'yes-or-no-p 'y-or-n-p)

(icy-mode 1)

;(global-linum-mode 1)

;(desktop-save-mode 1)
;(setq desktop-path '("~/emacs/desktop"))
;(setq desktop-dirname "~/emacs/desktop")
;(setq desktop-base-file-name "emacs-desktop")

;; Anything settings
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

;; LaTeX settings
(setq TeX-auto-save t) 
(setq TeX-parse-self t)
;(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode) ; always check spelling
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)  ; easily add math symbols
(add-hook 'LaTeX-mode-hook 'turn-on-reftex) ; easily deal with references
(setq reftex-plug-into-AUCTeX t)
(setq TeX-PDF-mode t) ; we're compiling pdfs by default


(setq ring-bell-function 'ignore)

(setq-default indent-tabs-mode nil) ; never insert tabs

;; Org mode
(setq load-path (cons "~/usr/org/lisp" load-path))
(setq load-path (cons "~/usr/org/contrib/lisp" load-path))
(require 'org-install)

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



;; Scala
(require 'scala-mode-auto)

(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-to-list 'load-path "~/usr/ensime/elisp/")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
(require 'magit)
(require 'magit-svn)

;; YASnippets
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/emacs/snippets")

;; Viper settings
(setq-default viper-auto-indent 1)

;; Python settings
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)

(require 'python)

(require 'moz)

(require 'pabbrev)

;; remove viper from moz mode
(add-to-list 'viper-emacs-state-mode-list 'inferior-moz-mode)
(add-to-list 'viper-emacs-state-mode-list 'inferior-haskell-mode)

(add-hook 'inferior-moz-mode-hook '(lambda () (pabbrev-mode)))

(setq js-indent-level 2)

;; mozRepl
;(add-to-list 'auto-mode-alist '("\\.js$" . pabbrev-mode))
(autoload 'inferior-moz-mode "moz" "MozRepl Inferior Mode" t)
(autoload 'moz-minor-mode "moz" "MozRepl Minor Mode" t)
(add-hook 'js-mode-hook 'javascript-moz-setup)
(defun javascript-moz-setup ()
  (moz-minor-mode 1)
  (pabbrev-mode))

(require 'flymake-jslint)
(lintnode-start)
;(add-hook 'js-mode-hook
;          (lambda () (flymake-mode t)))


(require 'rainbow-mode)

;;; Frame and windows stuff ;;;;

; allow window config undo
(when (fboundp 'winner-mode)
  (winner-mode 1))

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(require 'buffer-move)
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

(require 'tiling)
;; ;;; Windows related operations
;; ;; Split & Resize
(define-key global-map (kbd "C-x |") 'split-window-horizontally)
(define-key global-map (kbd "C-x _") 'split-window-vertically)
(define-key global-map (kbd "C-{") 'shrink-window-horizontally)
(define-key global-map (kbd "C-}") 'enlarge-window-horizontally)
(define-key global-map (kbd "C-^") 'enlarge-window)
;; ;; Navgating: Windmove uses C-<up> etc.
;; (define-key global-map (kbd "C-<up>"   ) 'windmove-up)
;; (define-key global-map (kbd "C-<down>" ) 'windmove-down)
;; (define-key global-map (kbd "C-<right>") 'windmove-right)
;; (define-key global-map (kbd "C-<left>" ) 'windmove-left)
;; ;; Swap buffers: M-<up> etc.
;; (define-key global-map (kbd "M-<up>"   ) 'buf-move-up)
;; (define-key global-map (kbd "M-<down>" ) 'buf-move-down)
;; (define-key global-map (kbd "M-<right>") 'buf-move-right)
;; (define-key global-map (kbd "M-<left>" ) 'buf-move-left)
;; ;; Tile
(define-key global-map (kbd "C-\\") 'tiling-cycle) ; accepts prefix number
(define-key global-map (kbd "C-M-<up>") 'tiling-tile-up)
(define-key global-map (kbd "C-M-<down>") 'tiling-tile-down)
(define-key global-map (kbd "C-M-<right>") 'tiling-tile-right)
(define-key global-map (kbd "C-M-<left>") 'tiling-tile-left)
;; ;; Another type of representation of same keys, in case your terminal doesn't
;; ;; recognize above key-binding. Tip: C-h k C-up etc. to see into what your
;; ;; terminal tranlated the key sequence.
;; (define-key global-map (kbd "M-[ a"     ) 'windmove-up)
;; (define-key global-map (kbd "M-[ b"     ) 'windmove-down)
;; (define-key global-map (kbd "M-[ c"     ) 'windmove-right)
;; (define-key global-map (kbd "M-[ d"     ) 'windmove-left)
;; (define-key global-map (kbd "ESC <up>"   ) 'buf-move-up)
;; (define-key global-map (kbd "ESC <down>" ) 'buf-move-down)
;; (define-key global-map (kbd "ESC <right>") 'buf-move-right)
;; (define-key global-map (kbd "ESC <left>" ) 'buf-move-left)
;; (define-key global-map (kbd "ESC M-[ a" ) 'tiling-tile-up)
;; (define-key global-map (kbd "ESC M-[ b" ) 'tiling-tile-down)
;; (define-key global-map (kbd "ESC M-[ c" ) 'tiling-tile-right)
;; (define-key global-map (kbd "ESC M-[ d" ) 'tiling-tile-left)



;;; Haskell mode
(load "~/emacs/haskell-mode/haskell-site-file")
(require 'scion)
(defun my-haskell-hook ()
  (scion-mode 1)
  (autopair-mode)
  (scion-flycheck-on-save 1))

(add-hook 'haskell-mode-hook 'my-haskell-hook)
;; (setq scion-completing-read-function 'ido-completing-read)

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(require 'compile)
(setq special-display-buffer-names
      `(("*compilation*" . ((name . "*compilation*")
                            ,@default-frame-alist
                            (left . (- 1))
                            (height . 50)
                            (top . 0)))))
(setq mode-compile-always-save-buffer-p t)
(setq compilation-read-command nil)
(setq compilation-scroll-output 1)
(setq compilation-finish-function
      (lambda (buf str)
        (unless (string-match "exited abnormally" str)
          ;;no errors, make the compilation window go away in a few seconds
          (run-at-time
           "2 sec" nil 'delete-windows-on
           (get-buffer-create "*compilation*"))
          (message "No Compilation Errors!"))))
(global-set-key [f2] 'compile)

;; (global-set-key [(f2)]         'bc-set)            ;; Shift-SPACE for set bookmark
;; (global-set-key [(meta j)]              'bc-previous)       ;; M-j for jump to previous
;; (global-set-key [(shift meta j)]        'bc-next)           ;; Shift-M-j for jump to next
;; (global-set-key [(meta up)]             'bc-local-previous) ;; M-up-arrow for local previous
;; (global-set-key [(meta down)]           'bc-local-next)     ;; M-down-arrow for local next
;; (global-set-key [(control c)(j)]        'bc-goto-current)   ;; C-c j for jump to current bookmark
;; (global-set-key [(control x)(meta j)]   'bc-list)           ;; C-x M-j for the bookmark menu list



;;;; 
;;;; 
;;;; Emacs compatibility settings ;;;;
;;;; 
;;;; 
(unless window-system   ;; in TTY (terminal) mode
  (normal-erase-is-backspace-mode nil)
  (set-face-inverse-video-p 'mode-line-inactive t)
  (define-key osx-key-mode-map "\C-z" 'suspend-emacs))

 
;; Persistency and modes:
(setq
 aquamacs-scratch-file nil                        ; do not save scratch file across sessions
 initial-major-mode 'emacs-lisp-mode              ; *scratch* shows up in emacs-lisp-mode
 aquamacs-default-major-mode 'emacs-lisp-mode  ; new buffers open in emacs-lisp-mode
 )
 
;; Frame and window management:

 
; ***
;(one-buffer-one-frame-mode -1)       ; no one-buffer-per-frame
;(smart-frame-positioning-mode -1)  ; do not place frames behind the Dock or outside of screen boundaries
;(tool-bar-mode 0) ; turn off toolbar
 
;; Appearance
;(aquamacs-autoface-mode -1)                                ; no mode-specific faces, everything in Monaco
;(set-face-attribute 'mode-line nil :inherit 'unspecified) ; show modeline in 
;(set-face-attribute 'echo-area nil :family 'unspecified)  ; show echo area in Monaco

; ***
 
(setq global-auto-complete-mode t)
(ac-set-trigger-key "TAB")
(setq ac-auto-start nil)

(set-face-attribute 'default nil :font  "-apple-Inconsolata-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-check-path (quote ("." "/usr/share/texmf/tex/" "/usr/share/texmf/bibtex/bst/" "/usr/texbin/")))
 '(TeX-command-list (quote (("TeX" "%(PDF)%(tex) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil (plain-tex-mode texinfo-mode ams-tex-mode) :help "Run plain TeX") ("LaTeX" "%`%l%(mode)%' %t" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX") ("Makeinfo" "makeinfo %t" TeX-run-compile nil (texinfo-mode) :help "Run Makeinfo with Info output") ("Makeinfo HTML" "makeinfo --html %t" TeX-run-compile nil (texinfo-mode) :help "Run Makeinfo with HTML output") ("AmSTeX" "%(PDF)amstex %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil (ams-tex-mode) :help "Run AMSTeX") ("ConTeXt" "texexec --once --texutil %(execopts)%t" TeX-run-TeX nil (context-mode) :help "Run ConTeXt once") ("ConTeXt Full" "texexec %(execopts)%t" TeX-run-TeX nil (context-mode) :help "Run ConTeXt until completion") ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX") ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer") ("Print" "%p" TeX-run-command t t :help "Print the file") ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command) ("File" "%(o?)dvips %d -o %f " TeX-run-command t t :help "Generate PostScript file") ("Index" "makeindex %s" TeX-run-command nil t :help "Create index file") ("Check" "lacheck %s" TeX-run-compile nil (latex-mode) :help "Check LaTeX file for correctness") ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document") ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files") ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files") ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
 '(gud-gdb-command-name "gdb --annotate=1")
 '(initial-buffer-choice t)
 '(ispell-program-name "ispell")
 '(large-file-warning-threshold nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

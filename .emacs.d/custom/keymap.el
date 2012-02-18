
                                        ; easier M-x
(global-set-key
 "\C-x\C-m"
 (lambda ()
   (interactive)
   (call-interactively
    (intern
     (ido-completing-read
      "M-x "
      (all-completions "" obarray 'commandp))))))

;; (global-set-key "\C-c\C-m" 'execute-extended-command)

                                        ; better back deleting
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

                                        ; vimperator stole prev-line
                                        ;(global-set-key "\C-p" 'previous-line)


(defun disnet-anything-main ()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-buffers
     anything-c-source-file-name-history
     anything-c-source-info-pages
     anything-c-source-info-elisp
     anything-c-source-man-pages
     anything-c-source-locate
     anything-c-source-bookmarks
     anything-c-source-emacs-variables
     anything-c-source-emacs-commands)
   "*anything-main*"))

(global-set-key "\C-x\C-j" 'anything-filelist+)
(global-set-key "\C-xj" 'anything-filelist+)

(global-set-key "\C-x\C-n" 'disnet-anything-main)

(global-set-key "\C-x\C-b" 'anything-bookmarks)

(global-set-key "\M-r" 'coffee-compile-buffer)

;; (global-set-key "\C-xm" 'compile)
(global-set-key (kbd "M-b") 'recompile)

(global-set-key (kbd "C-;") 'comment-or-uncomment-region)

(global-set-key "\M-`" 'next-multiframe-window)


                                        ;(global-set-key "\M- " 'hippie-expand)

                                        ;(vimpulse-vmap ",c" 'comment-dwim)
                                        ;(vimpulse-vmap ",a" 'align-regexp)

(global-set-key "\C-cl" 'magit-status)
(global-set-key "\C-c\C-l" 'magit-status)

                                        ;(global-set-key "\C-cr" 'query-replace)

(global-set-key (kbd "C-@") 'er/expand-region)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(global-set-key "\C-cd" 'deft)
(global-set-key (kbd "C-c m n") 'jekyll-draft-post)
(global-set-key (kbd "C-c m P") 'jekyll-publish-post)

(define-key global-map (kbd "M-{"   ) 'windmove-up)
(define-key global-map (kbd "M-}" ) 'windmove-down)
(define-key global-map (kbd "M-]") 'windmove-right)
(define-key global-map (kbd "M-[" ) 'windmove-left)

; easier M-x
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

; better back deleting
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

; vimperator stole prev-line
(global-set-key "\C-p" 'previous-line)

(global-set-key "\C-x\C-j" 'anything-for-files)
(global-set-key "\C-xj" 'anything-for-files)

(global-set-key "\C-x\C-n" 'anything)

;(global-set-key "\C-," 'disnet-load-keymap)
;(global-set-key "\C-\." 'disnet-load-commands)

(global-set-key "\C-xm" 'compile)

(global-set-key "\M-," 'comment-region)
(global-set-key "\M-." 'uncomment-region)

(defun disnet-sbt-test() 
  (interactive)
  (ensime-sbt-action "test"))

(global-set-key "\C-c\C-k" 'disnet-sbt-test)

(global-set-key "\M- " 'hippie-expand)

(vimpulse-vmap ",c" 'comment-dwim)
(vimpulse-vmap ",a" 'align-regexp)

(global-set-key "\C-cl" 'magit-status)
(global-set-key "\C-c\C-l" 'magit-status)

; make command work as meta
;(setq mac-option-key-is-meta nil)
;(setq mac-command-key-is-meta t)
;(setq mac-command-modifier 'meta)
;(setq mac-option-modifier nil)

; for remember org mode
;; (global-set-key "\C-cc" 'org-capture)

;; (global-set-key "\C-cl" 'org-store-link)
;; (global-set-key "\C-ca" 'org-agenda)
;; (global-set-key "\C-cb" 'org-iswitchb)

; easier M-x
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

; better back deleting
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

; start up new blog entry
(global-set-key "\C-cbs" 'weblogger-start-entry)

; vimperator stole prev-line
(global-set-key "\C-p" 'previous-line)

(global-set-key "\C-x\C-j" 'anything-for-files)
(global-set-key "\C-xj" 'anything-for-files)

(global-set-key "\C-x\C-n" 'anything)

(global-set-key "\C-," 'disnet-load-keymap)

(global-set-key "\C-\." 'disnet-load-commands)

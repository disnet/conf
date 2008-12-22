(setq load-path (cons "~/emacs" load-path))
(load-file "~/emacs/weblogger.el")
(require 'rails)

; toolbars are worthless!
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
; transperency eye-canday FTW
(modify-frame-parameters (selected-frame) '((alpha . 95)))

; viper/vimpulse settings -- love the vim!
(when (featurep 'aquamacs)
  (raise-frame))
(setq viper-mode t)
(require 'viper)
(require 'vimpulse)
(add-hook 'emacs-startup-hook 'viper-mode)
(setq viper-ex-style-editing nil)
(setq woman-use-own-frame nil)
(setq woman-use-topic-at-point t)

; change meta key
(setq x-select-enable-clipboard t)

; js mode
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


; ** Key-Bindings **


(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-cbs" 'weblogger-start-entry)


(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (eshell-command
   (format "find %s -type f -name \"*.el\" | etags -" dir-name)))


(setq tramp-default-method "ssh")

;; Setup org mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(add-hook 'org-mode-hook 'turn-on-font-lock)

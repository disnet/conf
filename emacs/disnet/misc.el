(defun create-tags (dir-name)
  "Create tags file."
  (interactive "Directory: ")
  (eshell-command
   (format "find %s -type f -name \"*.el\" | etags -" dir-name)))

;;----------------------------
;; Change keys
;; (global-set-key (kbd "") 'function-name)
;;----------------------------
;; move cursor around
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "M-a") 'move-beginning-of-line)
(global-set-key (kbd "M-e") 'move-end-of-line)
(global-set-key (kbd "M-u") 'backward-word)
(global-set-key (kbd "M-o") 'forward-word)
(global-set-key (kbd "C-u") 'backward-sexp)
(global-set-key (kbd "C-o") 'forward-sexp)
(global-set-key (kbd "RET") 'newline-and-indent)
;; delete and select
(global-set-key (kbd "M-f") 'delete-char)
(global-set-key (kbd "M-d") 'backward-delete-char-untabify)
(global-set-key (kbd "C-j") 'delete-indentation)
(global-set-key (kbd "C-c b") 'kill-this-buffer)
;; undo
(global-unset-key (kbd "C-/"))
(global-set-key (kbd "C-z") 'undo)
;; change keys end

;; edit modeline
;; change `dired-directory` to nil
(defun edit-modeline ()
  (add-to-list 'mode-line-buffer-identification 
             '(:propertize (:eval (shorten-directory default-directory 30)) face nil)))
;; helper function
(defun shorten-directory (dir max-length)
  "Show up to `max-length' characters of a directory name `dir'."
  (let ((path (reverse (split-string (abbreviate-file-name dir) "/")))
        (output ""))
    (when (and path (equal "" (car path)))
      (setq path (cdr path)))
    (while (and path (< (length output) (- max-length 4)))
      (setq output (concat (car path) "/" output))
      (setq path (cdr path)))
    (when path
      (setq output (concat ".../" output)))
    output))

(provide 'init-keys)

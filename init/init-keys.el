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
;; change keys end

(provide 'init-keys)

(require 'htmlize)

(add-hook 'org-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'edit-modeline)

(setq org-todo-keywords
      '((sequence "TODO" "DOING" "|" "DONE" "CANCELED")))

(add-hook 'org-mode-hook
          '(lambda () (local-set-key (kbd "M-a") 'move-beginning-of-line)))
(add-hook 'org-mode-hook
          '(lambda () (local-set-key (kbd "M-e") 'move-end-of-line)))

(add-hook 'org-mode-hook
          '(lambda () (visual-line-mode)))

(provide 'init-org)

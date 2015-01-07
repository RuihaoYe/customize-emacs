(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(add-hook 'org-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'edit-modeline)

(provide 'init-md)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (ruihaoye)))
 '(custom-safe-themes t)
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(package-archives (quote (("melpa-stable" . "http://stable.melpa.org/packages/") ("melpa" . "http://melpa.org/packages/"))))
 '(projectile-global-mode t)
 '(sr-speedbar-right-side nil)
 '(yas-global-mode t nil (yasnippet)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;'(default ((t (:family ,font-family :foundry ,font-foundry :slant normal :weight normal :height 120 :width normal))))
 )

(cond
 ((eq system-type 'gnu/linux)
  (set-face-attribute 'default nil
                      :family "Ubuntu Mono"
                      :foundry nil
                      :slant 'normal
                      :weight 'normal
                      :height 120
                      :width 'normal)
  )
 ((eq system-type 'windows-nt)
  (set-face-attribute 'default nil
                      :family "Consolas"
                      :foundry nil
                      :slant 'normal
                      :weight 'normal
                      :height 120
                      :width 'normal)
  ))

(provide 'init-theme)

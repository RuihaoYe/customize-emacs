(setq make-backup-files nil)
(setq auto-save-default nil)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

;; init package-archives and provide require-package
(require 'init-elpa)
;; install packages
(require-package 'sr-speedbar)
(require-package 'paren-face)
(require-package 'yasnippet)

(require 'init-keys)
(require 'init-elisp)
(require 'init-go)

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
 '(sr-speedbar-auto-refresh nil)
 '(sr-speedbar-right-side nil)
 '(yas-global-mode t nil (yasnippet)))

(setq font-family
      (cond
       ((eq system-type 'gnu/linux) "Ubuntu Mono")
       ((eq system-type 'windows-nt "mono"))))
(setq font-foundry "unknown")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family font-family :foundry font-foundry :slant normal :weight normal :height 120 :width normal)))))

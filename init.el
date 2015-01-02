(setq make-backup-files nil)
(setq auto-save-default nil)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "my-packages" user-emacs-directory))

;; init package-archives and provide require-package
(require 'init-elpa)
;; install packages
(require-package 'yaml-mode)
(require 'window-numbering)

(require 'init-keys)
(require 'init-elisp)
(unless (eq system-type 'windows-nt)
  (require 'init-go))

;; chinese-fonts-setup
(require 'chinese-fonts-setup)
(cond
 ((eq system-type 'windows-nt)
  (setq cfs--profiles-fontsizes '(11.5 12.5 12.5)))
 ((eq system-type 'gnu/linux)
  (setq cfs--profiles-fontsizes '(12.5 12.5 12.5))))

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
 '(window-numbering-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

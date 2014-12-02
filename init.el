(setq package-archives
'(
  ("original" . "http://tromey.com/elpa/")
  ("gnu" . "http://elpa.gnu.org/packages/")
  ("marmalade" . "http://marmalade-repo.org/packages/")
  ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; package installed:
;; sr-speedbar

;; (require 'paren-face)
(global-paren-face-mode t)

(load "/home/ruihaoye/.emacs.d/keys.el")
(load "/home/ruihaoye/.emacs.d/go.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(case-fold-search nil)
 '(custom-enabled-themes (quote (dichromacy)))
 '(default-frame-alist (quote ((width . 100) (height . 50) (left . 600) (top . 20))))
 '(electric-pair-mode t)
 '(fill-column 80)
 '(global-linum-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(major-mode (quote text-mode))
 '(make-backup-files nil)
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 1) ((control)))))
 '(show-paren-mode t)
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-default-width 60)
 '(sr-speedbar-max-width 80)
 '(tab-width 2)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 120 :width normal))))
 '(show-paren-match ((t (:background "light blue")))))

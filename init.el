(setq make-backup-files nil)
(setq auto-save-default nil)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "my-packages" user-emacs-directory))

;; init package-archives and provide require-package
(require 'init-elpa)
;; install packages
(require-package 'sr-speedbar)
(require-package 'paren-face)
(require-package 'yasnippet)
(require-package 'yaml-mode)

(require 'init-theme)
(require 'init-keys)
(require 'init-elisp)
(require 'init-go)


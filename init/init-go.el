;;;; package install:
; (require-package 'go-mode)
(require-package 'company)
(require-package 'flymake)
(require-package 'flycheck)
;; go get goflymake

(add-hook 'go-mode-hook
          'linum-mode)

;; go-mode
(require 'go-mode)
(add-hook 'before-save-hook 'gofmt-before-save)
;; go-import-add: C-c C-a
;; go-remove-unused-imports:
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
;; go-goto-imports:
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "<f4>") 'go-goto-imports)))
;; gofmt:
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-S-f") 'gofmt)))
;; godoc
;; godef-describe:
;; godef-jump:
(defun my-godef-jump ()
  "")
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "<f3>") 'godef-jump)))
;; jump back:
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "<f2>") 'pop-tag-mark)))

;; goflymake
;; (load "/home/ruhaoye/go/src/github.com/dougm/goflymake/go-flymake.el")
;; (load "/home/ruhaoye/go/src/github.com/dougm/goflymake/go-flycheck.el")
;; (require 'go-flymake)
;; (require 'go-flycheck)

;; gocode
(require 'company-go)
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook
          (lambda ()
           (set (make-local-variable 'company-backends) '(company-go))
           (company-mode)))
(setq company-idle-delay .3)
(setq company-echo-delay 0)
(setq company-begin-commands '(self-insert-command))

(add-hook 'go-mode-hook 'edit-modeline)

(provide 'init-go)

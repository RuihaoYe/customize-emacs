;;;; package install:
;; go-mode
;; company-go
;; flymake
;; flycheck
;; go get goflymake

;; go-mode
(require 'go-mode)
(add-hook 'before-save-hook 'gofmt-before-save)
;; go-import-add: C-c C-a
;; go-remove-unused-imports:
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
;; go-goto-imports
;; gofmt:
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-S-f") 'gofmt)))
;; godoc
;; godef-describe:
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "<f1>") 'godef-describe)))
;; godef-jump
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "<f3>") 'godef-jump)))
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "<f2>") 'kill-this-buffer)))

;; goflymake
;; (load "/home/ruhaoye/go/src/github.com/dougm/goflymake/go-flymake.el")
;; (load "/home/ruhaoye/go/src/github.com/dougm/goflymake/go-flycheck.el")
;; (require 'go-flymake)
;; (require 'go-flycheck)

;; gocode
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook
          (lambda ()
           (set (make-local-variable 'company-backends) '(company-go))
           (company-mode)))


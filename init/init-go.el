;;;; package install:
; package-install: go-mode, company, flymake, flycheck, go-eldoc
(require-package 'company)
;; go get: goflymake, godef, gocode

(add-hook 'go-mode-hook 'linum-mode)
(add-hook 'go-mode-hook 'edit-modeline)

;;; go-mode
(require 'go-mode)
;; gofmt
(add-hook 'before-save-hook 'gofmt-before-save)
;; go-import-add: C-c C-a
;; go-remove-unused-imports: C-c C-r
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
;; go-goto-imports: <f4>
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "<f4>") 'go-goto-imports)))
;; gofmt: nil
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-S-f") 'gofmt)))
;; godoc: nil
;; godef-describe: C-c C-d
;; godef-jump: <f3>
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "<f3>") 'godef-jump)))
; jump back: <f2>
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "<f2>") 'pop-tag-mark)))
;;; go-mode end

;;; goflymake
;; (load "/home/ruhaoye/go/src/github.com/dougm/goflymake/go-flymake.el")
;; (load "/home/ruhaoye/go/src/github.com/dougm/goflymake/go-flycheck.el")
;; (require 'go-flymake)
;; (require 'go-flycheck)

;;; gocode
(require 'company-go)
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook
          (lambda ()
           (set (make-local-variable 'company-backends) '(company-go))
           (company-mode)))
(setq company-idle-delay .3)
(setq company-echo-delay 0)
(setq company-begin-commands '(self-insert-command))
;; company-dabbrev: C-/
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-/") 'company-dabbrev)))
;; company-complete: M-/
(add-hook 'go-mode-hook
          '(lambda ()
             (local-set-key (kbd "M-/") 'company-complete)))

;;; some tips abount company-mode
;;  Use M-n, M-p, M-<digit> to select

;;; go-eldoc
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

(provide 'init-go)

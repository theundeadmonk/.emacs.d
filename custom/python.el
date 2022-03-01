;; Enable Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Enable autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'elpy-mode-hook 'my/python-mode-hook)

;; Python Hook
(add-hook 'elpy-mode-hook '(lambda () 
                               (setq python-indent 4)))

(add-hook 'elpy-mode-hook '(lambda () 
                             (setq python-indent-offset 4)))

;; Enable LSP mode
(setq lsp-python-ms-auto-install-server t)
(add-hook 'elpy-mode-hook #'lsp)

;; DAP Mode
(require 'dap-python)








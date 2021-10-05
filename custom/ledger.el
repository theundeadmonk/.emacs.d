(setq ledger-binary-path "~/ledger/ledger")

(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
(add-to-list 'load-path
             (expand-file-name "~/.emacs.d/.cask/27.2/elpa/ledger-mode-20210516.2045/ledger-mode.el"))
(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))

;; Set CAD as default currency
(setq ledger-reconcile-default-commodity "CAD")











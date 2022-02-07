(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)
(require 'auto-complete-config)
(ac-config-default)

;; Ignore cl deprecation warnings
(setq byte-compile-warnings '(cl-functions))

(elpy-enable)

(add-to-list 'load-path "~/.emacs.d/custom")

(load "common-setup.el")
(load "go.el")
(load "ledger.el")
(load "python.el")
(load "ruby.el")
(load "yaml.el")

;; Theme
(load-theme 'plan9)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("18cd5a0173772cdaee5522b79c444acbc85f9a06055ec54bb91491173bc90aaa" default))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

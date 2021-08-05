;; Set the starting position and width and height of Emacs Window
(add-to-list 'default-frame-alist '(left . 0))
(add-to-list 'default-frame-alist '(top . 0))
(add-to-list 'default-frame-alist '(height . 90))
(add-to-list 'default-frame-alist '(width . 350))

;; Prefer utf-8 encoding
(prefer-coding-system 'utf-8)

;; Use windmove bindings
;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
(windmove-default-keybindings)

;; Display continuous lines
(setq-default truncate-lines nil)
;; Do not use tabs for indentation
(setq-default indent-tabs-mode nil)
;;(enable-theme 'solarized-dark)

;; trucate even even when screen is split into multiple windows
(setq-default truncate-partial-width-windows nil)

;; y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)              

(set-cursor-color "red")

(setq default-frame-alist
      '((cursor-color . "red")))

;; Highlight incremental search
(setq search-highlight t)
(transient-mark-mode t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode 1)
(global-visual-line-mode 1)

(display-time)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)


;; Disable backups
(setq backup-inhibited t)
;;disable auto save
(setq auto-save-default nil)


;; Auto Complete
(ac-config-default)

;; Smart Parens
(require 'smartparens-config)
(require 'smartparens-ruby)
(smartparens-global-mode)
(show-smartparens-global-mode t)
(sp-with-modes '(rhtml-mode)
  (sp-local-pair "<" ">")
  (sp-local-pair "<%" "%>"))

;; Ivy
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

;; Projectile
(projectile-mode +1)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-completion-system 'ivy)

;; Highlight Indentation
(require 'highlight-indentation)

;; Visible Mark
(require 'visible-mark)
(global-visible-mark-mode 1)

;; Theme
(load-theme 'plan9)

;; Set Font
;; Set default font
(set-face-attribute 'default nil
                    :family "Input Mono"
                    :height 200
                    :weight 'normal
                    :width 'normal)

;; PATH on OSX
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Auto Indent
(require 'auto-indent-mode)
(auto-indent-global-mode)

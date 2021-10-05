(require 'seeing-is-believing)
(require 'chruby)

(add-to-list 'auto-mode-alist
             '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook
          (lambda () (highlight-indentation-current-column-mode)))

(add-hook 'enh-ruby-mode-hook 'seeing-is-believing)

(add-hook 'enh-ruby-mode-hook 'minitest-mode)

(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)

(add-hook 'enh-ruby-mode-hook #'lsp)

(use-package lsp-mode
  :commands
  (lsp lsp-deferred)
  :hook
  (python-mode . lsp-mode)
  (c++-mode . lsp-mode)
  (c-mode . lsp-mode)
  :config
  (setq lsp-completion-provider :companny)
  (setq lsp-enable-which-key-integration t)
  (setq lsp-eldoc-enable-hover t)
  (setq lsp-signature-auto-activate t)
  (setq lsp-completion-show-detail nil)
  (setq lsp-completion-show-kind nil))


(use-package lsp-ui
  :config
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-sideline-enable t)
  (setq lsp-ui-sideline-show-code-action t)
  (setq lsp-ui-sideline-delay 0.1)
  (setq lsp-ui-sideline-show-code-actions t)
  (setq lsp-ui-sideline-show-hover t)
  (setq lsp-ui-sideline-show-diagnostics t)
  )

;; LSP MODE FOR JAVA
(use-package lsp-java
  :hook
  (java-mode . lsp-mode))



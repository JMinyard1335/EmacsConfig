(use-package which-key
  :init
  (which-key-mode)
  :custom
  (setq which-key-idle-delay 1))

(use-package origami
  :hook
  (prog-mode . origami-mode))

(use-package nerd-icons
  :custom					     
  (setq nerd-icons-font-family "Symbols Nerd Font Mono")
  (setq nerd-icons-color-icons t))

(use-package rainbow-delimiters
  :hook
  (prog-mode . rainbow-delimiters-mode)
  (org-mode . rainbow-delimiters-mode))

(use-package company
  :hook
  (prog-mode . company-mode)
  (org-mode . company-mode))
(use-package company-box
  :hook
  (company-mode . company-box-mode))

(use-package flycheck
  :hook
  (python-mode . flycheck-mode)
  (c++-mode . flycheck-mode)
  (java-mode . flycheck-mode))

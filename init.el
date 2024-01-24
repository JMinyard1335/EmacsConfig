;; ANYTHING IN HERE IS SAFE TO USE--------------------------------
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/ConfigSetup")
(load-theme 'MagicMan1335 t)
(cd "C:/Users/Jachin/")
(setq ispell-program-name "C:/DevCornor/usr/bin/aspell.exe")


;; Sets up the package manageer
(load "~/.emacs.d/ConfigSetup/package-setup.el")
;; Changes the apperance of the gui
(load "~/.emacs.d/ConfigSetup/gui-setup.el")
;; keybindings
(load "~/.emacs.d/ConfigSetup/keybinds-setup.el")
;;sets up various programing tools
(load "~/.emacs.d/ConfigSetup/tools-setup.el")
;; Changes the Modeline Configuration
(load "~/.emacs.d/ConfigSetup/modeline-setup.el")
;; Sets up org-mode
(load "~/.emacs.d/ConfigSetup/org-setup.el")

(load "~/.emacs.d/ConfigSetup/lsp-setup.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("74d29638b9a10d294192daa063c4af1ddbf347c40f45a2637da2f3dcc5503336" default))
 '(package-selected-packages
   '(verilog-ext org-download flyspell-popup ccls visual-fill-column lsp-java lsp-mode company-box company rainbow-delimiters origami which-key doom-modeline use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ADJUST THE GUI APSECTS
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-tab-line-mode 1)
(display-time-mode 1)
(display-battery-mode 1)
(setq inhibit-startup-screen t)
(set-face-attribute 'default nil :height 120)

;; SETS THE BUFFER SIZEq
(add-to-list 'default-frame-alist
	     '(fullscreen . maximized))

;;enables line numbers for programing modes
(dolist (mode '(prog-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 1))))

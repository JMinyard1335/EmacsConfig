(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Changes Show Hide Keys
(global-set-key (kbd "C-'") 'hs-hide-block)
(global-set-key (kbd "C-;") 'hs-show-block)
(global-set-key (kbd "C-\"") 'hs-hide-all)
(global-set-key (kbd "C-:") 'hs-show-all)
(global-set-key (kbd "<C-tab>") 'origami-toggle-node)

;;spell check correction
(global-set-key (kbd "C-c s") 'flyspell-correct-word-before-point)

;; Org-Agenda/Capture
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c t") 'org-capture)

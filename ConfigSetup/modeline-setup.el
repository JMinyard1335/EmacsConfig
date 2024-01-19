(use-package doom-modeline
  :init
  (doom-modeline-mode 1)
  :custom
  (doom-modeline-height 40)
  (doom-modeline-bar-width 5)
  (doom-modeline-hud nil)
  (doom-modeline-project-detection 'auto)
  (doom-modeline-buffer-name t)
  (doom-modeline-highlight-modified-buffer-name t)
  (doom-modeline-enable-word-count t)
  (doom-modeline-icon t)
  (doom-modeline-major-mode-icon t)
  (doom-modeline-major-mode-color-icon t)
  (doom-modeline-buffer-state-icon t)
  (doom-modeline-time-icon t)
  (doom-modeline-time-live-icon t)
  (doom-modeline-minor-modes nil)
  (doom-modeline-github nil)
  (doom-modeline-battery-icon t)
  (doom-modeline-battery t)
  (doom-modeline-time t))
;; This is required to resize doom modeline so that it dosent block other buffers text.
(advice-add #'fit-window-to-buffer :before (lambda (&rest _) (redisplay t)))

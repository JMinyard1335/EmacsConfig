(defun IDEmacs-org-setup ()
  (rainbow-delimiters-mode)
  (org-indent-mode)
  (visual-line-mode 1)
  (company-mode 1))

(defun IDEMacs-org-habits ()
  (require 'org-habit)
  (add-to-list 'org-modules 'org-habit)
  (setq org-habit-graph-column 60))

(defun IDEmacs-org-column-fill ()
  (setq visual-fill-column-width 120
        visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

;;Sets up fonts for org-mode
(defun IDEmacs-font-setup ()
  (font-lock-add-keywords 'org-mode
                          '(("^ *\\([-]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•")))))))

;; Changes and modifications to agenda
(defun IDEmacs-agenda-setup ()
  (setq org-agenda-window-setup 'only-window) 
  (setq org-agenda-start-with-log-mode t)
  (setq org-log-done 'time)
  (setq org-log-into-drawer t)
  (setq org-agenda-files
	'( "C:/Users/Jachin/Dropbox/OrgAgenda/Tasks.org"
	   "C:/Users/Jachin/Dropbox/OrgAgenda/School.org"))
  (setq org-todo-keywords
	'((sequence "ASSIGNED(a)" "CURRENT(c)" "NEXT(n)" "|" "DONE(d)" "TURNEDIN(t)")
	  (sequence "TODO(T)" "|" "DONE(d)")))
  (setq org-agenda-custom-commands
	'(
	  ;; Shows a list of all current class assignments in the work
	  ("A" "ASSIGNED"
	   ((todo "CURRENT"
		  ((org-agenda-overriding-header "In The Works")))
	    (todo "NEXT"
		  ((org-agenda-overriding-header "Up Next")))
	    (todo "ASSIGNED"
		  ((org-agenda-overriding-header "Assignments")))))
	  ;; Shows all Current Classes
	  ("c" "Classes" tags "classes")
	  ;; Dates for all exams
	  ("e" "Exams" tags "exams")))
  
  (setq org-tag-alist
	'((:startgroup)
	  ;;store mutaully execlusive tags here
	  (:endgroup)
	  ("class" . ?c)
	  ("3354" . ?E)
	  ("3316" . ?R)
	  ("4341" . ?L)
	  ("4348" . ?O)
	  ("exams" . ?e)
	  ("meeting" . ?m)
	  ("readings" . ?r)))

  (setq org-refile-targets
	'(("C:/Users/Jachin/Dropbox/OrgAgenda/Archives.org" :maxlevel . 1)))
  (advice-add 'org-refile :after 'org-save-all-org-buffers)

  (setq org-capture-templates
	'(("a" "Assignments / Projects")
	  ("aa" "Assignment" entry
	   (file+olp "C:/Users/Jachin/Dropbox/OrgAgenda/School.org" "Assignments")
	   "* ASSIGNED %?\nDEADLINE: %^T\n")
	  ("ae" "Exam" entry
	   (file+olp "C:/Users/Jachin/Dropbox/OrgAgenda/School.org" "Exams")
	   "* %? SCHEDULE: %^T :exams:\n")
	  ("t" "Tasks")
	  ("tt""Tasks" entry
	   (file+olp "C:/Users/Jachin/Dropbox/OrgAgenda/Tasks.org" "Tasks")
	   "* TODO %?\nTime: %^T\n"))))

(defadvice org-agenda (around split-vertically activate)
  (let (
	(split-width-threshold 40)    ; or whatever width makes sense for you
	(split-height-threshold nil)) ; but never horizontally
    ad-do-it))

(use-package visual-fill-column
  :hook (org-mode . IDEmacs-org-column-fill))

(use-package org
  :init
  (setq inhibit-compacting-font-caches t)
  :hook
  (org-mode . IDEmacs-org-setup)
  (org-mode . org-bullets-mode)
  (org-agenda-mode . font-lock-mode)
  :config
  (IDEmacs-font-setup)
  (IDEmacs-agenda-setup)
  (setq org-startup-folded t))
  
  (use-package org-bullets
    :after org
    :custom
    (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))

(use-package org-download)

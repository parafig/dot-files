(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
	   (interactive (list my-term-shell)))
(ad-activate 'ansi-term)
(global-set-key (kbd "C-x t") 'ansi-term)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq ring-bell-function 'ignore)

(setq line-number-mode t)
(setq column-number-mode t)

(setq make-backup-file nil)
(setq auto-save-default nil)

(setq x-select-enable-clipboard t)

(defun split-and-follow-horizontally ()
(interactive)
(split-window-below)
(balance-windows)
(other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

(defun split-and-follow-vertically ()
(interactive)
(split-window-right)
(balance-windows)
(other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-agenda-files '("~/Documents/todo.org" "~/Documents/project.org"))

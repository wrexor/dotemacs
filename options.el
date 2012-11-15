;; make my c++ purty
(add-hook 'c++-mode-hook 
	  '(lambda ()
	     (setq c-basic-offset 4)
	     (c-set-offset 'arglist-intro '+)
	     (c-set-offset 'arglist-close 0)
	     (c-set-offset 'substatement-open 0)
	     (c-set-offset 'innamespace 0)))

;; basic ui options
(setq column-number-mode t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)

(load-theme 'soother t)

;; disable git from vc mode
(setq vc-handled-backends (quote (RCS CVS SVN SCCS Bzr Hg Mtn Arch)))

;; organize buffer menu by mode
(setq mouse-buffer-menu-mode-mult 1)

;; overwrite the selection
(delete-selection-mode 1)

;; stop that insane file system cluttering
(setq backup-dir "~/.emacs.d/backups/")
(if (not (file-exists-p backup-dir))
    (make-directory backup-dir t))

(setq backup-directory-alist `((".*" . , backup-dir)))
(setq auto-save-file-name-transforms
      `((".*" , backup-dir t)))

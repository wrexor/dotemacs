;; make my c++ purty
(add-hook 'c++-mode-hook
          '(lambda ()
             (setq c-basic-offset 4)
             (c-set-offset 'arglist-intro '+)
             (c-set-offset 'arglist-close 0)
             (c-set-offset 'substatement-open 0)
             (c-set-offset 'innamespace 0)))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)

(setq column-number-mode t
      inhibit-splash-screen t
      ;; overwrite the selection
      delete-selection-mode 1
      ;; disable git from vc mode
      vc-handled-backends (quote (RCS CVS SVN SCCS Bzr Hg Mtn Arch))
      ;; organize buffer menu by mode
      mouse-buffer-menu-mode-mult 1)

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tooltip-mode) (tooltip-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; not very soothing in terminal :(
(when (display-graphic-p)
  (load-theme 'soother t))

;; stop that insane file system cluttering
(setq backup-dir "~/.emacs.d/backups/")
(if (not (file-exists-p backup-dir))
    (make-directory backup-dir t))

(setq backup-directory-alist `((".*" . , backup-dir)))
(setq auto-save-file-name-transforms
      `((".*" , backup-dir t)))

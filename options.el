;; make my c++ purty
(defun my-c++-mode-hook ()
  (setq c-basic-offset 4)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'arglist-close 0)
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'innamespace 0))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; hide the toolbar, splash screen and menubar
(setq tool-bar-mode nil)
(setq inhibit-splash-screen t)
(menu-bar-mode -1)

;; enable ido mode
(ido-mode t)

;; show column number
(setq column-number-mode t)

;; remove git from vc
(setq vc-handled-backends (quote (RCS CVS SVN SCCS Bzr Hg Mtn Arch)))

;; glsl mode
;; (autoload 'glsl-mode "glsl-mode" nil t)
;; (add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
;; (add-to-list 'auto-mode-alist '("\\.vert\\'" . glsl-mode))
;; (add-to-list 'auto-mode-alist '("\\.frag\\'" . glsl-mode))
;; (add-to-list 'auto-mode-alist '("\\.geom\\'" . glsl-mode))

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


(load "~/.emacs.d/sources")

(load "~/.emacs.d/options")
(load "~/.emacs.d/util")
(load "~/.emacs.d/bindings")

;; enable ido mode
(ido-mode t)

;; Store customizations in a file thats .gitignored
(setq custom-file "~/.emacs.d/custom.el")
(when (file-exists-p custom-file) (load custom-file))



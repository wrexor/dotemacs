(require 'package)
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (let (el-get-install-skip-emacswiki-recipes)
       (end-of-buffer)
       (eval-print-last-sexp)
       (setq el-get-verbose t)))))

(setq el-get-sources
      '(
	(:name wrap-region
	       :after (progn
			(wrap-region-global-mode t)
			(wrap-region-add-wrapper "{% trans '" "' %}" "t")
			(wrap-region-add-wrapper "{% trans \"" "\" %}" "y")
			(wrap-region-add-wrapper "{% " " %}" "%")))
	(:name glsl-mode
	       :type git
	       :url "https://github.com/jimhourihan/glsl-mode"
	       :after (autoload 'glsl-mode "glsl-mode" nil t))
))

(setq my-packages
      (append
       '(
	 el-get
	 nxhtml
	 magit
	 pymacs
	 ropemacs
	 )
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)

(load "~/.emacs.d/util")
(load "~/.emacs.d/options")



;; Store customizations in a file I can .gitignore
(setq custom-file "~/.emacs.d/custom.el")
(when (file-exists-p custom-file) (load custom-file))



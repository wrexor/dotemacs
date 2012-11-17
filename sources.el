(require 'package)
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; install el-get if its not already there
(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (el-get-install-skip-emacswiki-recipes)
    (goto-char (point-max))
    (eval-print-last-sexp)
    (setq el-get-verbose t)))
;; (unless (require 'el-get nil t)
;;   (url-retrieve
;;    "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
;;    (lambda (s)
;;      (let (el-get-install-skip-emacswiki-recipes)
;;        (end-of-buffer)
;;        (eval-print-last-sexp)
;;        (setq el-get-verbose t)))))

;; global packages
(setq el-get-sources
      '((:name wrap-region
               :after (progn
                        (wrap-region-global-mode t)
                        (wrap-region-add-wrapper "{% trans '" "' %}" "t")
                        (wrap-region-add-wrapper "{% trans \"" "\" %}" "y")
                        (wrap-region-add-wrapper "{% " " %}" "%")))
        (:name glsl-mode
               :type git
               :url "https://github.com/jimhourihan/glsl-mode"
               :after (autoload 'glsl-mode "glsl-mode" nil t))

        (:name magit
               :after (global-set-key (kbd "C-x C-z") 'magit-status))
        (:name smex
               :after (global-set-key (kbd "M-x") 'smex))
        ))

(setq my-packages
      '(el-get
        pymacs
        ropemacs))

;; only load these packages when not in terminal
(when (display-graphic-p)
  (add-to-list
   'el-get-sources
   '(:name powerline
           :type github
           :pkgname "wrexor/emacs-powerline"
           :features powerline)
   )
  (add-to-list 'my-packages 'nxhtml)
  )

;; (setq my-packages
;;       (append

;;        (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync (append my-packages (mapcar 'el-get-source-name el-get-sources)))

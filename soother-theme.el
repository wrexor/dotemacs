(deftheme soother
  "soother-theme
   Created : Tue Nov 12 12:12:34 2012 - Dave Moore
   licence : MIT

   Based on the soothe-theme by Jason Milkins who has a definite
   eye for color. This theme aims for consistent background colors
   and adds a few tweaks to keep my kit purty.
")

(let (
      ;; mode-line-font - tighten up the modeline by making it
      ;; variable pitch. This theme also uses powerline.el
      (mono-font "Droid Sans Mono")
      (no-mono-font "Droid Sans")

      ;; named colors
      (gray-1 "#828282")
      (gray-1bg "#0a0a0a")
      (gray-2 "#333333")
      (gray-2bg "#111111")
      (gray-3 "#aaaaaa")
      (gray-3bg "#141414")
      (gray-4 "#252525")
      (gray-4bg "#171717")
      (gray-5 "#2a2a2a")
      (gray-5bg "#1a1a1a")
      (gray-6 "#202020")
      (gray-6bg "#1e1e1e")

      (red-1 "#d13120")
      (red-1bg "#1D1515")
      (red-2 "#b23f1e")
      (red-2bg "#251c1e")

      (brown-1 "#9f621d")
      (brown-1bg "#2a1f1f")

      (orange-1 "#d97a35")
      (orange-1bg "#1F1710")

      (yellow-1 "#deae3e")
      (yellow-1bg "#18140C")

      (green-1 "#81af34")
      (green-1bg "#1a2321")
      (green-2 "#4e9f75")
      (green-2bg "#1a2321")

      (turquoise-1 "#11535F")
      (turquoise-2 "#07272D")
      (turquoise-1bg "#05181C")
      (turquoise-2bg "#041316")

      (blue-1 "#7e9fc9")
      (blue-1bg "#1e252f")
      (blue-2 "#417598")
      (blue-2bg "#1b333e")
      (blue-3 "#00959e")
      (blue-3bg "#132228")
      (blue-4 "#365e7a")
      (blue-4bg "#172028")

      (purple-1 "#a878b5")
      (purple-1bg "#1D1B25")

      ;; special colors
      (background "#110F13")
      (alt-background "#111013")
      (foreground "#aaaaaa")
      (hl-line "#11151a")
      (selection "#311500")

      (soother-bg-1 "#0a0a0a")
      (soother-bg "#110F13")
      (soother-bg+1 "#141414")
      (soother-bg+2 "#202020")
      (soother-bg+3 "#333333")
      
      (soother-fg-1 "#666666")
      (soother-fg "#828282")
      (soother-fg+1 "#aaaaaa")

      (soother-green "#2e8b57")

      (soother-blue-4 "#1e252f")
      (soother-blue-1 "#417598")
      (soother-blue "#7e9fc9")

      (soother-red-1 "#b23f1e")
      (soother-red "#d13120")

      (soother-orange "#d97a35")
      (soother-yellow "#deae3e")
      (soother-brown "#9f621d")
      (soother-purple "#a878b5")
      (soother-white "#f5f5f5")
 
      (soother-aqua-1 "#11535F")
      (soother-aqua "#00959e")
      )

  (custom-theme-set-faces
   'soother

   ;; Basics
   `(default
      ((t (:foreground ,soother-fg :background ,soother-bg
                       :family ,mono-font :height 113))))

   `(link ((t (:foreground ,soother-aqua :underline t ))))
   `(highlight ((t (:foreground ,soother-blue ))))

   `(fringe ((t (:background ,soother-bg+1 ))))
   `(vertical-border ((t (:foreground ,gray-5 :background ,soother-bg ))))

   `(cursor ((t (:background ,soother-fg))))
   `(region ((t (:foreground nil :background ,selection))))
   `(hl-line ((t (:background ,hl-line))))
   `(minibuffer-prompt ((t (:foreground ,soother-orange ))))
   `(escape-glyph ((t (:foreground ,soother-red))))

   ;; Font-lock stuff
   `(font-lock-builtin-face ((t (:foreground ,soother-red-1))))
   `(font-lock-constant-face ((t (:foreground ,soother-purple))))
   `(font-lock-comment-face ((t (:foreground ,soother-aqua-1))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,soother-aqua-1))))
   `(font-lock-doc-face ((t (:foreground ,soother-aqua))))
   `(font-lock-doc-string-face ((t (:foreground ,soother-aqua))))
   `(font-lock-function-name-face ((t (:foreground ,soother-blue ))))
   `(font-lock-keyword-face ((t (:foreground ,soother-orange))))
   `(font-lock-negation-char-face ((t (:foreground ,soother-yellow))))
   `(font-lock-preprocessor-face ((t (:foreground ,soother-orange))))
   `(font-lock-string-face ((t (:foreground ,soother-green))))
   `(font-lock-type-face ((t (:foreground ,soother-red))))
   `(font-lock-variable-name-face ((t (:foreground ,soother-red))))
   `(font-lock-warning-face ((t (:foreground ,soother-red-1 ))))
   

   ;;  Custom elements and widgets
   `(widget-field
     ((t (:background ,turquoise-1bg :box
                      (:line-width 2 :color "black" :style pressed-button)))))
   `(custom-button
     ((t (:foreground ,soother-fg+1 :background ,gray-6bg :family ,no-mono-font :box
                      (:line-width 2 :color "black" :style released-button)))))
   `(custom-button-mouse
     ((t (:background "gray17" :foreground ,soother-white
                      :family ,no-mono-font :box
                      (:line-width 2 :color "black" :style released-button)))))
   `(custom-button-pressed
     ((t (:background ,soother-bg :foreground ,soother-white
                      :family ,no-mono-font :box
                      (:line-width 2 :color "black" :style pressed-button)))))
   `(custom-group-tag
     ((t (:foreground ,soother-blue :family ,no-mono-font :weight bold :height 1.4))))
   `(custom-group-tag-1
     ((t (:foreground ,soother-purple :family ,no-mono-font :weight bold :height 1.4))))
   `(custom-variable-tag
     ((t (:foreground ,green-2
                      :family ,no-mono-font :weight bold :height 1.1))))
   `(custom-state ((t (:foreground ,soother-green))))

   ;; ECB TODO
   `(ecb-default-general-face
     ((t (:foreground ,soother-fg+1 :background ,soother-bg-1 ))))
   `(ecb-default-highlight-face
     ((t (:foreground ,soother-red :background ,red-1bg ))))
   `(ecb-method-face ((t (:foreground ,soother-red :background ,red-1bg ))))
   `(ecb-tag-header-face ((t ( :background ,blue-2bg ))))

   ;; flyspell-mode TODO
   `(flyspell-incorrect ((t (:underline ,soother-red-1 ))))
   `(flyspell-duplicate ((t (:underline ,soother-red-1 ))))

   ;; highlight-indentation-mode TODO
   `(highlight-indentation-face ((t ( :background ,soother-bg-1 ))))
   `(highlight-indentation-current-column-face ((t ( :background ,gray-4 ))))

   ;; ido
   `(ido-only-match ((t (:foreground ,green-1 ))))
   `(ido-subdir ((t (:foreground ,soother-purple))))

   ;; Linum
   `(linum ((t (:foreground ,soother-fg :background ,alt-background :height 90 ))))

   ;; magit and diff-mode 
   `(diff-file-header ((t (weight: bold :background ,soother-bg+3 ))))
   `(diff-hunk-header ((t ( :background ,soother-bg+2 ))))
   `(magit-item-highlight ((t (:foreground nil :background ,soother-bg-1 ))))
   `(magit-diff-add ((t (:foreground ,soother-green ))))
   `(magit-diff-del ((t (:foreground ,soother-bg+3 ))))
   `(magit-diff-none ((t (:foreground ,soother-fg-1 :background ,soother-bg ))))
   `(magit-whitespace-warning-face ((t ( :background ,soother-yellow ))))

   ;; Mode Line
   `(mode-line
     ((t (:foreground ,soother-fg :background ,soother-bg+1 :box nil
                      :height 95 :family ,no-mono-font))))
   `(mode-line-inactive
     ((t (:foreground ,soother-bg+3 :background ,soother-bg+1 :box nil
                      :height 95 :family ,no-mono-font))))
   `(mode-line-highlight
     ((t (:foreground ,soother-fg+1 :background ,soother-bg+1 :box nil ))))

   ;; nxhtml mode
   `(mumamo-background-chunk-major ((t ( :background ,soother-bg ))))
   `(mumamo-background-chunk-submode1 ((t (:background ,soother-bg ))))

   ;; org-mode TODO
   `(org-date ((t (:foreground ,soother-purple :background ,purple-1bg ))))
   `(org-done ((t (:foreground ,green-1 :background ,green-1bg ))))
   `(org-hide ((t (:foreground ,soother-bg+3 :background ,soother-bg-1 ))))
   `(org-link ((t (:foreground ,soother-blue))))
   `(org-todo ((t (:foreground ,soother-red :background ,red-1bg ))))

   ;; show-paren-mode TODO
   `(show-paren-match ((t (:foreground ,soother-orange :background ,orange-1bg ))))
   `(show-paren-mismatch ((t (:foreground ,red-1bg :background ,soother-red-1 ))))

   ;; whitespace-mode
   `(whitespace-empty ((t (:background ,soother-yellow))))
   `(whitespace-hspace ((t (:foreground ,soother-bg+3 ))))
   `(whitespace-indentation ((t (:foreground ,soother-bg+3 ))))
   `(whitespace-line ((t (:background ,soother-bg+1 ))))
   `(whitespace-newline ((t (:foreground ,soother-bg+3 ))))
   `(whitespace-space ((t (:foreground ,soother-bg+3 ))))
   `(whitespace-space-after-tab ((t (:foreground ,soother-bg+3 ))))
   `(whitespace-tab ((t (:foreground ,soother-bg+3 ))))
   `(whitespace-trailing ((t (:background ,soother-yellow))))

   )


  (custom-theme-set-variables
   'soother

   `(powerline-color1 ,soother-bg+2)
   `(powerline-color2 ,soother-bg+1)
   `(powerline-color3 ,soother-bg+1)

   `(powerline-arrow-shape 'rounded)
   `(Linum-format "%7i ")
   `(fringe-mode 4)

   ;; Fill Column Indicator mode
   `(fci-rule-color ,soother-bg+2)
   `(fci-rule-character-color ,soother-bg+2)

   `(ansi-color-names-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [,soother-bg ,soother-red ,soother-green ,soother-yellow ,soother-blue ,soother-purple ,soother-blue ,soother-fg])
   `(ansi-term-color-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [unspecified ,background ,soother-red ,soother-green ,soother-yellow ,soother-blue ,soother-purple ,soother-blue ,soother-fg])
   )
  )

;; Rainbow delimiters

(defun soother-rainbow-delim-set-face ()
  (set-face-attribute 'rainbow-delimiters-depth-1-face nil :foreground "#30828F" )
  (set-face-attribute 'rainbow-delimiters-depth-2-face nil :foreground "#2c7580" )
  (set-face-attribute 'rainbow-delimiters-depth-3-face nil :foreground "#276872" )
  (set-face-attribute 'rainbow-delimiters-depth-4-face nil :foreground "#225B64" )
  (set-face-attribute 'rainbow-delimiters-depth-5-face nil :foreground "#1D4E55" )
  (set-face-attribute 'rainbow-delimiters-depth-6-face nil :foreground "#184147" )
  (set-face-attribute 'rainbow-delimiters-depth-7-face nil :foreground "#133439" )
  (set-face-attribute 'rainbow-delimiters-unmatched-face nil :foreground "#eF3000" )
  )
(eval-after-load "rainbow-delimiters" '(soother-rainbow-delim-set-face))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'soother)

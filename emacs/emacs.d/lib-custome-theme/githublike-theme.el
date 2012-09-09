;;; githublike-theme.el

(deftheme githublike
  "A theme like github styles.")

(custom-theme-set-faces 'githublike
  '(default
     ((t (:stipple nil
  	  :background "#ffffff"
  	  :foreground "#505050"
  	  :inverse-video nil
  	  :box nil
  	  :strike-through nil
   	  :overline nil
  	  :underline nil
  	  :slant normal
  	  :weight normal
  	  ; :height 1
  	  :width normal
  	  :foundry "outline"
  	  :family "Bitstream Vera Sans Mono"))))

  '(bold ((t (:weight bold))))
  '(italic ((t (:slant italic))))
  '(bold-italic ((t (:slant italic :weight bold))))
  ; '(underline ((t (:underline t))))
  ; '(fixed-pitch ((t (:family "courier"))))
  ; '(variable-pitch ((t (:family "helv"))))
  ; '(shadow ((t (:foreground "grey70"))))
  ; '(link ((t (:foreground "cyan1" :underline t))))
  ; '(link-visited ((t (:foreground "violet"))))
  ; '(highlight ((t (:background "darkolivegreen"))))
  ; Region color is default selection color in FireFox.
  '(region ((t (:background "#a8d1ff"))))
  ; '(secondary-selection ((t (:background "darkslateblue"))))
  ; '(trailing-whitespace ((t (:background "red"))))
  ; '(escape-glyph ((t (:foreground "cyan"))))
  ; '(nobreak-space ((t (:underline t))))
  ; '(mode-line ((t (:background "darkslateblue" :foreground "yellow" :box (:line-width -1 :style released-button)))))
  ; '(mode-line-inactive ((t (:background "grey30" :foreground "grey80" :box (:line-width -1 :color "grey40" :style nil) :weight light))))
  ; '(mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
  ; '(mode-line-emphasis ((t (:weight bold))))
  ; '(mode-line-buffer-id ((t (:weight bold))))
  ; '(header-line ((t (:background "grey90" :foreground "grey20" :box nil))))
  ; '(minibuffer-prompt ((t (:foreground "cyan"))))
  ; '(fringe ((t (:background "grey10"))))
  ; '(border ((t (:background "white"))))
  ; '(cursor ((t (:background "yellow"))))
  ; '(mouse ((t (:background "white"))))
  ; '(tool-bar ((t (:background "grey75" :foreground "black" :box (:line-width 1 :style released-button)))))
  ; '(glyphless-char ((t (:height 0.6))))
  ; '(error ((t (:foreground "Pink" :weight bold))))
  ; '(warning ((t (:foreground "DarkOrange" :weight bold))))
  ; '(success ((t (:foreground "Green1" :weight bold))))
  '(font-lock-comment-face ((t (:foreground "#909080"
				:slant italic))))
  '(font-lock-string-face ((t (:foreground "#900000"))))
  ;; TODO: '(font-lock-doc-face ((t (:foreground "#ff0000"))))
  '(font-lock-keyword-face ((t (:foreground "black"
				:weight bold))))
  '(font-lock-builtin-face ((t (:foreground "black"
			        :weight bold))))
  '(font-lock-function-name-face ((t (:foreground "#900000"
				      :weight bold))))
  '(font-lock-variable-name-face ((t (:foreground "#008080")))) ; teal
  '(font-lock-type-face ((t (:foreground "#008080"))))          ; teal
  '(font-lock-constant-face ((t (:foreground "#990073"))))
  '(font-lock-warning-face ((t (:foreground "#ff0000"))))
  ; '(isearch ((t (:background "palevioletred2" :foreground "brown4"))))
  ; '(isearch-fail ((t (:background "red4"))))
  ; '(lazy-highlight ((t (:background "paleturquoise4"))))
  ; '(match ((t (:background "RoyalBlue3"))))
  ; '(buffer-menu-buffer ((t (:weight bold))))
  ; '(tooltip ((t (:background "lightyellow" :foreground "black"))))
  ; '(widget-documentation ((t (:foreground "lime green"))))
  ; '(widget-button ((t (:weight bold))))
  ; '(widget-field ((t (:background "dim gray"))))
  ; '(widget-single-line-field ((t (:background "dim gray"))))
  ; '(widget-inactive ((t (:foreground "light gray"))))
  ; '(widget-button-pressed ((t (:foreground "red"))))
  ; '(show-paren-mismatch-face ((t (:background "purple" :foreground "white"))))
  ; '(show-paren-match-face ((t (:background "turquoise"))))
  ; '(show-block-face9 ((t (:background "gray50"))))
  ; '(show-block-face8 ((t (:background "gray45"))))
  ; '(show-block-face7 ((t (:background "gray40"))))
  ; '(show-block-face6 ((t (:background "gray35"))))
  ; '(show-block-face5 ((t (:background "gray30"))))
  ; '(show-block-face4 ((t (:background "gray25"))))
  ; '(show-block-face3 ((t (:background "gray20"))))
  ; '(show-block-face2 ((t (:background "gray15"))))
  ; '(show-block-face1 ((t (:background "gray10"))))
  ; '(ibuffer-marked-face ((t (:foreground "green"))))
  ; '(ibuffer-deletion-face ((t (:foreground "red"))))
  ; '(comint-highlight-prompt ((t (:foreground "cyan"))))
  ; '(comint-highlight-input ((t (:weight bold))))
  ; '(clearcase-dired-checkedout-face ((t (:foreground "red"))))
  ; '(CUA-rectangle-noselect-face ((t (:background "dimgray" :foreground "white"))))
  ; '(CUA-rectangle-face ((t (:background "maroon" :foreground "white"))))
  ; '(CUA-global-mark-face ((t (:background "cyan" :foreground "black"))))
 )

(provide-theme 'githublike)

;;; githublike-theme.el ends here

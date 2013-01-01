
;; Reference:
;; http://shibayu36.hatenablog.com/entry/2012/12/29/001418

; file名の補完で大文字小文字を区別しない
(setq completion-ignore-case t)

; バッファ自動再読み込み
(global-auto-revert-mode 1)

; 同名ファイルのバッファ名の識別文字列を変更する
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

; 現在行のハイライト
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background  "#98FB98"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)

;; タブを使わず 4スペースにする
(setq-default tab-width 4 indent-tabs-mode nil)


(setq ruby-deep-indent-paren nil)

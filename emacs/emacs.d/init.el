
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)

(setq emacs.d (file-name-directory load-file-name))
(load (concat emacs.d "init/misc.el"))
;(add-to-list 'load-path emacs-d)
;(add-to-list 'load-path
;             (concat emacs-d "/site-lisp-24"))
;(add-to-list 'load-path
;	     (concat emacs-d "/lib"))
(add-to-list 'custom-theme-load-path
	     (concat emacs.d "lib-custome-theme"))
;; fonts
;(if (display-graphic-p)
;    (set-fontset-font
;      (frame-parameter nil 'font)
;      'mule-unicode-0100-24ff
;      '("Bitstream Vera Sans Mono" . "iso10646-1")))

;; package.el
;(require 'package)

;; Marmalade (Repository for the package.el)
;(add-to-list 'package-archives
;	     '("marmalade" . "http://marmalade-repo.org/packages/"))
;(setq package-user-dir (concat emacs-d ".vendor"))
;(package-initialize)

;; quickrun.el
;(require 'quickrun)

;; auto-complete.el
;(require 'auto-complete)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
;(require 'auto-complete-config)
;(ac-config-default)

;; anything.el
;(require 'anything)

;; popwin.el
;(require 'popwin)

;; markdown-mode.el
;(require 'markdown-mode)
;(require 'yaml-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (githublike)))
 '(custom-safe-themes (quote ("e8a39e019e380adf5c16d4b851727dbf1796381a38acc3a27ca38284b1cd55cb" "896559ec55905a25a08fb185855bafc1b20ce656e17eadbd782dbb04e62a865f" "0addc92cacd6ba401d6d6b3f618539bf330c3e31a85b78208c0b6305eda4fb18" "98ec23dee203cbd2ffb2a1ce4fb0917416707e9ec05965afca36eb997d2fa1ac" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;(require 'macra-mode)

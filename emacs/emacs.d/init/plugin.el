
;; auto-complete.el
(unless (locate-library "auto-complete")
  (el-get 'sync 'auto-complete))

(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(require 'auto-complete-config)
(ac-config-default)



;; quickrun.el
(unless (locate-library "quickrun")
  (el-get 'sync 'quickrun))
(require 'quickrun)

;; anything.el
(unless (locate-library "anything")
  (el-get 'sync 'anything))
(require 'anything)

;; popwin.el
(unless (locate-library "popwin")
  (el-get 'sync 'popwin))
(require 'popwin)

;; markdown-mode.el
;(require 'markdown-mode)
;(require 'yaml-mode)

;(require 'macra-mode)


(unless (locate-library "undo-tree")
  (el-get 'sync 'undo-tree))

(when (require 'undo-tree nil t)
  (global-undo-tree-mode))

(unless (locate-library "haskell-mode")
  (el-get 'sync 'haskell-mode))

(require 'haskell-mode)


(unless (locate-library "auto-complete")
  (el-get 'sync 'auto-complete))

(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(require 'auto-complete-config)
(ac-config-default)

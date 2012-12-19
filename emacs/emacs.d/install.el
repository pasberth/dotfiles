(require 'package)

(defun for-each (f ls)
  (let (x)
    (while ls
      (setq x (car ls))
      (setq ls (cdr ls))
      (funcall f x))))

(for-each
  (lambda (pkg) (unless (package-installed-p pkg) (package-install pkg)))
  '( quickrun
     popup
     popwin
     anything
     auto-complete
     markdown-mode
     scala-mode
     d-mode
     haskell-mode
     yaml-mode
     yasnippet
     yasnippet-bundle))

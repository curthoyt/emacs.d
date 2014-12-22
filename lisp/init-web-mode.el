(require-package 'web-mode)
(require 'web-mode)
(add-auto-mode 'web-mode "\\.hbs\\'")
(add-auto-mode 'web-mode "\\.handlebars\\'")
(add-auto-mode 'web-mode "\\.mustache\\'")
;; (add-auto-mode 'web-mode "\\.html?\\'")
(add-auto-mode 'web-mode "\\.jst\\'")
(add-auto-mode 'web-mode "\\.jsx\\'")

(require-package 'jade-mode)
(require 'jade-mode)
(add-auto-mode 'jade-mode "\\.jade\\'")

(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

(add-hook 'web-mode-hook 'subword-mode)

(provide 'init-web-mode)

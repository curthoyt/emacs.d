(require-package 'base16-theme)

(when *is-a-mac*
  (setq mac-option-modifier 'meta))

(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-$") 'replace-string)
(global-set-key (kbd "C-x a r") 'align-regexp)
(global-set-key (kbd "RET") 'newline-and-indent)

(add-hook 'text-mode-hook 'turn-on-auto-fill)

(setq-default initial-major-mode 'text-mode)
(setq-default initial-scratch-message "")
(setq-default visible-bell nil)
(setq-default make-backup-files nil)

(setq ring-bell-function 'ignore)
(setq kill-whole-line t)

(show-paren-mode 1)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; (desktop-save-mode nil)

(provide 'init-local)

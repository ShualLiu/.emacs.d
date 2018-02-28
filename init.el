(defalias 'yes-or-no-p 'y-or-n-p)
(add-to-list 'load-path "/home/shual/.emacs.d/gotests")

(helm-mode)
(sublimity-mode)
(yas-global-mode)
(global-hl-todo-mode)
(global-hl-line-mode)
(autopair-global-mode)
(global-undo-tree-mode)
(projectile-global-mode)
(go-guru-hl-identifier-mode)
(require 'go-autocomplete)
(require 'helm-config)
(require 'gotests)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'go-mode-hook
	  (lambda ()
	    (add-hook 'before-save-hook 'gofmt-before-save)))
(global-set-key (kbd "M-p") 'ace-window)
(global-set-key [f12] 'ecb-minor-mode)
(global-set-key [f11] 'toggle-frame-maximized)

(ac-config-default)
(ac-set-trigger-key "TAB")
(move-text-default-bindings)

;;sublimity
(require 'sublimity)
(require 'sublimity-scroll)
;;smex
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) 

;;(defun my:ac-c-headers-init ()
;;  (require 'auto-complete-c-headers)
;;  (add-to-list 'ac-sources 'ac-source-c-headers))
;;(add-hook 'c++-mode-hook 'my:ac-c-headers-init)
;;(add-hook 'c-mode-hook 'my:ac-c-headers-init)



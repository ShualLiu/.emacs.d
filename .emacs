(defun fullscreen (&optional f)
       (interactive)
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
       (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
			      '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))
(fullscreen)
(global-set-key [f11] 'fullscreen)
(require 'package) ;; You might already have this line
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(line-number-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 143 :width normal)))))

(require 'go-autocomplete)
(ac-config-default)
;;(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(ac-set-trigger-key "TAB")
;;(setq ac-auto-start nil)
(setq yas-snippet-dirs
      '(;;"~/.emacs.d/snippets"
        ;;"/path/to/some/collection/"
        ;;"/path/to/yasnippet/yasmate/snippets"
        "/home/shual/.emacs.d/elpa/yasnippet-20170923.1646/snippets" 
        ))
(yas-global-mode 1)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(autopair-global-mode)
(projectile-global-mode)
(require 'helm-config)
(helm-mode 1)
(go-guru-hl-identifier-mode)
(add-hook 'go-mode-hook
	  (lambda ()
	    (add-hook 'before-save-hook 'gofmt-before-save)))
(global-set-key (kbd "M-p") 'ace-window)
(global-set-key [f5] #'(lambda () (interactive) (revert-buffer t t nil)))
(add-to-list 'load-path "/home/shual/.emacs.d/gotests")
(require 'gotests)
(require 'highlight-symbol)
(global-hl-line-mode)
(global-undo-tree-mode)
(exec-path-from-shell-initialize)

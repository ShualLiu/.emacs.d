(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (light-blue)))
 '(delete-selection-mode nil)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (symon ac-emacs-eclim eclim multiple-cursors imenu-list markdown-mode json-reformat gh-md helm-go-package random-splash-image auto-yasnippet yasnippet yasnippet-snippets ace-window autopair dockerfile-mode gitconfig-mode gitignore-mode go-autocomplete go-guru google-this helm-ag helm-projectile helm-swoop hl-todo lua-mode magit move-text nginx-mode nyan-mode protobuf-mode rainbow-delimiters yaml-mode)))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 173 :width normal)))))

(require 'helm-config)
(helm-mode)
(global-set-key (kbd "M-x") #'helm-M-x)
;;(global-set-key (kbd "C-x C-f") #'helm-find-files)

(global-hl-todo-mode)
(autopair-global-mode)
(global-undo-tree-mode)
(projectile-global-mode)
(go-guru-hl-identifier-mode)
(require 'go-autocomplete)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(global-set-key (kbd "M-p") 'ace-window)
(ac-config-default)
(move-text-default-bindings)
(nyan-mode)
(add-to-list 'load-path
                "/home/aiken/.emacs.d/elpa/yasnippet-snippets-20180324.1124/snippets")
(yas-global-mode)
;;NOTE how to type H key
(global-set-key (kbd "M-[") #'aya-create)
(global-set-key (kbd "M-]") #'aya-expand)
(eval-after-load 'go-mode
  '(substitute-key-definition 'go-import-add 'helm-go-package go-mode-map))
(global-linum-mode)
(global-set-key (kbd "C-H-c C-H-c") 'mc/edit-lines)

;; (require 'eclim)
;; (setq eclimd-autostart t)
;; (defun my-java-mode-hook ()
;;     (eclim-mode t))
;; (add-hook 'java-mode-hook 'my-java-mode-hook)

;; (custom-set-variables
;;   '(eclim-eclipse-dirs '("/home/aiken/Environment/eclipse"))
;;   '(eclim-executable "/home/aiken/Environment/eclipse/eclimd"))
;; ;; regular auto-complete initialization
;; (require 'auto-complete-config)
;; (ac-config-default)
;; ;; add the emacs-eclim source
;; ;;(require 'ac-emacs-eclim-source)
;; (ac-emacs-eclim-config)
(add-hook 'go-mode-hook
	  (lambda ()
	    (add-hook 'before-save-hook 'gofmt-before-save)))
(which-function-mode)
(global-set-key (kbd "C-'") #'imenu-list-smart-toggle)
(symon-mode)

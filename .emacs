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
 '(column-number-mode t)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" default)))
 '(delete-selection-mode nil)
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(imenu-list-size 0.3)
 '(inhibit-startup-screen t)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (go-imports go-impl go-direx flycheck-gometalinter exec-path-from-shell google-translate monokai-theme solarized-theme evil git-link go-tag ecb diminish smeargle golden-ratio sr-speedbar symon anzu gotest sunshine imenu-list markdown-mode json-reformat gh-md helm-go-package random-splash-image auto-yasnippet yasnippet yasnippet-snippets ace-window autopair dockerfile-mode gitconfig-mode gitignore-mode go-autocomplete go-guru google-this helm-ag helm-projectile helm-swoop hl-todo lua-mode magit move-text nginx-mode nyan-mode protobuf-mode rainbow-delimiters yaml-mode)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background-mode nil)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 188 :width normal)))))

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
(add-hook 'go-mode-hook
	  (lambda ()
	    (add-hook 'before-save-hook 'gofmt-before-save)))
(global-set-key (kbd "M-p") 'ace-window)
(ac-config-default)
(move-text-default-bindings)
(nyan-mode)
(add-to-list 'load-path
                "~/.emacs.d/elpa/yasnippet-snippets-20180324.1124/snippets")
(yas-global-mode)
;;NOTE how to type H key
(global-set-key (kbd "M-[") #'aya-create)
(global-set-key (kbd "M-]") #'aya-expand)
(global-linum-mode)
(eval-after-load 'go-mode
  '(substitute-key-definition 'go-import-add 'helm-go-package go-mode-map))
;;(setq sunshine-location "Chengdu, CN")
(add-to-list 'load-path "~/.emacs.d/gotests")
(require 'gotests)
(which-function-mode)
(symon-mode)
(global-set-key (kbd "C-'") #'imenu-list-smart-toggle)
(setq speedbar-use-images nil)
(global-set-key (kbd "C-,") 'avy-goto-char)
(global-set-key (kbd "C-.") 'avy-goto-char-2)

(global-set-key (kbd "C-x v s") 'smeargle)
(global-set-key (kbd "C-x v c") 'smeargle-commits)
(global-hl-line-mode)
;; (diminish 'undo-tree-mode)
;; (diminish 'helm-mode)
;; (diminish 'autopair-mode)
;; (diminish 'which-function-mode)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

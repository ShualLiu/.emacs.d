;; (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                          ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize) ;; You might already have this line

;;(add-to-list 'load-path "~/.emacs.d/custom")
;;(require 'setup-general)
;;(require 'setup-ggtags)
;;(require 'setup-cedet)
;;(require 'setup-editing)
;;(define-key c-mode-map  [(tab)] 'company-complete)
;;(define-key c++-mode-map  [(tab)] 'company-complete)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
    ("701134b203c256bdc2ff97d7f6f5257a1a037f494d51c95feeb33702e3fe0e51" "4486ade2acbf630e78658cd6235a5c6801090c2694469a2a2b4b0e12227a64b9" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" default)))
 '(delete-selection-mode nil)
 '(fci-rule-color "#eee8d5")
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote relative))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-paren-background-colors
   (quote
    ("#00FF99" "#CCFF99" "#FFCC99" "#FF9999" "#FF99CC" "#CC99FF" "#9999FF" "#99CCFF" "#99FFCC" "#7FFF00")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(imenu-list-position (quote left))
 '(imenu-list-size 0.25)
 '(inhibit-startup-screen t)
 '(magit-diff-use-overlays nil)
 '(minimap-minimum-width 24)
 '(minimap-window-location (quote right))
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-src-block-faces (quote (("emacs-lisp" (:background "#F0FFF0")))))
 '(package-selected-packages
   (quote
    (cmake-font-lock cpputils-cmake neotree go-dlv doom-modeline tornado-template-mode ensime scala-mode config-general-mode yatemplate clang-format go-add-tags indent-tools rainbow-mode evil-vimish-fold origami dimmer beacon pos-tip ranger treemacs-evil treemacs smooth-scrolling auto-complete-c-headers ac-c-headers md-readme dumb-jump iedit comment-dwim-2 emacs-setup dtrt-indent clean-aindent-mode counsel-projectile volatile-highlights ws-butler zygospore helm-gtags company-go company-c-headers ggtags irony organic-green-theme oceanic-theme helm-emms emms emojify-logos emojify minimap diff-hl py-yapf importmagic ob-ipython ipython-shell-send flymake-python-pyflakes flycheck-pyflakes py-autopep8 jedi jsonnet-mode sage-shell-mode python-mode py-isort yapfify live-py-mode elpy pyenv-mode anaconda-mode pyvenv cmake-project cmake-ide cmake-mode helm-make pkgbuild-mode go-imports go-impl go-direx flycheck-gometalinter exec-path-from-shell google-translate monokai-theme solarized-theme evil git-link go-tag ecb diminish smeargle golden-ratio sr-speedbar symon anzu gotest sunshine imenu-list markdown-mode json-reformat gh-md helm-go-package random-splash-image auto-yasnippet yasnippet yasnippet-snippets ace-window autopair dockerfile-mode gitconfig-mode gitignore-mode go-autocomplete go-guru google-this helm-ag helm-projectile helm-swoop hl-todo lua-mode magit move-text nginx-mode nyan-mode protobuf-mode rainbow-delimiters yaml-mode)))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 181 :width normal)))))

(require 'helm-config)
(helm-mode)
(global-set-key (kbd "M-x") #'helm-M-x)

(global-hl-todo-mode)
(autopair-global-mode)
(global-undo-tree-mode)
(projectile-global-mode)
(go-guru-hl-identifier-mode)
(require '                                                                                                                                                    go-autocomplete)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'go-mode-hook
	  (lambda ()
	    (add-hook 'before-save-hook 'gofmt-before-save)))
(global-set-key (kbd "M-p") 'ace-window)
(ac-config-default)
(move-text-default-bindings)
(nyan-mode)
(add-to-list 'load-path
                "~/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets")
(yas-global-mode)

(global-set-key (kbd "M-[") #'aya-create)
(global-set-key (kbd "M-]") #'aya-expand)
(global-linum-mode)
(eval-after-load 'go-mode
  '(substitute-key-definition 'go-import-add 'helm-go-package go-mode-map))
(add-to-list 'load-path "~/.emacs.d/gotests")
(require 'gotests)
(which-function-mode)
;;(symon-mode)
(global-set-key (kbd "C-'") #'imenu-list-smart-toggle)
(setq speedbar-use-images nil)
(global-set-key (kbd "C-,") 'avy-goto-char)
(global-set-key (kbd "C-.") 'avy-goto-char-2)
(global-set-key (kbd "C-x v s") 'smeargle)
(global-set-key (kbd "C-x v c") 'smeargle-commits)
(global-hl-line-mode)
(diminish 'undo-tree-mode)
(diminish 'helm-mode)
(diminish 'autopair-mode)
;; (diminish 'which-function-mode)
(diminish 'minimap-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(global-diff-hl-mode)
(dumb-jump-mode)

(load-file (concat user-emacs-directory "/cedet/cedet-devel-load.el"))
(load-file (concat user-emacs-directory "cedet/contrib/cedet-contrib-load.el"))    
(require 'cc-mode)
(require 'semantic)
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode t)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode t)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode t)
(semantic-add-system-include "/usr/include/")
(semantic-add-system-include "/usr/local/include/")
(semantic-add-system-include "/usr/src/linux-headers-4.9.0-6-common/include/")
(semantic-add-system-include "/usr/src/linux-headers-4.9.0-6-amd64/include/")
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(semantic-mode 1)
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

(eval-after-load "helm-gtags"
  '(progn
     (define-key helm-gtags-mode-map (kbd "M-t") 'helm-gtags-find-tag)
     (define-key helm-gtags-mode-map (kbd "M-r") 'helm-gtags-find-rtag)
     (define-key helm-gtags-mode-map (kbd "M-s") 'helm-gtags-find-symbol)
     (define-key helm-gtags-mode-map (kbd "M-g M-p") 'helm-gtags-parse-file)
     (define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
     (define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
     (define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)))
;; Enable EDE (Project Management) features
;;(global-ede-mode 1)
(setq-default c-basic-offset 8)
(diminish 'abbrev-mode)
(diminish 'helm-gtags-mode)

(defun my:ac-c-headers-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))

(add-hook 'c++-mode-hook 'my:ac-c-headers-init)
(add-hook 'c-mode-hook 'my:ac-c-headers-init)
(anzu-mode t)
(smooth-scrolling-mode t)
(beacon-mode)
(global-set-key (kbd "M-s M-s") 'beacon-blink)

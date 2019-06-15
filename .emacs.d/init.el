(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/configuration.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#1B2229" "#BF616A" "#A3BE8C" "#ECBE7B" "#8FA1B3" "#c678dd" "#46D9FF" "#DFDFDF"])
 '(custom-safe-themes
   (quote
	("2a9039b093df61e4517302f40ebaf2d3e95215cb2f9684c8c1a446659ee226b9" "356e5cbe0874b444263f3e1f9fffd4ae4c82c1b07fe085ba26e2a6d332db34dd" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "aaffceb9b0f539b6ad6becb8e96a04f2140c8faa1de8039a343a4f1e009174fb" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "57f95012730e3a03ebddb7f2925861ade87f53d5bbb255398357731a7b1ac0e0" default)))
 '(fci-rule-color "#65737E")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#D08770"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#A3BE8C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#4f5b66"))
 '(package-selected-packages
   (quote
	(gruvbox-theme irony-eldoc company-irony yasnippet-snippets which-key web-mode use-package try smartparens powerline-evil org-bullets neotree markdown-mode magit htmlize helm-projectile flycheck exec-path-from-shell evil-surround evil-commentary emmet-mode elpy dracula-theme doom-themes atom-one-dark-theme ace-window)))
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2F3841")
 '(vc-annotate-color-map
   (list
	(cons 20 "#A3BE8C")
	(cons 40 "#bbbe86")
	(cons 60 "#d3be80")
	(cons 80 "#ECBE7B")
	(cons 100 "#e2ab77")
	(cons 120 "#d99973")
	(cons 140 "#D08770")
	(cons 160 "#cc8294")
	(cons 180 "#c97db8")
	(cons 200 "#c678dd")
	(cons 220 "#c370b6")
	(cons 240 "#c16890")
	(cons 260 "#BF616A")
	(cons 280 "#a35f69")
	(cons 300 "#875e68")
	(cons 320 "#6b5c67")
	(cons 340 "#65737E")
	(cons 360 "#65737E")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(powerline-evil-emacs-face ((t (:background "#6c71c4" :foreground "#eee8d5"))))
 '(powerline-evil-insert-face ((t (:background "#268bd2" :foreground "#eee8d5"))))
 '(powerline-evil-motion-face ((t (:background "#d33682" :foreground "#eee8d5"))))
 '(powerline-evil-normal-face ((t (:background "#35940F" :foreground "#eee8d5"))))
 '(powerline-evil-operator-face ((t (:background "#2aa198" :foreground "#eee8d5"))))
 '(powerline-evil-replace-face ((t (:background "#dc322f" :foreground "#eee8d5"))))
 '(powerline-evil-visual-face ((t (:background "#cb4b16" :foreground "#eee8d5")))))

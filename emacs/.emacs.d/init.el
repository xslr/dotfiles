;;; init.el --- Initialization script for Emacs

;;; Commentary:

;;; Code:

(setq-default
 indent-tabs-mode nil
 tab-width 2
 standard-indent tab-width
 c-basic-offset tab-width)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8b4d8679804cdca97f35d1b6ba48627e4d733531c64f7324f764036071af6534" "94e31993c54782f0db8494c42dc7ddd4195f9e3e43b9caff63f3f7f6ad6c8693" "57f95012730e3a03ebddb7f2925861ade87f53d5bbb255398357731a7b1ac0e0" "2a998a3b66a0a6068bcb8b53cd3b519d230dd1527b07232e54c8b9d84061d48d" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "8cf1002c7f805360115700144c0031b9cfa4d03edc6a0f38718cef7b7cabe382" "12670281275ea7c1b42d0a548a584e23b9c4e1d2dabb747fd5e2d692bcd0d39b" "d9850d120be9d94dd7ae69053630e89af8767c36b131a3aa7b06f14007a24656" "7bef2d39bac784626f1635bd83693fae091f04ccac6b362e0405abf16a32230c" "ef04dd1e33f7cbd5aa3187981b18652b8d5ac9e680997b45dc5d00443e6a46e3" "3de3f36a398d2c8a4796360bfce1fa515292e9f76b655bb9a377289a6a80a132" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "b9a06c75084a7744b8a38cb48bc987de10d68f0317697ccbd894b2d0aca06d2b" "a19265ef7ecc16ac4579abb1635fd4e3e1185dcacbc01b7a43cf7ad107c27ced" "31992d4488dba5b28ddb0c16914bf5726dc41588c2b1c1a2fd16516ea92c1d8e" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(exec-path
   (quote
    ("/usr/local/bin" "/usr/local/sbin" "/usr/bin" "/usr/sbin" "/home/subratm/bin" "/usr/libexec/emacs/25.3/x86_64-redhat-linux-gnu" "/home/subratm/Apps/sml/bin")))
 '(package-selected-packages
   (quote
    (company-jedi pyvenv company-irony company-irony-c-headers use-package all-the-icons-ivy atom-one-dark-theme counsel-projectile projectile-ripgrep i3wm swiper company company-racer cargo flycheck-rust racer rust-mode eink-theme elm-mode flycheck-elm sml-mode go-mode rainbow-delimiters dante haskell-mode projectile flx solarized-theme magit flycheck-irony))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-frame-font "Dina-11")
(load-theme 'atom-one-dark)
(tool-bar-mode -1)
(menu-bar-mode -1)

(use-package counsel)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-x") 'counsel-M-x)

(use-package swiper)
(global-set-key (kbd "C-s") 'swiper)

(use-package company)
(setq company-idle-delay t)
(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'rust-mode-hook 'racer-mode)

(use-package flycheck)
(global-flycheck-mode t)

;; (use-package projectile)
;; (projectile-mode +1)

(use-package counsel-projectile)
(counsel-projectile-mode)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;(global-set-key (kbd "C-c p f") 'counsel-projectile-find-file)

;(use-package spaceline)
;(spaceline-emacs-theme)

;; Rainbow Delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; golang
(defun my-go-mode-hook ()
  (setq indent-tabs-mode nil)
  (add-hook 'before-save-hook 'gofmt-before-save) ; gofmt before every save
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  )
(add-hook 'go-mode-hook 'my-go-mode-hook)

;; python
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my/python-mode-hook)

(provide 'init)

;;; init.el ends here

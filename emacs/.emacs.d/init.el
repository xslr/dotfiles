;;; init.el --- Initialization script for Emacs

;;; Commentary:

;;; Code:

(setq-default
 indent-tabs-mode nil
 tab-width 2
 standard-indent tab-width
 c-basic-offset tab-width
 js-indent-level tab-width)

;(semantic-mode 1)

(require 'package)
(add-to-list 'package-archives (cons "melpa" "https://melpa.org/packages/") t)
(add-to-list 'package-archives (cons "melpa-stable" "https://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives (cons "gnu" "https://elpa.gnu.org/packages/")))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(compilation-scroll-output (quote first-error))
 '(custom-safe-themes
   (quote
    ("b0eb9e6e6dcb29c6ec4bcd72605188f482d52ee019cb0ccc73b5404be4f3a6e7" "bffb799032a7404b33e431e6a1c46dc0ca62f54fdd20744a35a57c3f78586646" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "003a9aa9e4acb50001a006cfde61a6c3012d373c4763b48ceb9d523ceba66829" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "9b1c580339183a8661a84f5864a6c363260c80136bd20ac9f00d7e1d662e936a" "01e067188b0b53325fc0a1c6e06643d7e52bc16b6653de2926a480861ad5aa78" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "bf5bdab33a008333648512df0d2b9d9710bdfba12f6a768c7d2c438e1092b633" "45f7fec480eb3bdf364cbfcbc8d11ed0228bcf586ce7370fc30a6ce5770f181a" "adf5275cc3264f0a938d97ded007c82913906fc6cd64458eaae6853f6be287ce" "bf390ecb203806cbe351b966a88fc3036f3ff68cd2547db6ee3676e87327b311" "2296db63b1de14e65390d0ded8e2b5df4b9e4186f3251af56807026542a58201" "8b4d8679804cdca97f35d1b6ba48627e4d733531c64f7324f764036071af6534" "94e31993c54782f0db8494c42dc7ddd4195f9e3e43b9caff63f3f7f6ad6c8693" "57f95012730e3a03ebddb7f2925861ade87f53d5bbb255398357731a7b1ac0e0" "2a998a3b66a0a6068bcb8b53cd3b519d230dd1527b07232e54c8b9d84061d48d" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "8cf1002c7f805360115700144c0031b9cfa4d03edc6a0f38718cef7b7cabe382" "12670281275ea7c1b42d0a548a584e23b9c4e1d2dabb747fd5e2d692bcd0d39b" "d9850d120be9d94dd7ae69053630e89af8767c36b131a3aa7b06f14007a24656" "7bef2d39bac784626f1635bd83693fae091f04ccac6b362e0405abf16a32230c" "ef04dd1e33f7cbd5aa3187981b18652b8d5ac9e680997b45dc5d00443e6a46e3" "3de3f36a398d2c8a4796360bfce1fa515292e9f76b655bb9a377289a6a80a132" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "b9a06c75084a7744b8a38cb48bc987de10d68f0317697ccbd894b2d0aca06d2b" "a19265ef7ecc16ac4579abb1635fd4e3e1185dcacbc01b7a43cf7ad107c27ced" "31992d4488dba5b28ddb0c16914bf5726dc41588c2b1c1a2fd16516ea92c1d8e" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(exec-path
   (quote
    ("/usr/local/bin" "/usr/local/sbin" "/usr/bin" "/usr/sbin" "/home/munu/bin" "/usr/libexec/emacs/26.1/x86_64-redhat-linux-gnu" "/home/munu/Apps/sml/bin" "/home/munu/apps/gcc-arm-none-eabi-7-2018-q2-update/bin" "/home/munu/Apps/texlive/2018/bin/x86_64-linux" "/usr/lib/llvm/6/bin")))
 '(flycheck-clang-args (quote ("-Wno-pragma-once-outside-header")))
 '(global-flycheck-mode t)
 '(js-chain-indent t)
 '(package-selected-packages
   (quote
    (iodine-theme color-theme-sanityinc-tomorrow gotest company-go use-package rtags cmake-ide projectile-ripgrep racer powerline latex-preview-pane reykjavik-theme nord-theme company-jedi pyvenv company-irony company-irony-c-headers all-the-icons-ivy atom-one-dark-theme counsel-projectile i3wm swiper company company-racer cargo flycheck-rust eink-theme elm-mode flycheck-elm go-mode rainbow-delimiters dante haskell-mode projectile flx magit flycheck-irony)))
 '(scroll-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package use-package
  :ensure t
  :pin melpa-stable)

(use-package solarized-theme
  :ensure t
  :pin melpa-stable)

(use-package iodine-theme
  :ensure t
  :pin melpa)

(use-package yaml-mode
  :ensure t
  :pin melpa-stable)

(use-package flycheck-yamllint
  :ensure t
  :pin melpa-stable)

;; (use-package airline-themes
;;   :ensure t
;;   :pin melpa)
;; (load-theme 'airline-powerlineish)
;; (airline-themes-set-modeline)

(setq inhibit-startup-screen t)

;(set-frame-font "Dina-10")
;(set-frame-font "Cascadia Code-10")
;(set-frame-font "Inconsolata-12")
;(set-frame-font "Ubuntu Mono-12")
;(set-frame-font "Input Mono Condensed-12")
;(set-frame-font "Input Mono-10")
(set-frame-font "JetBrains Mono-11")

;(load-theme 'atom-one-dark)
;(load-theme 'solarized-dark)
;(load-theme 'wombat)
;(load-theme 'sanityinc-tomorrow-night)
;(load-theme 'leuven)
(load-theme 'iodine)
(tool-bar-mode -1)
(menu-bar-mode -1)

(global-whitespace-mode)
(setq-default whitespace-line-column 120)
(setq-default whitespace-style '(face trailing lines tabs))

(global-set-key (kbd "C-c /") 'comment-or-uncomment-region)

(use-package counsel
  :ensure t
  :pin melpa-stable)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-x") 'counsel-M-x)

(use-package swiper
  :ensure t
  :pin melpa-stable)
(global-set-key (kbd "C-s") 'swiper)

(use-package company
  :ensure t
  :pin melpa-stable)
(setq company-idle-delay t)
(add-hook 'after-init-hook 'global-company-mode)

(use-package company-go
  :ensure t
  :pin melpa-stable)

(use-package irony
  :ensure t
  :pin melpa-stable)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(setq irony-additional-clang-options '("-Wno-pragma-once-outside-header"))

(use-package company-irony
  :ensure t
  :pin melpa-stable)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(add-hook 'rust-mode-hook 'racer-mode)

(use-package flycheck
  :ensure t
  :pin melpa)
(global-flycheck-mode t)

(use-package gotest
  :ensure t
  :pin melpa)

(use-package racer
  :ensure t
  :pin melpa-stable)

(use-package rust-mode
  :ensure t
  :pin melpa-stable)

(use-package projectile-ripgrep
  :ensure t
  :pin melpa-stable)

(use-package projectile
  :ensure t
  :pin melpa-stable)
(projectile-mode +1)

(use-package rtags
  :ensure t
  :pin melpa-stable)

(use-package cmake-ide
  :ensure t
  :pin melpa-stable)
(cmake-ide-setup)

(use-package counsel-projectile)
(counsel-projectile-mode)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;(global-set-key (kbd "C-c p f") 'counsel-projectile-find-file)

;; (use-package powerline
;;   :ensure t
;;   :pin melpa-stable)

(use-package latex-preview-pane
  :ensure t
  :pin melpa-stable)
(latex-preview-pane-enable)

(use-package magit
  :ensure t
  :pin melpa-stable)

;; Rainbow Delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; C/C++
(defun my/c-mode-hook()
  (local-set-key (kbd "C-c b") 'compile)
  (local-set-key (kbd "C-b") 'cmake-ide-compile)
  (local-set-key (kbd "<f12>") 'rtags-find-symbol-at-point)
  )
(add-hook 'c-mode-hook 'my/c-mode-hook)
(add-hook 'c++-mode-hook 'my/c-mode-hook)
(add-hook 'before-save-hook 'whitespace-cleanup) ; gofmt before every save

;; Rust
(defun my/rust-mode-hook()
  (local-set-key (kbd "C-c b") 'cargo-process-build)
  (local-set-key (kbd "C-c r") 'cargo-process-run)
  )
(add-hook 'rust-mode-hook 'my/rust-mode-hook)

;; golang
(defun my/go-mode-hook ()
  (setq indent-tabs-mode nil)
  (add-hook 'before-save-hook 'gofmt-before-save) ; gofmt before every save
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  (local-set-key (kbd "C-c t") 'go-test-current-project)
  )
(add-hook 'go-mode-hook 'my/go-mode-hook)

;; python
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi)
  )
(add-hook 'python-mode-hook 'my/python-mode-hook)

(provide 'init)

;;; init.el ends here

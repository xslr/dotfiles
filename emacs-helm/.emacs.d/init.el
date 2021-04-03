;;; init.el --- Initialization script for Emacs

;;; Commentary:

;;; Code:

(setq-default
 indent-tabs-mode nil
 tab-width 2
 standard-indent tab-width
 c-basic-offset tab-width
 js-indent-level tab-width)

(setq inhibit-startup-screen t)

(setq my-local-bin-dir (substitute-env-vars "$HOME/.local/bin"))
(setenv "PATH" (concat (concat my-local-bin-dir ":") (getenv "PATH")))
(setq exec-path (cons my-local-bin-dir exec-path))

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
 '(custom-safe-themes
   '("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default))
 '(package-selected-packages
   '(helm-projectile ag iedit color-theme-sanityinc-tomorrow use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(use-package ag
  :ensure t
  :pin melpa-stable)


(use-package cmake-ide
  :ensure t
  :pin melpa-stable)
(cmake-ide-setup)

(global-set-key (kbd "C-c b") 'cmake-ide-compile)


;; company, rtags and irony
(use-package company
  :ensure t
  :pin melpa-stable)
(setq company-idle-delay t)
(add-hook 'after-init-hook 'global-company-mode)

(use-package company-irony-c-headers
  :ensure t
  :pin melpa-stable)

(use-package company-irony
  :ensure t
  :pin melpa-stable)

(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))

(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; ; rtags and company-rtags
;; (use-package rtags
;;   :ensure t
;;   :pin melpa-stable)

;; (use-package company-rtags
;;   :ensure t
;;   :pin melpa-stable)
;; (setq rtags-completions-enabled t)

;; (eval-after-load 'company
;;   '(add-to-list
;;     'company-backends '(company-irony-c-headers company-irony company-rtags)))

;; (setq company-backends (delete 'company-semantic company-backends))
;; (setq rtags-autostart-diagnostics t)
;; (rtags-enable-standard-keybindings)

;; (setq company-idle-delay 0)
;; ;; (define-key c-mode-map [(tab)] 'company-complete)
;; ;; (define-key c++-mode-map [(tab)] 'company-complete)


(use-package color-theme-sanityinc-tomorrow
  :ensure t)


;; (use-package counsel-projectile
;;   :ensure t
;;   :pin melpa-stable)
;; (counsel-projectile-mode)
;; (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;; ;(global-set-key (kbd "C-c p f") 'counsel-projectile-find-file)


(use-package helm-projectile
  :ensure t)


;; flycheck
(use-package flycheck
  :ensure t
  :pin melpa-stable)

(use-package flycheck-irony
  :ensure t
  :pin melpa-stable)

(use-package flycheck-rtags
  :ensure t
  :pin melpa-stable)

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook 'flycheck-irony-setup))

(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)

(defun my-flycheck-rtags-setup ()
  (flycheck-select-checker 'rtags)
  (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
  (setq-local flycheck-check-syntax-automatically nil))
;; c-mode-common-hook is also called by c++-mode
(add-hook 'c-mode-common-hook 'my-flycheck-rtags-setup)


(use-package iedit
  :ensure t
  :pin melpa-stable)


(use-package magit
  :ensure t
  :pin melpa-stable)


(use-package projectile
  :ensure t
  :pin melpa-stable)
(projectile-mode +1)


(use-package projectile-ripgrep
  :ensure t
  :pin melpa-stable)


(use-package yasnippet
  :ensure t
  :pin melpa-stable)
(yas-global-mode)


(use-package yaml-mode
  :ensure t
  :pin melpa-stable)

(use-package flycheck-yamllint
  :ensure t
  :pin melpa-stable)


(use-package dockerfile-mode
  :ensure t
  :pin melpa-stable)

(use-package docker-compose-mode
  :ensure t
  :pin melpa-stable)


(use-package cmake-mode
  :ensure t
  :pin melpa-stable)



(load-theme 'sanityinc-tomorrow-night)
(set-frame-font "JetBrains Mono-10")

(tool-bar-mode -1)
(menu-bar-mode -1)
(global-hl-line-mode 1)

(global-whitespace-mode)
(setq-default whitespace-line-column 120)
(setq-default whitespace-style '(face trailing lines tabs))

(global-set-key (kbd "C-c e r") 'eval-region)

(provide 'init)

;;; init.el ends here

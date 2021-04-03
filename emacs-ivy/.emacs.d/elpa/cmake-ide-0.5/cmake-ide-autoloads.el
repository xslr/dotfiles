;;; cmake-ide-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "cmake-ide" "../../../../../.emacs.d/elpa/cmake-ide-0.5/cmake-ide.el"
;;;;;;  "523a5d22906485790df31fec922c589d")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/cmake-ide-0.5/cmake-ide.el

(autoload 'cmake-ide-setup "cmake-ide" "\
Set up the Emacs hooks for working with CMake projects." nil nil)

(autoload 'cmake-ide-maybe-run-cmake "cmake-ide" "\
Run CMake if the compilation database JSON file is not found." t nil)

(autoload 'cmake-ide-run-cmake "cmake-ide" "\
Run CMake and set compiler flags for auto-completion and flycheck.
This works by calling cmake in a temporary directory (or cmake-ide-build-dir)
and parsing the JSON file deposited there with the compiler
flags." t nil)

(autoload 'cmake-ide-load-db "cmake-ide" "\
Load compilation DB and set flags for current buffer." t nil)

(autoload 'cmake-ide-compile "cmake-ide" "\
Compile the project." t nil)

(autoload 'cmake-ide-maybe-start-rdm "cmake-ide" "\
Start the rdm (rtags) server." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "cmake-ide" "../../../../../.emacs.d/elpa/cmake-ide-0.5/cmake-ide.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/cmake-ide-0.5/cmake-ide.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cmake-ide" '("cmake-ide-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/cmake-ide-0.5/cmake-ide-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/cmake-ide-0.5/cmake-ide.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cmake-ide-autoloads.el ends here

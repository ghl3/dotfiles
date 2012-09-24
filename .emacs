
;; Welcome to my .emacs file
;; Simple but effective

;; Add to load path:
(add-to-list 'load-path "~/.emacs.d/")

;; custom-set-variables was added by Custom -- don't edit or cut/paste it
;; Your init file should contain only one such instance.
(custom-set-variables
 '(auto-compression-mode t nil (jka-compr)) 
 '(case-fold-search t)
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock)))

;; Follow git symbolic links
;; (set c-follow-symlinks t)

;;Set Smooth Scrolling
;;(require 'smooth-scrolling)
(set-variable 'scroll-step 1)

;; Goto line
;pressing Alt-g or Meta-g is goto line
(global-set-key [(alt g)] 'goto-line)
(global-set-key [(meta g)] 'goto-line) 

;; Follow sybolic links
(setq vc-follow-symlinks t)

(add-to-list 'custom-theme-load-path "~/.elisp")

;; Load everything in .elisp
;; add ~/.elisp directory and all subdirectories to load-path
(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
    (let* ((my-lisp-dir (expand-file-name "~/.elisp"))
	   (default-directory my-lisp-dir))
      (setq load-path (cons my-lisp-dir load-path))
      (normal-top-level-add-subdirs-to-load-path)))


(custom-set-faces
 
;;  (set-background-color "black" )
 (set-cursor-color "white")
 ;;(set-face-foreground 'default "white" ) 
 
 (set-face-foreground 'font-lock-comment-face "red" ) 
  (set-face-foreground 'font-lock-warning-face "red" ) 
  (set-face-foreground 'font-lock-variable-name-face "yellow")
;;  (copy-face 'default 'font-lock-preprocessor-face)
  (set-face-foreground 'font-lock-preprocessor-face "magenta")
  (set-face-foreground 'font-lock-function-name-face "blue")
  (set-face-foreground 'font-lock-string-face "cyan")
  (set-face-foreground 'font-lock-type-face "green")
  (set-face-foreground 'font-lock-constant-face "cyan")
  (set-face-foreground 'font-lock-keyword-face "magenta")
 
 )


;;(setq-default c-indent-level 2)
(setq c-default-style '((cc-mode . "java")
			(awk-mode . "awk")))

;; javascript mode
(autoload 'javascript-mode "javascript" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))

;; HTML and CSS Modes
(setq load-path (cons "~/.elisp/" load-path))
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))

(setq load-path (cons "~/.elisp/" load-path))
(autoload 'css-mode "css-mode")
(setq auto-mode-alist
        (cons '("\\.css\\'" . css-mode) auto-mode-alist))

(setq load-path (cons "~/.elisp/" load-path))
(add-hook 'html-helper-load-hook
	    (function (lambda () (load "css.el"))))

(setq load-path (cons "~/.elisp/" load-path))
(autoload 'clojure-mode "clojure-mode")
(setq auto-mode-alist
        (cons '("\\.clj\\'" . clojure-mode) auto-mode-alist))



(setq auto-mode-alist (cons '("\\.php$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.inc$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.html$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.htm$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.h$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cxx$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cpp$" . c++-mode) auto-mode-alist))

(setq auto-mode-alist (cons '("\\.pyx$" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.pxd$" . python-mode) auto-mode-alist))


;; ========== Place Backup Files in Specific Directory ==========

;; Disable Auto-save to eliminate #file#
(setq auto-save-default nil) 
;; Backup by copying
(setq backup-by-copying t)
;; Enable versioning with custom values
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)
;; Save all backup file in this directory.
(setq backup-directory-alist `(("." . "~/.emacs_backups")))


;; Some random things
(setq inhibit-startup-message t)
(setq font-lock-maximum-decoration t)
(line-number-mode 1)

(setq tab-width 4)
(tool-bar-mode -1)
(setq transient-mark-mode nil)

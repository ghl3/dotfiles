
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


;;Set Smooth Scrolling
;;(require 'smooth-scrolling)
(set-variable 'scroll-step 1)


;; Goto line
;; Goto line
;pressing Alt-g or Meta-g is goto line
(global-set-key [(alt g)] 'goto-line)
(global-set-key [(meta g)] 'goto-line) 

;; Follow sybolic links
vc-follow-symlinks t


;; ========== Set Colors =============

(custom-set-faces

(set-background-color "black" )
(set-cursor-color "white")
(set-face-foreground 'default "white" ) 

(set-face-foreground 'font-lock-comment-face "red" ) 
(set-face-foreground 'font-lock-warning-face "red" ) 
(set-face-foreground 'font-lock-variable-name-face "yellow")
(copy-face 'default 'font-lock-preprocessor-face)
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



(setq auto-mode-alist (cons '("\\.php$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.inc$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.html$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.htm$" . html-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.h$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cxx$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cpp$" . c++-mode) auto-mode-alist))


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


;; Some random things...not sure what they do
(tool-bar-mode 0)
(setq inhibit-startup-message t)
(setq font-lock-maximum-decoration t)
(line-number-mode 1)
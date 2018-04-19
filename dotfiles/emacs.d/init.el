
;;
;;; Mac option key is meta
;;
;; Ensure this is set in terminals/iterm as well
;;
(setq mac-option-key-is-meta t)
(setq mac-option-modifier 'meta)


;;Set Smooth Scrolling
;;(require 'smooth-scrolling)
(set-variable 'scroll-step 1)


;; Goto line
;pressing Alt-g or Meta-g is goto line
(global-set-key [(alt g)] 'goto-line)
(global-set-key [(meta g)] 'goto-line) 

;; Follow sybolic links
(setq vc-follow-symlinks t)



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

 ;; Set transparency of emacs
 (defun transparency (value)
   "Sets the transparency of the frame window. 0=transparent/100=opaque"
   (interactive "nTransparency Value 0 - 100 opaque:")
   (set-frame-parameter (selected-frame) 'alpha value))

;; (load-file "~/code/socks.el")
;; (require 'socks)

(require 'git)
(require 'git-emacs)

(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-matrix)

(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu

(add-to-list 'load-path "~/.emacs.d/ecb")
(load-file "~/.emacs.d/ecb/ecb.el")
(require 'ecb)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-name "top1")
 '(ede-project-directories (quote ("/home/r/.xmonad")))
 '(setq ecb-tip-of-the-day))
(add-to-list 'load-path "/home/r/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/r/.emacs.d//ac-dict")
(ac-config-default)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "green" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "bitstream" :family "Courier 10 Pitch")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Â§ Emacs                                                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; No hace sangrado con tabuladores:
(setq-default indent-tabs-mode nil)

;;; Permite la evaluaciÃ³n de expresiones en el mini-buffer:
(put 'eval-expression 'disabled nil)	

;;; No hace copias de seguridad:
(setq backup-inhibited t)

;;; Completaciones                                                          ;;;
(dynamic-completion-mode)
(global-set-key "\M-\t" 'complete)

;;; Por defecto, en dired no escribe el grupo:
(setq dired-listing-switches "-alGv")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Â§ Haskell                                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load "/usr/share/emacs/site-lisp/haskell-mode/haskell-site-file")

(setq auto-mode-alist
      (append auto-mode-alist
              '(("\\.[hg]s$"  . haskell-mode)
                ("\\.hi$"     . haskell-mode)
                ("\\.l[hg]s$" . literate-haskell-mode))))
                ; ("\\.l[hg]s$" . latex-mode))))
                 

(autoload 'haskell-mode "haskell-mode"
   "Major mode for editing Haskell scripts." t)

(autoload 'literate-haskell-mode "haskell-mode"
   "Major mode for editing literate Haskell scripts." t)

(add-hook 'haskell-mode-hook 
          '(lambda ()
             (load "/usr/share/emacs/site-lisp/haskell-mode/haskell-ghci.el")
             (turn-on-haskell-decl-scan)
             (turn-on-haskell-doc-mode) 
             (turn-on-haskell-indent)   
             (turn-on-auto-fill)
             (setq fill-column 72)
             (setq haskell-program-name "ghci -fglasgow-exts")
             (turn-on-haskell-ghci)
             ))        
             
(setq haskell-literate-default 'latex)

;; GNUS ;;

(setq gnus-select-method '(nnimap "riseup"
(nnimap-address "mail.riseup.net")
(nnimap-server-port 993)
(nnimap-stream ssl)))

(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

;; Threads are nice!
(setq gnus-summary-thread-gathering-function
'gnus-gather-threads-by-subject)

;; SMTP ;;

(setq message-send-mail-function 'smtpmail-send-it
smtpmail-starttls-credentials '(("mail.riseup.net" 587 nil nil))
smtpmail-auth-credentials '(("mail.riseup.net" 587 "ptamei@riseup.net" nil))
smtpmail-default-smtp-server "mail.riseup.net"
smtpmail-smtp-server "mail.riseup.net"
smtpmail-smtp-service 587)

(setq user-full-name "Eduardo Radical")
(setq user-mail-address "ptamei@riseup.net")

(setq rmail-movemail-flags '("--max-messages=100000"))
(setq rmail-movemail-flags '("--reverse"))
(setq rmail-movemail-flags '("--set=preserve=false"))
(setq rmail-movemail-flags '("--set=uidl=true"))

(setenv "RISEUP" "pop3server")
 (setq rmail-primary-inbox-list '("pop://ptamei:Ap0te0$ic0-->@mail.riseup.net")
       ;;rmail-pop-password-required t
       rmail-file-name "~/.riseup_mail")


;; Maxima, imaxima 

(add-to-list 'load-path "/usr/local/share/maxima/5.18.1/emacs/")
 (autoload 'maxima-mode "maxima" "Maxima mode" t)
 (autoload 'imaxima "imaxima" "Frontend for maxima with Image support" t)
 (autoload 'maxima "maxima" "Maxima interaction" t)
 (autoload 'imath-mode "imath" "Imath mode for math formula input" t)
 (setq imaxima-use-maxima-mode-flag t)


;; el-get package manager 4 emacs

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; Ruby interpreter 

(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(autoload 'ruby-mode "ruby-mode" "Major mode for editing Ruby code" t)
(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))
(require 'inf-ruby)

;; MELPA packages
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
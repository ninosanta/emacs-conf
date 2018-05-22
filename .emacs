; display line numbers
(global-linum-mode t)


; Paren Match Highlighting
(show-paren-mode 1)


; auto close brackets insertion
(electric-pair-mode 1)


; Turn-on upper and low case with C-x C-u & C-x C-l
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)


; org
(setq load-path (cons "~/Downloads/Software/emacs/org-9.1.13/lisp/" load-path))
(setq load-path (cons "~/Downloads/Software/emacs/org-9.1.13/contrib/lisp/" load-path))
;; The following lines are always needed. Default keys...
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)


; C style
(setq c-default-style
           '((java-mode . "java")
             (awk-mode . "awk")
             (other . "k&r")))


; start package.el with emacs
(require 'package)
; add MELPA to repository list
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
; initialize package.el
(package-initialize)


; start auto-complete with emacs
(require 'auto-complete)
; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)


; start yasnippet with emacs
; autocomplete, pushing TAB, for instance for loop or main with argv and argc
(require 'yasnippet)
(yas-global-mode 1)


; Fix iedit bug
(define-key global-map (kbd "C-c ;") 'iedit-mode)


; theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(inhibit-startup-screen t)
 '(send-mail-function (quote smtpmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)



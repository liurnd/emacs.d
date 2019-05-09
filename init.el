;;; Commentary:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;; Code:


(setq config-directory (file-name-directory (file-truename load-file-name)))
(message "config directory: %s" config-directory)
(add-to-list 'load-path (concat config-directory "lisp"))
(add-to-list 'load-path (concat config-directory "/el-get/el-get"))
(add-to-list 'load-path (concat config-directory "site-lisp"))

(require 'init-packages)
(require 'init-utils)

(custom-set-variables
 '(epg-gpg-program "/usr/local/bin/gpg")
 '(inhibit-startup-screen t)
 '(org-babel-shell-names
   (quote
    ("sh" "bash" "csh" "ash" "ksh" "mksh" "posh" "fish")))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "http://stable.melpa.org/packages/")))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file "~/.emacs.d/dotemacs.org")
(when (eq system-type 'darwin)
  (org-babel-load-file "~/.emacs.d/mac.org"))
(when (eq system-type 'gnu/linux)
  (org-babel-load-file "~/.emacs-google.d/linux.org"))
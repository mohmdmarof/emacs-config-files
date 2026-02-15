(load-theme 'nord t)
(set-face-background 'default "#1e1e1e")
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq inhibit-startup-screen t)
(dired "/mnt/c/users/idp1i/OneDrive/Documents/C,C++/")
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(defun open-shell-bottom ()
  (interactive)
  (split-window-below)
  (other-window 1)
  (shell))

(windmove-default-keybindings)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "C-w") 'delete-window)

(require 'package)

(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu"   . "https://elpa.gnu.org/packages/")))

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("0325a6b5eea7e5febae709dab35ec8648908af12cf2d2b569bedc8da0a3a81c1" default))
 '(display-line-numbers 'relative)
 '(display-line-numbers-type 'relative)
 '(display-line-numbers-width nil)
 '(package-selected-packages '(nord-theme doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(line-number ((t (:inherit (shadow default) :stipple nil :box nil :height 1.32))))
 '(line-number-current-line ((t (:inherit (default default line-number) :background "medium blue" :slant normal :weight bold :height 1.32 :width extra-expanded)))))

(setq ring-bell-function 'ignore)

(global-set-key (kbd "M-e") 'shell-command)

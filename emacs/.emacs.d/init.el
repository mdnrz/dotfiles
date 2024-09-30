(setq costum-file "~/.emacs.d/costum-file.el")
(tool-bar-mode 0)
(menu-bar-mode 0)
(set-frame-parameter (selected-frame) 'alpha '(90 . 90))
(add-to-list 'default-frame-alist '(alpha . (90 . 90)))
(load-theme 'gruber-darker t)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
(set-face-attribute 'default nil :font "Iosevka-10")
(ido-mode 1)
(setq inhibit-splash-screen t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(gruber-darker-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

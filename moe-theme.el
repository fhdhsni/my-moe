;;; moe-theme --- A colorful eye-candy theme. Moe, moe, kyun!

;; This program is not part of GNU Emacs, but it is distributed under GPL v3 :-)
;;
;; This file is established for packaging. If you want to install manually,
;; check README.md
;;
;; Author: kuanyui <azazabc123@gmail.com>
;; Keywords: themes
;; X-URL: https://github.com/kuanyui/moe-theme.el
;; URL: https://github.com/kuanyui/moe-theme.el

;;; Code:

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(defvar moe-theme-highlight-buffer-id nil
  "If t, highlight buffer-id on mode-line.
If nil, just bold buffer-id without highlight")

(defvar moe-theme-mode-line-color 'b/w
  "Default is 'blue.
If nil, no background color.
Available choices: 'blue, 'green, 'magenta, 'red, 'orange, 'yellow, 'purple, 'b/w")

(defun moe-dark ()
  "Load moe-light-theme with your customizations."
  (interactive)

  (load-theme 'moe-dark t)
  ;; (set-face-attribute 'mode-line nil :background "#ffffff" :foreground "#3a3a3a")
  ;; (set-face-attribute 'mode-line-buffer-id nil :background "#9e9e9e" :foreground "#080808")
  ;; (set-face-attribute 'minibuffer-prompt nil :foreground "#3e3e3e" :background "#ffffff")
  ;; (if (null moe-theme-highlight-buffer-id)
  ;;     (set-face-attribute 'mode-line-buffer-id nil :background nil))
  )

(defun moe-theme-set-color (color)
  "Set the COLOR of mode-line you like. You may also like
`moe-theme-random-color' This should be called
programmly (e.g. in init.el), not interactively."
  (setq moe-theme-mode-line-color
        color))

(defun moe-theme-select-color ()
  "Interactively select the color of mode-line you like and set
it. (Notice: we support Powerline :D) You may also like
`moe-theme-random-color'"
  (interactive)
  (moe-theme-set-color (intern (completing-read
                                "Select a color: "
                                '((blue) (green) (orange) (magenta) (yellow) (purple) (red) (cyan) (w/b))
                                nil t "" nil nil t))))

(provide 'moe-theme)

;; Local Variables:
;; coding: utf-8
;; End:
;;; moe-theme.el ends here

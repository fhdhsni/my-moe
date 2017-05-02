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
;; Version: {{VERSION}}

;;; Commentary:

;; You can take a look at screenshots and acquire more information on:
;;
;;     https://github.com/kuanyui/moe-theme.el
;;
;;
;; = Requirements ==============================================================
;;
;;   - Emacs 24 (or above)
;;   - 256 colors terminal (or higher)
;;
;; = Usage =====================================================================
;;
;;   Add you to your .emacs:
;;
;;      (require 'moe-theme)
;;      (moe-dark)
;;          or
;;      (moe-light)
;;
;;   But if you want to install manually, add this first:
;;
;;      (add-to-list 'custom-theme-load-path "~/path/to/moe-theme")
;;      (add-to-list 'load-path "~/path/to/moe-theme")
;;
;; = Customizations ============================================================
;;
;;    It's impossible to satisfy everyone with one theme, so `moe-theme` provide
;;    some customizations that you may like.
;;
;;    ### Resize Titles ########################################################
;;
;;    You may want to resize the titles in `markdown-mode', `org-mode', or
;;    `rst-mode':
;;
;;      (setq moe-theme-resize-markdown-title '(2.0 1.7 1.5 1.3 1.0 1.0))
;;      (setq moe-theme-resize-org-title '(2.2 1.8 1.6 1.4 1.2 1.0 1.0 1.0 1.0))
;;      (setq moe-theme-resize-rst-title '(2.0 1.7 1.5 1.3 1.1 1.0))
;;
;;    Markdown should have 6 items; org has 9 items; rst has 6 items.
;;
;;    The values should be lists. Larger the values, larger the fonts.
;;    If you don't like this, just leave them nil, and all the titles will be
;;    the same size.
;;
;;    ### Colorful Mode-line and Powerline #####################################
;;
;;    Tired of boring blue mode-line? Set default mode-line color like this:
;;
;;      (setq moe-theme-mode-line-color 'orange)
;;
;;    Available colors: blue, orange, magenta, yellow, purple, red, cyan, w/b.
;;
;;    You can use `moe-theme-select-color' to change color interactively.
;;
;;    Mayby you'll also like `moe-theme-random-color', which gives you a
;;    random mood :D.
;;
;;    ### Powerline ############################################################
;;
;;    Now we supports Powerline (https://github.com/milkypostman/powerline),
;;    which makes mode-line looks fabulous! We recommended installing Powerline
;;    and run `powerline-moe-theme'.
;;
;;    ### Too Yellow Background? ###############################################
;;
;;    With 256-colors, default yellow background of moe-light may be too yellow
;;    and harsh to eyes on some screens.
;;
;;    If you encounter this problem, and want to set background color to #ffffff
;;    in terminal, set the value of `moe-light-pure-white-background-in-terminal'
;;    to t:
;;
;;        (setq moe-light-pure-white-background-in-terminal t)
;;
;;    ### Highlight Buffer-id on Mode-line? ####################################
;;
;;    You may be dislike default highlight on mode-line-buffer-id, now it can be
;;    disable:
;;
;;        (setq moe-theme-highlight-buffer-id nil)
;;
;;
;; = Auto Switching ============================================================
;;
;;   I prefer a terminal with a black-on-white color scheme. I found that in the
;; daytime, sunlight is strong and black-on-white is more readable; However,
;; white-on-black would be less harsh to the eyes at night.

;;   So if you like, you can add the following line to your ~/.emacs to
;; automatically switch between moe-dark and moe-light according to the system
;; time:
;;
;;    (require 'moe-theme-switcher)
;;
;;   By adding the line above, your Emacs will have a light theme in the day
;;  and a dark one at night. =w=+
;;
;;
;; # Live in Antarctica? #######################################################
;;
;;   Daytime is longer in summer but shorter in winter; or you live in a high
;; latitude region which midnight-sun or polar-night may occur such as Finland
;; or Antarctica?
;;
;;   There's a variable `moe-theme-switch-by-sunrise-and-sunset` would solve
;; your problem (default value is `t`)
;;
;;   If this value is `nil`, `moe-theme-switcher` will switch theme at fixed
;; time (06:00 and 18:00).
;;
;;   If this value is `t` and both `calendar-latitude` and `calendar-longitude`
;; are set properly, the switching will be triggered at the sunrise and sunset
;; time of the local calendar.
;;
;;   Take "Keelung, Taiwan" (25N,121E) for example, you can set like this:
;;
;; 	(setq calendar-latitude +25)
;; 	(setq calendar-longitude +121)

;;; Code:

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(defvar moe-theme-highlight-buffer-id t
  "If t, highlight buffer-id on mode-line.
If nil, just bold buffer-id without highlight")

(defvar moe-theme-mode-line-color 'blue
  "Default is 'blue.
If nil, no background color.
Available choices: 'blue, 'green, 'magenta, 'red, 'orange, 'yellow, 'purple, 'b/w")


;; The variable `moe-theme-resize-title-fonts`
(defvar moe-theme-resize-markdown-title nil
  "Resize header/title faces of Markdown-mode or not. (default value is nil)
The value should be a list with 6 items of number, which decide title font sizes
of each level.

  (setq moe-theme-resize-markdown-title '(2.0 1.7 1.5 1.3 1.0 1.0))

If the vaule is nil, all the titles will be the same size.")

(defvar moe-theme-resize-org-title nil
  "Resize outline/title faces of Org-mode or not. (default value is nil)

The value should be a list with 9 items of number; which decide title font sizes
of each level. The first item is the font size of `org-document-title', from
second to ninth is outlines of 1-8.
For example, you can set like this:

  (setq moe-theme-resize-org-title '(2.2 1.8 1.6 1.4 1.2 1.0 1.0 1.0 1.0))

If the vaule is nil, all the outlines will be the same size.")

(defun moe-theme-resize-font-size ()
  (when (and (listp moe-theme-resize-markdown-title)
             (not (null moe-theme-resize-markdown-title))
             (>= (length moe-theme-resize-markdown-title) 6))
    (let* ((s1 (car moe-theme-resize-markdown-title))
           (s2 (cadr moe-theme-resize-markdown-title))
           (s3 (nth 2 moe-theme-resize-markdown-title))
           (s4 (nth 3 moe-theme-resize-markdown-title))
           (s5 (nth 4 moe-theme-resize-markdown-title))
           (s6 (nth 5 moe-theme-resize-markdown-title)))
      (progn (require 'markdown-mode)
             (set-face-attribute 'markdown-header-face-1 nil :height s1)
             (set-face-attribute 'markdown-header-face-2 nil :height s2)
             (set-face-attribute 'markdown-header-face-3 nil :height s3)
             (set-face-attribute 'markdown-header-face-4 nil :height s4)
             (set-face-attribute 'markdown-header-face-5 nil :height s5)
             (set-face-attribute 'markdown-header-face-6 nil :height s6))))

  (when (and (listp moe-theme-resize-org-title)
             (not (null moe-theme-resize-org-title))
             (>= (length moe-theme-resize-org-title) 9))
    (let* ((s1 (car moe-theme-resize-org-title))
           (s2 (cadr moe-theme-resize-org-title))
           (s3 (nth 2 moe-theme-resize-org-title))
           (s4 (nth 3 moe-theme-resize-org-title))
           (s5 (nth 4 moe-theme-resize-org-title))
           (s6 (nth 5 moe-theme-resize-org-title))
           (s7 (nth 6 moe-theme-resize-org-title))
           (s8 (nth 7 moe-theme-resize-org-title))
           (s9 (nth 8 moe-theme-resize-org-title)))
      (progn (require 'org)
             (set-face-attribute 'org-document-title nil :height s1)
             (set-face-attribute 'org-level-1 nil :height s2)
             (set-face-attribute 'org-level-2 nil :height s3)
             (set-face-attribute 'org-level-3 nil :height s4)
             (set-face-attribute 'org-level-4 nil :height s5)
             (set-face-attribute 'org-level-5 nil :height s6)
             (set-face-attribute 'org-level-6 nil :height s7)
             (set-face-attribute 'org-level-7 nil :height s8)
             (set-face-attribute 'org-level-8 nil :height s9))))
  )

(defun moe-dark ()
  "Load moe-light-theme with your customizations."
  (interactive)

  (load-theme 'moe-dark t)
  (moe-theme-resize-font-size)
  (cond ((eq moe-theme-mode-line-color 'blue)
         (set-face-attribute 'mode-line nil :background "#afd7ff" :foreground "#005f87")
         (set-face-attribute 'mode-line-buffer-id nil :background "#afd7ff" :foreground "#080808")
         (set-face-attribute 'minibuffer-prompt nil :foreground "#005f87" :background "#afd7ff"))
        ((eq moe-theme-mode-line-color 'green)
         (set-face-attribute 'mode-line nil :background "#afdf77" :foreground "#005f00")
         (set-face-attribute 'mode-line-buffer-id nil :background "#afdf77" :foreground "#080808")
         (set-face-attribute 'minibuffer-prompt nil :foreground "#005f00" :background "#a1db00"))
        ((eq moe-theme-mode-line-color 'orange)
         (set-face-attribute 'mode-line nil :background "#ffaf5f" :foreground "#b75f00")
         (set-face-attribute 'mode-line-buffer-id nil :background "#ffaf5f" :foreground "#080808")
         (set-face-attribute 'minibuffer-prompt nil :foreground "#080808" :background "#ffaf5f"))
        ((eq moe-theme-mode-line-color 'magenta)
         (set-face-attribute 'mode-line nil :background "#ffafd7" :foreground "#cc1f8b")
         (set-face-attribute 'mode-line-buffer-id nil :background "#ffafd7" :foreground "#080808")
         (set-face-attribute 'minibuffer-prompt nil :foreground "#ff1f8b" :background "#ffffff"))
        ((eq moe-theme-mode-line-color 'yellow)
         (set-face-attribute 'mode-line nil :background "#fce94f" :foreground "#875f00")
         (set-face-attribute 'mode-line-buffer-id nil :background "#fce94f" :foreground "#080808")
         (set-face-attribute 'minibuffer-prompt nil :foreground "#875f00" :background "#ffff87"))
        ((eq moe-theme-mode-line-color 'purple)
         (set-face-attribute 'mode-line nil :background "#e6a8df" :foreground "#6c0099")
         (set-face-attribute 'mode-line-buffer-id nil :background "#e6a8df" :foreground "#080808")
         (set-face-attribute 'minibuffer-prompt nil :foreground "#6c0099" :background "#e6a8df"))
        ((eq moe-theme-mode-line-color 'red)
         (set-face-attribute 'mode-line nil :background "#ef2929" :foreground "#ffffff")
         (set-face-attribute 'mode-line-buffer-id nil :background "#ef2929" :foreground "#080808")
         (set-face-attribute 'minibuffer-prompt nil :foreground "#a40000" :background "#ffafaf"))
        ((eq moe-theme-mode-line-color 'cyan)
         (set-face-attribute 'mode-line nil :background "#87d7af" :foreground "#005f5f")
         (set-face-attribute 'mode-line-buffer-id nil :background "#87d7af" :foreground "#080808")
         (set-face-attribute 'minibuffer-prompt nil :foreground "#005f5f" :background "#87d7af"))
        ((eq moe-theme-mode-line-color 'w/b)
         (set-face-attribute 'mode-line nil :background "#ffffff" :foreground "#3a3a3a")
         (set-face-attribute 'mode-line-buffer-id nil :background "#9e9e9e" :foreground "#080808")
         (set-face-attribute 'minibuffer-prompt nil :foreground "#3e3e3e" :background "#ffffff")))

  (if (null moe-theme-highlight-buffer-id)
      (set-face-attribute 'mode-line-buffer-id nil :background nil)))

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

(defun moe-theme-random-color ()
  "Give me a random mode-line color.=w=+
This function can be called both programmly and interactively."
  (interactive)
  (let* ((n (abs (% (random) 9)))
         (current-color moe-theme-mode-line-color)
         (color-list '(blue green orange magenta yellow purple red cyan w/b)))
    (if (eq (elt color-list n) current-color) ;If gotten color eq current-color, random again.
        (moe-theme-random-color)
      (moe-theme-set-color (elt color-list n)))))

(provide 'moe-theme)

;; Local Variables:
;; coding: utf-8
;; End:
;;; moe-theme.el ends here

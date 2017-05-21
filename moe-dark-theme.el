;;; moe-dark-theme.el --- An eye-candy theme for Emacser

;; Author: kuanyui<azazabc123@gmail.com>
;; Based on "tango-dark-theme"

;;; Code:

(deftheme moe-dark
  "Face colors for 256 colors terminal (dark background).
Moe, moe, kyun!")

(let ((class '((class color) (min-colors 89)))
      ;; Palette colors.
      (yellow-1 "#fce94f") (yellow-2 "#ffd700") (yellow-3 "#c4a000") (yellow-3-5 "#aaaa11") (yellow-4 "#875f00")
      (orange-1 "#ffaf5f") (orange-2 "#ff8700") (orange-3 "#ff5d17") (orange-4 "#d75f00") (orange-5 "#af5f00")
      (magenta-1 "#ff7bbb") (magenta-2 "#ff4ea3") (magenta-3 "#ff1f8b")
      (green-1 "#afff00") (green-2 "#a1db00") (green-3 "#5faf00") (green-4 "#008700") (green-5 "#005f00")
      (cyan-1 "#87ffff") (cyan-2 "#87d7af") (cyan-3 "#00d7af") (cyan-4 "#00ac8a") (cyan-5 "#5faf87") (cyan-6 "#005f5f") (cyan-7 "#236f73")
      (blue-1 "#5fafd7") (blue-2 "#1f5bff") (blue-3 "#005f87") (blue-4 "#005faf") (blue-5 "#0000af") (blue-6 "#00005f")
      (purple-1 "#d18aff") (purple-2 "#af5fff") (purple-3 "#9a08ff") (purple-4 "#6c0099")
      (red-1 "#ef2929")  (red-2 "#dd0000")  (red-3 "#a40000") (red-4 "#5f0000")
      (white-1 "#c6c6c6") (white-2 "#c6c6c6") (white-3 "#b2b2b2") (black-1 "#a8a8a8") (black-2 "#8a8a8a")
      (black-2-5 "#6c6c6c") (black-3 "#4e4e4e") (black-4 "#3a3a3a") (black-5 "#303030") (black-6 "#000000")
      (LIGHT_BG "#fdfde7") (white-0 "#eeeeee")
      (green-02 "#5fd700") (green-01 "#d7ff00") (green-0 "#d7ff5f") (green-00 "#d7ff87")
      (cyan-0 "#d7ffd7")
      (blue-01 "#c3c9f8") (blue-0 "#afd7ff") (blue-00 "#d7d7ff")
      (yellow-0 "#ffff87") (yellow-00 "#ffffaf")
      (purple-0 "#af87ff") (purple-00 "#e6a8df")
      (red-0 "#ff4b4b") (red-00 "#ffafaf")
      (magenta-0 "#ffafd7") (magenta-00 "#ffd7ff")
      (orange-0 "#ffaf87") (orange-00 "#ffd787") (orange-000 "#ffd7af")
      (linum-dark "#87875f") (linum-light "#d7d7af"))


  (custom-theme-set-faces
   'moe-dark
   ;; Ensure sufficient contrast on low-color terminals.
   `(default ((((class color) (min-colors 4096))
               (:foreground ,white-1 :background ,black-5))
              (((class color) (min-colors 256))
               (:foreground ,white-1 :background ,black-5))
              (,class
               (:foreground ,white-1 :background ,black-5))))
   `(cursor ((,class (:background ,white-0))))

   ;; Highlighting faces
   `(fringe ((,class (:foreground ,black-1 :background ,black-3))))
   `(linum ((,class (:foreground ,white-3 :background ,black-3))))
   `(linum-highlight-face ((,class (:background ,green-0 :foreground ,black-4))))
   `(highlight ((,class (:background ,black-3))))
   `(hl-line ((,class (:background ,black-4))))
   `(highlight-symbol-face ((,class (:background ,green-5))))
   `(region ((,class (:foreground ,black-5 :background ,blue-0))))
   `(secondary-selection ((,class (:background ,blue-3 :foreground ,white-0))))
   `(isearch ((,class (:foreground ,black-6 :background ,orange-0))))
   `(lazy-highlight ((,class (:background nil :foreground ,orange-3))))
   `(trailing-whitespace ((,class (:background ,red-3))))
   `(show-paren-match ((,class (:background nil :foreground ,magenta-2 :weight bold))))
   `(header-line ((,class (:background ,blue-3 :foreground ,white-0))))
   `(help-argument-name ((,class (:foreground ,magenta-1 :italic t))))

   ;; Mode line & frames' faces
   `(mode-line ((,class (:box nil :background ,black-3 :foreground  ,green-2))))
   `(mode-line-inactive ((,class (:box nil :background ,black-2-5 :foreground ,white-1))))
   `(mode-line-buffer-id ((,class (:box nil :foreground ,blue-1 :background nil ))))
   `(vertical-border ((,class (:foreground ,black-3 :background ,black-3))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground ,green-02 :background nil))))
   `(escape-glyph ((,class (:foreground ,yellow-3))))
   `(error ((,class (:foreground ,red-0))))
   `(warning ((,class (:foreground ,orange-1))))
   `(success ((,class (:foreground ,green-1))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,purple-1))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,black-2-5 :slant italic))))
   `(font-lock-comment-face ((,class (:foreground ,black-2-5 :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,blue-1))))
   `(font-lock-doc-face ((,class (:foreground ,red-0))))
   `(font-lock-doc-string-face ((,class (:foreground ,yellow-3))))
   `(font-lock-function-name-face ((,class (:foreground ,yellow-2))))
   `(font-lock-keyword-face ((,class (:foreground ,green-2))))
   `(font-lock-negation-char-face ((,class (:foreground ,red-0))))
   `(font-lock-preprocessor-face ((,class (:foreground ,purple-1))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,yellow-1))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,purple-1))))
   `(font-lock-string-face ((,class (:foreground ,magenta-2))))
   `(font-lock-type-face ((,class (:foreground ,cyan-3))))
   `(font-lock-variable-name-face ((,class (:foreground ,orange-2))))
   `(font-lock-warning-face ((,class (:foreground ,red-2))))

   ;; Completions
   `(completions-annotations ((,class (:foreground ,green-2))))
   `(completions-common-part ((,class (:foreground ,black-2-5))))
   `(completions-first-difference ((,class (:foreground ,orange-2))))

   ;; org-mode
   `(org-document-title ((,class (:foreground ,blue-0 :background ,black-5 :weight bold))))
   `(org-document-info ((,class (:foreground ,blue-1 :background ,black-5 :weight bold))))
   `(org-document-info-keyword ((,class (:foreground ,orange-1 :background ,black-2-5))))
   `(org-archived ((,class (:slant italic))))
   `(org-checkbox ((,class (:background ,white-2 :foreground ,black-3
                                        :box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,blue-0 :underline t))))
   `(org-done ((,class ( :foreground ,green-4 :background ,green-0
                                     :box (:line-width 1 :style none)))))
   `(org-todo ((,class ( :foreground ,red-3 :background ,orange-0
                                     :box (:line-width 1 :style none)))))
   `(org-level-1 ((,class (:foreground ,blue-1))))
   `(org-level-2 ((,class (:foreground ,green-2))))
   `(org-level-3 ((,class (:foreground ,orange-2))))
   `(org-level-4 ((,class (:foreground ,cyan-3))))
   `(org-level-5 ((,class (:foreground ,red-1))))
   `(org-level-6 ((,class (:foreground ,purple-2))))
   `(org-level-7 ((,class (:foreground ,magenta-2))))
   `(org-level-8 ((,class (:foreground ,yellow-2))))
   `(org-tag ((,class (:background ,black-3 :foreground ,white-1  :weight bold))))

   `(org-column ((,class (:background ,black-4 :foreground ,black-3))))
   `(org-column-title ((,class (:background ,blue-0 :foreground ,black-5 :underline t :weight bold))))
   `(org-agenda-structure ((,class (:foreground ,cyan-4 :background nil ))))
   `(org-deadline-announce ((,class (:foreground ,red-3))))
   `(org-scheduled ((,class (:foreground ,white-3))))
   `(org-scheduled-previously ((,class (:foreground ,red-1))))
   `(org-scheduled-today ((,class (:foreground ,blue-1))))
   `(org-special-keyword ((,class (:background ,black-3 :foreground ,white-1))))
   `(org-table ((,class (:background ,black-3 :foreground ,white-1))))
   `(org-time-grid ((,class (:foreground ,black-2))))
   `(org-upcoming-deadline ((,class (:foreground ,red-1))))
   `(org-warning ((,class ( :foreground ,white-0 :background ,red-3))))
   `(org-formula ((,class (:foreground ,purple-2))))
   `(org-headline-done ((,class (:foreground ,green-2))))
   `(org-hide ((,class (:foreground ,black-5))))
   `(org-code ((,class (:foreground ,blue-1 :background ,black-4))))
   `(org-link ((,class (:foreground ,blue-1 :underline t))))
   `(org-footnote ((,class (:foreground ,magenta-3))))
   `(org-ellipsis ((,class (:foreground ,red-2))))
   `(org-agenda-clocking ((,class (:foreground ,blue-3 :background ,blue-0 ))))
   `(org-agenda-date ((,class (:foreground ,blue-1 :background ,black-5 :underline nil))))
   `(org-agenda-date-weekend ((,class (:foreground ,purple-1 :underline nil :bold nil))))
   `(org-agenda-date-today ((,class (:foreground ,blue-0 :background ,black-2-5 :slant italic :weight bold))))
   `(org-agenda-column-dateline ((,class (:foreground ,white-0 :background ,black-3 :underline t))))
   `(org-agenda-todo ((,class (:foreground ,white-0 :background ,red-2))))
   `(org-agenda-done ((,class (:foreground ,green-2 :background nil))))
   `(org-agenda-dimmed-todo-face ((,class (:foreground ,white-0 :background ,red-2))))
   `(org-priority ((,class (:foreground ,red-1 :background ,nil))))
   `(org-block ((,class (:foreground ,blue-1 :background ,black-4))))
   `(org-block-background ((,class (:foreground nil :background ,black-4))))
   `(org-block-begin-line ((,class (:foreground ,white-0 :background ,blue-3))))
   `(org-block-end-line ((,class (:foreground ,black-3 :background ,black-4))))
   `(org-quote ((,class (:foreground ,blue-1 :background ,black-3))))
   `(org-mode-line-clock ((,class (:foreground ,blue-3 :background ,blue-0 ))))
   `(org-mode-line-clock-overrun ((,class (:foreground ,white-0 :background ,red-1 ))))
   `(org-verbatim ((,class (:foreground ,blue-1 :background ,black-3 :bold nil))))

   ;; outline
   `(outline-1 ((,class (:foreground ,blue-1))))
   `(outline-2 ((,class (:foreground ,green-2))))
   `(outline-3 ((,class (:foreground ,orange-2))))
   `(outline-4 ((,class (:foreground ,cyan-3))))
   `(outline-5 ((,class (:foreground ,red-1))))
   `(outline-6 ((,class (:foreground ,purple-2))))
   `(outline-7 ((,class (:foreground ,magenta-2))))
   `(outline-8 ((,class (:foreground ,yellow-2))))

   ;; Markdown-mode
   `(markdown-blockquote-face ((,class (:foreground ,orange-2 :background ,black-3 :italic t))))
   `(markdown-bold-face ((,class (:foreground ,white-1 ))))
   `(markdown-comment-face ((,class (:foreground ,black-2 :italic t))))
   `(markdown-header-delimiter-face ((,class (:foreground ,green-3 ))))
   `(markdown-header-face ((,class (:foreground ,green-2 ))))
   `(markdown-header-rule-face ((,class (:foreground ,green-2 ))))
   `(markdown-header-face-1 ((,class (:foreground ,green-2 ))))
   `(markdown-header-face-2 ((,class (:foreground ,green-2 ))))
   `(markdown-header-face-3 ((,class (:foreground ,green-2 ))))
   `(markdown-header-face-4 ((,class (:foreground ,green-2 ))))
   `(markdown-header-face-5 ((,class (:foreground ,green-2 ))))
   `(markdown-header-face-6 ((,class (:foreground ,green-2 ))))
   `(markdown-link-face ((,class (:foreground ,magenta-1 :underline t))))
   `(markdown-inline-code-face ((,class (:foreground ,blue-1 :background ,black-3))))
   `(markdown-italic-face ((,class (:foreground ,white-1 :italic t :underline ,white-1))))
   `(markdown-list-face ((,class (:foreground ,green-2 :background ,black-5 ))))
   `(markdown-math-face ((,class (:foreground ,magenta-1))))
   `(markdown-missing-link-face ((,class (:foreground ,red-1 ))))
   `(markdown-pre-face ((,class (:foreground ,blue-1))))
   `(markdown-reference-face ((,class (:foreground ,orange-2 :italic t))))
   `(markdown-url-face ((,class (:foreground ,magenta-3 :underline ,magenta-3))))

   ;; popup
   `(popup-face ((,class (:background ,black-3 :foreground ,blue-1))))
   `(popup-isearch-match ((,class (:background ,black-3 :foreground ,magenta-2 ))))
   `(popup-menu-face ((,class (:background ,black-3 :foreground ,blue-1))))
   `(popup-menu-mouse-face ((,class (:background ,green-0 :foreground ,black-4))))
   `(popup-menu-selection-face ((,class (:background ,blue-3 :foreground ,blue-0))))
   `(popup-menu-summary-face ((,class (:background ,black-3 :foreground ,blue-1))))
   `(popup-scroll-bar-background-face ((,class (:background ,black-3 :foreground ,black-3))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,black-2 :foreground ,white-3))))
   `(popup-summary-face ((,class (:background ,black-3 :foreground ,blue-1))))
   `(popup-tip-face ((,class (:background ,black-2-5 :foreground ,white-1))))

   ;; company
   `(company-echo ((,class (:background nil :foreground ,white-1))))
   `(company-echo-common ((,class (:background ,black-3 :foreground ,red-1))))
   `(company-preview ((,class (:background ,black-5 :foreground ,magenta-2))))
   `(company-preview-common ((,class (:background ,black-5 :foreground ,magenta-2))))
   `(company-preview-search ((,class (:background ,black-4 :foreground ,magenta-2 ))))
   `(company-scrollbar-bg ((,class (:background ,black-3))))
   `(company-scrollbar-fg ((,class (:background ,white-3))))
   `(company-template-field ((,class (:background ,yellow-00 :foreground ,black-4))))
   `(company-tooltip ((,class (:background ,black-3 :foreground ,blue-1))))
   `(company-tooltip-annotation ((,class (:background ,black-4 :foreground ,red-1))))
   `(company-tooltip-common ((,class (:background ,black-2-5 :foreground ,blue-0))))
   `(company-tooltip-common-selection ((,class (:background ,blue-3 :foreground ,blue-0 ))))
   `(company-tooltip-mouse ((,class (:background ,green-0 :foreground ,black-5))))
   `(company-tooltip-selection ((,class (:background ,blue-3 :foreground ,blue-0))))

   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,blue-1))))
   `(link-visited ((,class (:underline t :foreground ,blue-2))))

   ;; ;; Helm
   ;; `(helm-bookmark-directory ((,class (:foreground ,blue-1 :background ,black-5 ))))
   ;; `(helm-bookmark-file ((,class (:foreground ,yellow-4 :background ,yellow-0))))
   ;; `(helm-bookmark-info ((,class (:foreground ,green-4 :background ,green-0))))
   ;; `(helm-buffer-directory ((,class (:foreground ,blue-1 ))))
   ;; `(helm-buffer-process ((,class (:foreground ,magenta-2))))
   ;; `(helm-buffer-saved-out ((,class (:foreground ,red-2 :background ,black-5))))
   ;; `(helm-buffer-size ((,class (:foreground ,orange-2))))
   ;; `(helm-candidate-number ((,class (:foreground ,blue-3 :background ,white-0))))
   ;; `(helm-ff-directory ((,class (:foreground ,blue-1 :background ,black-5 ))))
   ;; `(helm-ff-excutable ((,class (:foreground ,green-1 :background ,black-5 ))))
   ;; `(helm-ff-file ((,class (:foreground ,white-1 :background ,black-5))))
   ;; `(helm-ff-invalid-symlink ((,class (:foreground ,white-1 :background ,red-2))))
   ;; `(helm-ff-prefix ((,class (:foreground ,white-1 :background ,orange-2))))
   ;; `(helm-grep-cmd-line ((,class (:foreground ,green-4 :background ,green-00 ))))
   ;; `(helm-grep-file ((,class (:foreground ,purple-1))))
   ;; `(helm-grep-finish ((,class (:foreground ,green-2))))
   ;; `(helm-grep-lineno ((,class (:foreground ,orange-2))))
   ;; `(helm-grep-match ((,class (:background ,black-4 :foreground ,yellow-1 ))))
   ;; `(helm-grep-running ((,class (:foreground ,red-0 :background nil))))
   ;; `(helm-header ((,class (:foreground ,blue-3 :background ,blue-0))))
   ;; `(helm-lisp-show-completion ((,class (:foreground ,black-3 :background ,green-0))))
   ;; `(helm-match ((,class (:foreground ,green-2 :background ,black-5 ))))
   ;; `(helm-selection ((,class (:foreground ,red-00 :background nil, :weight normal :underline t))))
   ;; `(helm-selection-line ((,class (:foreground nil :background ,yellow-4))))
   ;; `(helm-source-header ((,class (:foreground ,white-0
   ;;                                            :background nil
   ;;                                            :family "quicksand"
   ;;                                            :weight bold
   ;;                                            :foreground ,purple-1
   ;;                                            :height 1.2))))
   ;; `(helm-visible-mark ((,class (:foreground ,magenta-2 :background ,magenta-0))))

   ;; ivy-mode
   `(ivy-current-match ((,class (:foreground ,red-00 :bold nil :underline t))))
   `(ivy-confirm-face ((,class (:foreground ,green-4 :background ,green-00 :bold nil))))
   `(ivy-subdir ((,class (:foreground ,blue-1 :bold nil))))
   `(ivy-virtual ((,class (:foreground ,magenta-3))))

   `(ivy-minibuffer-match-face-1 ((,class (:background nil :foreground ,white-0))))
   `(ivy-minibuffer-match-face-2 ((,class (:bold nil :background nil :foreground ,white-0))))
   `(ivy-minibuffer-match-face-3 ((,class (:bold nil :background nil :foreground ,white-0))))
   `(ivy-minibuffer-match-face-4 ((,class (:bold nil :background nil :foreground ,white-0))))

   ;; swiper
   `(swiper-match-face-1 ((,class (:background ,blue-1 :foreground ,white-0))))
   `(swiper-match-face-2 ((,class (:bold nil :background nil :foreground ,white-0))))
   `(swiper-match-face-3 ((,class (:bold nil :background ,magenta-2 :foreground ,white-0))))
   `(swiper-match-face-4 ((,class (:bold nil :background ,cyan-3 :foreground ,white-0))))
   `(swiper-line-face ((,class (:foreground ,orange-2 :bold nil :inherit highlight))))


   ;; Dired/Dired+
   `(dired-directory ((,class (:foreground ,blue-1 ))))
   `(dired-flagged ((,class (:foreground ,red-1))))
   `(dired-header ((,class (:foreground ,black-5 :background ,green-2 ))))
   `(dired-ignored ((,class (:foreground ,black-1))))
   `(dired-mark ((,class (:foreground ,green-1))))
   `(dired-marked ((,class (:foreground ,green-2))))
   `(dired-perm-write ((,class (:foreground ,red-2 ))))
   `(dired-symlink ((,class (:foreground ,magenta-2))))
   `(dired-warning ((,class (:foreground ,white-1 :background ,red-3 ))))
   `(diredp-compressed-file-suffix ((,class (:foreground ,purple-2))))
   `(diredp-date-time ((,class (:foreground ,blue-1 :background ,black-4))))
   `(diredp-deletion ((,class (:foreground ,white-1, :background ,red-3))))
   `(diredp-deletion-file-name ((,class (:foreground ,red-2))))
   `(diredp-dir-heading ((,class (:foreground ,black-5 :background ,green-2))))
   `(diredp-dir-priv ((,class (:foreground ,blue-1 :background ,black-5 ))))
   `(diredp-display-msg ((,class (:foreground ,orange-2))))
   `(diredp-executable-tag ((,class (:foreground ,green-2))))
   `(diredp-file-name ((,class (:foreground ,white-1))))
   `(diredp-file-suffix ((,class (:foreground ,orange-2))))
   `(diredp-flag-mark ((,class (:foreground ,white-1 :background ,magenta-3 ))))
   `(diredp-flag-mark-line ((,class (:foreground ,black-5 :background ,magenta-1))))
   `(diredp-ignored-file-name ((,class (:foreground ,black-2))))
   `(diredp-link-priv ((,class (:foreground ,magenta-3))))
   `(diredp-mode-line-flagged ((,class (:foreground ,black-5 :background ,green-2))))
   `(diredp-mode-line-marked ((,class (:foreground ,white-1 :background ,magenta-3 bold t))))
   `(diredp-no-priv ((,class (:foreground ,white-1 :background ,black-4))))
   `(diredp-number ((,class (:foreground ,yellow-1))))
   `(diredp-other-priv ((,class (:foreground ,white-1 :background ,blue-3))))
   `(diredp-rare-priv ((,class (:foreground ,white-1 :background ,purple-2))))
   `(diredp-symlink ((,class (:foreground ,magenta-3))))
   `(diredp-read-priv ((,class (:foreground ,green-4 :background ,green-0))))
   `(diredp-write-priv ((,class (:foreground ,blue-5 :background ,blue-0))))
   `(diredp-exec-priv ((,class (:foreground ,red-3 :background ,orange-0))))

   ;; Magit >= 2.1.0
   `(magit-bisect-bad ((,class (:foreground ,red-3 :background ,red-00))))
   `(magit-bisect-good ((,class (:foreground ,green-4 :background ,green-0))))
   `(magit-bisect-skip ((,class (:foreground ,yellow-4 :background ,orange-00))))
   `(magit-blame-date ((,class (:foreground ,orange-2 :background ,black-3))))
   `(magit-blame-hash ((,class (:foreground ,orange-2 :background ,black-3))))
   `(magit-blame-heading ((,class (:foreground ,white-1 :background ,black-3))))
   `(magit-blame-name ((,class (:foreground ,green-1 :background ,black-3))))
   `(magit-blame-summary ((,class (:foreground ,white-2 :background ,black-3))))
   `(magit-branch-current ((,class (:foreground ,white-0 :background ,orange-2  :underline nil))))
   `(magit-branch-local ((,class (:foreground ,green-4 :background ,green-00  :underline t))))
   `(magit-branch-remote ((,class (:foreground ,blue-3 :background ,blue-0  :underline t))))
   `(magit-cherry-equivalent ((,class (:foreground ,purple-2))))
   `(magit-cherry-unmatched ((,class (:foreground ,cyan-4))))
   `(magit-diff-added ((,class (:foreground ,green-0 :background nil ))))
   `(magit-diff-added-highlight ((,class (:foreground ,green-0  :inherit (magit-section-highlight)))))
   `(magit-diff-base ((,class (:foreground ,yellow-1 :background nil))))
   `(magit-diff-base-highlight ((,class (:foreground ,yellow-1  :inherit (magit-section-highlight)))))
   `(magit-diff-conflict-heading ((,class (:foreground ,white-0 :background ,orange-2))))
   `(magit-diff-context ((,class (:foreground ,white-1 :background nil))))
   `(magit-diff-context-highlight ((,class (:foreground ,white-1 :inherit (magit-section-highlight)))))
   `(magit-diff-file-heading ((,class (:foreground ,white-0 ))))
   `(magit-diff-file-heading-highlight ((,class (:background ,blue-3 ))))
   `(magit-diff-file-heading-selection ((,class (:foreground ,white-0 :background ,black-2 ))))
   `(magit-diff-hunk-heading ((,class (:foreground ,black-2 :background ,black-3 ))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,black-4 :background ,blue-01))))
   `(magit-diff-hunk-heading-selection ((,class (:foreground ,white-1 :background ,white-1))))
   `(magit-diff-lines-boundary ((,class (:foreground ,white-1 :background ,red-0))))
   `(magit-diff-lines-heading ((,class (:foreground ,white-1 :background ,red-0))))
   `(magit-diff-our ((,class (:foreground ,magenta-3))))
   `(magit-diff-our-highlight ((,class (:foreground ,magenta-3 :background ,magenta-00))))
   `(magit-diff-removed ((,class (:foreground ,red-0 :background nil ))))
   `(magit-diff-removed-highlight ((,class (:foreground ,red-0  :inherit (magit-section-highlight)))))
   `(magit-diff-their ((,class (:foreground ,cyan-4)))) ;
   `(magit-diff-their-highlight ((,class (:foreground ,cyan-6 :background ,cyan-1))))
   `(magit-diff-whitespace-warning ((,class (:foreground ,red-3 :background ,red-3))))
   `(magit-diffstat-added ((,class (:foreground ,green-3 :background ,green-0 ))))
   `(magit-diffstat-removed ((,class (:foreground ,red-3 :background ,red-0 ))))
   `(magit-dimmed ((,class (:foreground ,black-2))))
   `(magit-filename ((,class (:foreground ,blue-1))))
   `(magit-hash ((,class (:foreground ,orange-2 :background nil))))
   `(magit-head ((,class (:foreground ,orange-4 :background ,orange-000))))
   `(magit-header-line ((,class (:foreground ,orange-2))))
   `(magit-log-author ((,class (:foreground ,green-2 :background nil))))
   `(magit-log-date ((,class (:foreground ,black-2 :background nil))))
   `(magit-log-graph ((,class (:foreground ,black-2 :background nil))))
   `(magit-process-ng ((,class (:foreground ,red-3 :background ,red-00 :underline t))))
   `(magit-process-ok ((,class (:foreground ,green-3 :background ,green-00 :underline t))))
   `(magit-reflog-amend ((,class (:foreground ,magenta-3 :background ,magenta-00))))
   `(magit-reflog-checkout ((,class (:foreground ,green-3 :background ,green-00))))
   `(magit-reflog-cherry-pick ((,class (:foreground ,orange-4 :background ,orange-00))))
   `(magit-reflog-commit ((,class (:foreground ,yellow-4 :background ,yellow-0))))
   `(magit-reflog-merge ((,class (:foreground ,purple-4 :background ,purple-00))))
   `(magit-reflog-other ((,class (:foreground ,white-0 :background ,black-3))))
   `(magit-reflog-rebase ((,class (:foreground ,cyan-6 :background ,cyan-2))))
   `(magit-reflog-remote ((,class (:foreground ,blue-4 :background ,blue-0))))
   `(magit-reflog-reset ((,class (:foreground ,red-3 :background ,red-00))))
   `(magit-section-heading ((,class (:foreground ,orange-3 :background nil  :underline t))))
   `(magit-section-heading-selection ((,class (:background ,blue-0))))
   `(magit-section-highlight ((,class (:background ,black-3))))
   `(magit-sequence-done ((,class (:foreground ,green-3))))
   `(magit-sequence-drop ((,class (:foreground ,orange-2))))
   `(magit-sequence-head ((,class (:foreground ,blue-2))))
   `(magit-sequence-onto ((,class (:foreground ,purple-2))))
   `(magit-sequence-part ((,class (:foreground ,cyan-4))))
   `(magit-sequence-pick ((,class (:foreground ,magenta-2))))
   `(magit-sequence-stop ((,class (:foreground ,red-3))))
   `(magit-signature-bad ((,class (:foreground ,red-2))))
   `(magit-signature-good ((,class (:foreground ,green-3))))
   `(magit-signature-untrusted ((,class (:foreground ,yellow-3))))
   `(magit-tag ((,class (:foreground ,blue-3 :background ,blue-0))))
   `(magit-valid-signature ((,class (:foreground ,cyan-4 :background ,LIGHT_BG ))))
   `(magit-whitespace-warning-face ((,class (:foreground ,white-0 :background ,red-2 ))))

   ;; Magit
   `(magit-branch ((,class (:foreground ,green-4 :background ,green-01  :underline t))))
   `(magit-diff-add ((,class (:foreground ,green-0 :background nil ))))
   `(magit-diff-del ((,class (:foreground ,red-0 :background nil ))))
   `(magit-diff-file-header ((,class (:foreground ,white-0 :background ,black-2 ))))
   `(magit-diff-hunk-header ((,class (:foreground ,white-2 :background ,black-2-5 ))))
   `(magit-diff-merge-current ((,class (:foreground ,purple-1))))
   `(magit-diff-merge-diff3-separator ((,class (:foreground ,purple-1))))
   `(magit-diff-merge-proposed ((,class (:foreground ,purple-1))))
   `(magit-diff-merge-separator ((,class (:foreground ,purple-1))))
   `(magit-diff-none ((,class (:foreground ,black-2))))
   `(magit-header ((,class (:foreground ,blue-2 :background ,white-0 :underline ,blue-2))))
   `(magit-item-highlight ((,class (:background "#444444" :foreground ,white-0))))
   `(magit-item-mark ((,class (:foreground ,white-0 :background ,blue-3))))
   `(magit-log-author ((,class (:foreground ,green-0 :background ,black-4))))
   `(magit-log-author-date-cutoff ((,class (:foreground ,red-1 ))))
   `(magit-log-date ((,class (:foreground ,white-1 :background ,black-4))))
   `(magit-log-graph ((,class (:foreground ,white-2 :background ,black-4))))
   `(magit-log-head-label-bisect-bad ((,class (:foreground ,red-3 :background ,red-00))))
   `(magit-log-head-label-bisect-good ((,class (:foreground ,green-4 :background ,green-0))))
   `(magit-log-head-label-bisect-skip ((,class (:foreground ,yellow-3 :background ,orange-00))))
   `(magit-log-head-label-default ((,class (:foreground ,green-4 :background ,green-2  :underline t))))
   `(magit-log-head-label-head ((,class (:foreground ,green-4 :background ,green-01  :underline t))))
   `(magit-log-head-label-local ((,class (:foreground ,green-4 :background ,green-00  :underline t))))
   `(magit-log-head-label-patches ((,class (:foreground ,orange-4 :background ,orange-0  :underline t))))
   `(magit-log-head-label-remote ((,class (:foreground ,blue-4 :background ,blue-0  :underline t))))
   `(magit-log-head-label-tags ((,class (:foreground ,yellow-4 :background ,yellow-00  :underline t))))
   `(magit-log-head-label-wip ((,class (:foreground ,white-2 :background ,black-2))))
   `(magit-log-message ((,class (:foreground ,white-1 :background nil))))
   `(magit-log-reflog-label-amend ((,class (:foreground ,magenta-3 :background ,magenta-0))))
   `(magit-log-reflog-label-checkout ((,class (:foreground ,green-4 :background ,green-00))))
   `(magit-log-reflog-label-cherry-pick ((,class (:foreground ,orange-4 :background ,orange-00))))
   `(magit-log-reflog-label-commit ((,class (:foreground ,yellow-4 :background ,yellow-0))))
   `(magit-log-reflog-label-merge ((,class (:foreground ,purple-4 :background ,purple-0))))
   `(magit-log-reflog-label-other ((,class (:foreground ,white-0 :background ,black-3))))
   `(magit-log-reflog-label-rebase ((,class (:foreground ,cyan-6 :background ,cyan-2))))
   `(magit-log-reflog-label-remote ((,class (:foreground ,blue-4 :background ,blue-0))))
   `(magit-log-reflog-label-reset ((,class (:foreground ,red-3 :background ,red-00))))
   `(magit-log-sha1 ((,class (:foreground ,orange-2 :background ,black-4))))
   `(magit-process-ng ((,class (:foreground ,red-3 :background ,red-00 :underline t ))))
   `(magit-process-ok ((,class (:foreground ,green-4 :background ,green-00 :underline t ))))
   `(magit-section-title ((,class (:foreground ,orange-2 :background ,black-5 :underline t :bold ,t))))
   `(magit-signature-bad ((,class (:foreground ,red-1))))
   `(magit-signature-good ((,class (:foreground ,green-1))))
   `(magit-signature-none ((,class (:foreground ,white-1))))
   `(magit-signature-untrusted ((,class (:foreground ,cyan-3))))
   `(magit-tag ((,class (:foreground ,blue-3 :background ,blue-0))))
   `(magit-valid-signature ((,class (:foreground ,cyan-3 :background ,black-5 ))))
   `(magit-whitespace-warning-face ((,class (:foreground ,white-0 :background ,red-3 ))))

   ;; git-commit-mode
   `(git-commit-branch-face ((,class (:foreground ,blue-4 :background ,white-0  :underline t))))
   `(git-commit-comment-action-face ((,class (:foreground ,orange-2 :background ,black-5 :underline t))))
   `(git-commit-comment-file-face ((,class (:foreground ,magenta-2))))
   `(git-commit-comment-heading-face ((,class (:foreground ,green-01 :background ,black-3 ))))
   `(git-commit-known-pseudo-header-face ((,class (:foreground ,green-1))))
   `(git-commit-no-branch-face ((,class (:foreground ,orange-3))))
   `(git-commit-nonempty-second-line-face ((,class (:foreground ,red-2))))
   `(git-commit-note-face ((,class (:foreground ,cyan-3))))
   `(git-commit-overlong-summary-face ((,class (:foreground ,red-2))))
   `(git-commit-pseudo-header-face ((,class (:foreground ,magenta-3))))
   `(git-commit-summary-face ((,class (:foreground ,blue-1))))
   `(git-rebase-description-face ((,class (:foreground ,black-3))))
   `(git-rebase-killed-action-face ((,class (:foreground ,black-3))))

   ;; Message faces
   `(message-cited-text ((,class (:foreground ,green-1))))
   `(message-header-cc ((,class (:foreground ,blue-0))))
   `(message-header-name ((,class (:foreground ,white-3))))
   `(message-header-newsgroups ((,class (:foreground ,blue-1 ))))
   `(message-header-other ((,class (:foreground ,magenta-1))))
   `(message-header-subject ((,class (:foreground ,white-0 ))))
   `(message-header-to ((,class (:foreground ,blue-1 :underline t ))))
   `(message-header-xheader ((,class (:foreground ,black-1))))
   `(message-mml ((,class (:foreground ,orange-2))))
   `(message-separator ((,class (:foreground ,black-2-5))))

   ;; Grep
   `(grep-context-face ((,class (:foreground ,red-2))))
   `(grep-error-face ((,class (:foreground ,red-1 :underline t))))
   `(grep-hit-face ((,class (:foreground ,green-2))))
   `(grep-match-face ((,class (:foreground nil :background nil :inherit match))))

   ;; Diff
   `(diff-added ((,class (:foreground ,green-0 :background ,black-4 ))))
   `(diff-changed ((,class (:foreground ,yellow-2 :background ,black-4 ))))
   `(diff-context ((,class (:foreground ,black-2-5))))
   `(diff-file-header ((,class (:foreground ,black-5 :background ,blue-0 ))))
   `(diff-function ((,class (:foreground ,black-4 :background ,white-2))))
   `(diff-header ((,class (:foreground ,blue-3 :background ,blue-0))))
   `(diff-hunk-header ((,class (:foreground ,blue-0 :background ,black-3 ))))
   `(diff-index ((,class (:foreground ,black-4 :background ,white-3 ))))
   `(diff-indicator-added ((,class (:foreground ,white-0 :background ,green-3 ))))
   `(diff-indicator-changed ((,class (:foreground ,white-0 :background ,yellow-3 ))))
   `(diff-indicator-removed ((,class (:foreground ,white-0 :background ,red-3 ))))
   `(diff-nonexistent ((,class (:foreground ,white-0 :background ,red-3 ))))
   `(diff-refine-added ((,class (:foreground ,white-0 :background ,green-4 ))))
   `(diff-refine-change ((,class (:foreground ,white-0 :background ,yellow-4 ))))
   `(diff-refine-removed ((,class (:foreground ,white-0 :background ,red-3 ))))
   `(diff-removed ((,class (:foreground ,red-0 :background ,black-4 ))))

   ;; Ediff
   `(ediff-current-diff-A ((,class (:background ,yellow-4))))
   `(ediff-current-diff-Ancestor ((,class (:background ,blue-3))))
   `(ediff-current-diff-B ((,class (:background ,purple-4))))
   `(ediff-current-diff-C ((,class (:background ,orange-5))))
   `(ediff-even-diff-A ((,class (:background ,black-3))))
   `(ediff-even-diff-Ancestor ((,class (:background ,black-3))))
   `(ediff-even-diff-B ((,class (:background ,black-3))))
   `(ediff-even-diff-C ((,class (:background ,black-3))))
   `(ediff-fine-diff-A ((,class (:foreground nil :background ,green-5 ))))
   `(ediff-fine-diff-Ancestor ((,class (:foreground nil :background ,green-5 ))))
   `(ediff-fine-diff-B ((,class (:foreground nil :background ,green-5 ))))
   `(ediff-fine-diff-C ((,class (:foreground nil :background ,green-5 ))))
   `(ediff-odd-diff-A ((,class (:background ,red-3))))
   `(ediff-odd-diff-Ancestor ((,class (:background ,red-3))))
   `(ediff-odd-diff-B ((,class (:background ,red-3))))
   `(ediff-odd-diff-C ((,class (:background ,red-3))))

   ;; smerge
   `(smerge-refined-change ((,class (:background ,blue-3 :foreground ,white-0))))

   ;; Flyspell faces
   `(flyspell-duplicate ((,class (:underline t foreground-color,orange-1))))
   `(flyspell-incorrect ((,class (:background ,red-1 :foreground ,white-1 ))))

   ;; Semantic faces
   `(semantic-decoration-on-includes ((,class (:underline ,black-1))))
   `(semantic-decoration-on-private-members-face
     ((,class (:background ,purple-3))))
   `(semantic-decoration-on-protected-members-face
     ((,class (:background ,magenta-3))))
   `(semantic-decoration-on-unknown-includes
     ((,class (:background ,red-3))))
   `(semantic-decoration-on-unparsed-includes
     ((,class (:background ,black-4))))
   `(semantic-tag-boundary-face ((,class (:overline ,blue-1))))
   `(semantic-unmatched-syntax-face ((,class (:underline ,red-1))))

   ;; CUA
   `(cua-rectangle ((,class (:background ,magenta-3 :foreground ,white-1))))

   ;; Ace-jump
   `(ace-jump-face-background ((,class (:background nil :foreground ,black-2-5))))
   `(ace-jump-face-foreground ((,class (:foreground ,orange-2 ))))

   ;; avy-mode
   `(avy-lead-face ((,class (:background ,cyan-1 :foreground ,black-4))))
   `(avy-lead-face-0 ((,class (:background ,purple-00 :foreground ,black-4))))
   `(avy-lead-face-1 ((,class (:background ,white-2 :foreground ,black-4))))
   `(avy-lead-face-2 ((,class (:background ,green-2 :foreground ,black-4))))

   ;; EShell
   `(eshell-ls-archive ((,class (:foreground ,purple-2))))
   `(eshell-ls-backup ((,class (:foreground ,black-3))))
   `(eshell-ls-clutter ((,class (:foreground ,black-2))))
   `(eshell-ls-directory ((,class (:foreground ,blue-1 ))))
   `(eshell-ls-executable ((,class (:foreground ,green-2))))
   `(eshell-ls-missing ((,class (:foreground ,white-0 :background ,red-3))))
   `(eshell-ls-product ((,class (:foreground ,white-0 :background ,green-2))))
   `(eshell-ls-readonly ((,class (:foreground ,orange-3))))
   `(eshell-ls-special ((,class (:foreground ,yellow-1))))
   `(eshell-ls-symlink  ((,class (:foreground ,magenta-2))))
   `(eshell-ls-unreadable ((,class (:foreground ,black-2))))
   `(eshell-prompt ((,class (:foreground ,white-0 :background ,black-2-5 ))))

   ;; Comint prompt
   `(comint-highlight-prompt ((,class (:foreground ,white-0 :background ,black-2-5 ))))

   ;; which-function-mode
   `(which-func ((,class (:foreground ,white-0 :background ,orange-2))))

   ;; Flymake
   `(flymake-warnline ((,class (:underline ,orange-2))))
   `(flymake-errline ((,class (:underline ,red-2))))

   ;; Flycheck
   `(flycheck-error ((,class (:background ,red-2 :foreground ,white-0 ))))
   `(flycheck-warnline ((,class (:background ,orange-2 :foreground ,white-0 ))))

   ;; Javascript
   `(js2-function-param-face ((,class (:foreground ,green-3))))
   `(js2-external-variable ((,class (:foreground ,orange-2 :underline t))))
   `(js2-error ((,class (:foreground ,red-2 :underline t ))))
   `(js2-warning ((,class (:foreground nil :underline t ))))

   ;; rcirc
   `(rcirc-bright-nick ((,class (:foreground ,blue-1 ))))
   `(rcirc-dim-nick ((,class (:foreground ,black-2 ))))
   `(rcirc-keyword ((,class (:foreground ,magenta-2 ))))
   `(rcirc-my-nick ((,class (:foreground ,green-2 ))))
   `(rcirc-nick-in-message ((,class (:foreground ,green-3))))
   `(rcirc-nick-in-message-full-line ((,class (:foreground ,blue-3))))
   `(rcirc-other-nick ((,class (:foreground ,blue-1 ))))
   `(rcirc-prompt ((,class (:foreground ,black-3 :background ,green-01 ))))
   `(rcirc-server ((,class (:foreground ,black-1))))
   `(rcirc-server-prefix ((,class (:foreground ,black-1))))
   `(rcirc-timestamp ((,class (:foreground ,orange-2))))
   `(rcirc-track-keyword ((,class (:foreground ,magenta-2))))
   `(rcirc-track-nick ((,class (:foreground ,blue-1))))
   `(rcirc-url ((,class (:foreground ,blue-1 :bold nil :underline ,blue-2))))

   ;; ERC
   `(erc-button ((,class (:foreground ,blue-1 :underline ,blue-1 :bold nil))))
   `(erc-current-nick-face ((,class (:foreground ,green-1))))
   `(erc-dangerous-hosts ((,class (:foreground ,red-2 ))))
   `(erc-direct-msg-face ((,class (:foreground ,orange-2))))
   `(erc-error-face ((,class (:foreground ,red-2))))
   `(erc-header-face ((,class (:background ,blue-1))))
   `(erc-input-face ((,class (:foreground ,white-0))))
   `(erc-keyword-face ((,class (:foreground ,magenta-2 ))))
   `(erc-my-nick-face ((,class (:foreground ,green-1 ))))
   `(erc-nick-default-face ((,class ( :foreground ,blue-1))))
   `(erc-nick-msg-face ((,class (:weight normal :foreground ,orange-2))))
   `(erc-notice-face ((,class (:foreground ,black-2))))
   `(erc-pal-face ((,class (:foreground ,purple-1))))
   `(erc-prompt-face ((,class ( :foreground ,green-01 :background ,black-2-5))))
   `(erc-timestamp-face ((,class (:foreground ,orange-2))))

   ;; ansi-term
   `(term-color-black ((,class (:background ,black-5 :foreground ,black-5))))
   `(term-color-blue ((,class (:background ,cyan-3 :foreground ,cyan-3))))
   `(term-color-cyan ((,class (:background ,cyan-3 :foreground ,cyan-3))))
   `(term-color-green ((,class (:background ,green-2 :foreground ,green-2))))
   `(term-color-magenta ((,class (:background ,magenta-3 :foreground ,magenta-3))))
   `(term-color-red ((,class (:background ,red-1 :foreground ,red-1))))
   `(term-color-white ((,class (:background ,white-0 :foreground ,white-0))))
   `(term-color-yellow ((,class (:background ,orange-2 :foreground ,orange-2))))

   ;; git-gutter (&-fringe)
   `(git-gutter:added ((,class (:foreground ,green-1 :background nil ))))
   `(git-gutter:deleted ((,class (:foreground ,red-3 :background nil ))))
   `(git-gutter:modified ((,class (:foreground ,yellow-1 :background nil ))))

   ;; ;; spaceline
   ;; '(spaceline-highlight-face-modified ((t (:slant italic :weight semi-light :family "Inconsolata"))))
   ;; '(spaceline-modified ((t (:background "DarkGoldenrod2" :foreground "#3E3D31" :inherit (quote mode-line)))))
   ;; '(spaceline-unmodified ((t (:background "#afd7ff" :foreground "#3E3D31" :inherit (quote mode-line)))))

   ;; ;; Swoop
   ;; `(swoop-face-header-format-line ((,class (:foreground ,black-6 :background nil :underline nil))))
   ;; `(swoop-face-line-buffer-name ((,class (:foreground ,green-4 :background ,green-0))))
   ;; `(swoop-face-line-number ((,class (:foreground "#87875f" :background "#d7d7af"))))
   ;; `(swoop-face-target-line ((,class (:foreground ,yellow-1 :background ,black-2-5))))
   ;; `(swoop-face-target-words ((,class (:foreground ,magenta-1 :background ,black-2-5 ))))
   ;; `(helm-swoop-target-line-block-face ((,class (:foreground ,yellow-1 :background ,black-3))))
   ;; `(helm-swoop-target-line-face ((,class (:foreground ,yellow-1 :background ,black-2-5))))
   ;; `(helm-swoop-target-word-face ((,class (:foreground ,magenta-3 :background ,magenta-0 ))))

   ;; table
   `(table-cell ((,class (:foreground ,white-0 :background ,black-3))))

   ;; compilation
   `(compilation-column-number ((,class (:foreground ,green-2))))
   `(compilation-error ((,class (:foreground ,red-3 :background ,red-0 ))))
   `(compilation-info ((,class (:foreground ,orange-2 :background ,black-3))))
   `(compilation-line-number ((,class (:foreground ,blue-1))))
   `(compilation-mode-line-exit ((,class (:foreground ,green-4 :background ,green-0 ))))
   `(compilation-mode-line-fail ((,class (:foreground ,red-3 :background ,red-00 ))))
   `(compilation-mode-line-run ((,class (:foreground ,orange-4 :background ,orange-00 ))))
   `(compilation-warning ((,class (:foreground ,orange-3))))

   ;; info
   `(info-header-node ((,class (:foreground ,magenta-2 ))))
   `(info-header-xref ((,class (:foreground ,blue-1 :background nil ))))
   `(info-index-match ((,class (:background ,blue-3))))
   `(info-menu-header ((,class (:foreground ,white-0  :underline t))))
   `(info-menu-star ((,class (:foreground ,red-1))))
   `(info-node ((,class (:foreground ,red-3))))
   `(Info-quoted ((,class (:foreground ,purple-00 :inherit nil))))
   `(info-title-1 ((,class (:foreground ,blue-1 ))))
   `(info-title-2 ((,class (:foreground ,green-2 ))))
   `(info-title-3 ((,class (:foreground ,orange-2 ))))
   `(info-title-4 ((,class (:foreground ,magenta-2 ))))
   `(info-xref ((,class (:foreground ,blue-1 :underline t))))
   `(info-xref-visited ((,class (:foreground ,purple-1 :underline t))))

   ;; tty-menu
   `(menu ((,class (:foreground ,black-1 :background ,black-3))))
   `(tty-menu-disabled-face ((,class (:foreground ,black-2-5 :background ,black-3))))
   `(tty-menu-enabled-face ((,class (:foreground ,white-0 :background ,black-3 ))))
   `(tty-menu-selected-face ((,class (:background ,blue-3))))

   ;; Hydra
   `(hydra-face-red ((,class (:foreground ,red-0 :bold nil))))
   `(hydra-face-blue ((,class (:foreground ,blue-1 :bold nil))))
   `(hydra-face-amaranth ((,class (:foreground ,magenta-2 :bold nil))))
   `(hydra-face-pink ((,class (:foreground ,red-1 :bold nil))))
   `(hydra-face-teal ((,class (:foreground ,blue-2 :bold nil))))

   ;; web-mode
   `(web-mode-comment-face ((,class (:foreground ,black-2-5))))
   `(web-mode-current-element-highlight-face ((,class (:background ,black-3))))
   `(web-mode-current-column-highlight-face ((,class (:background ,black-3))))
   `(web-mode-symbol-face ((,class (:foreground ,yellow-2))))
   `(web-mode-type-face ((,class (:foreground ,cyan-3))))

   ;; Custom
   ;; '(custom-variable-tag ((,class (:weight normal :background ,blue-0 :foreground ,blue-3))))
   `(custom-button ((,class (:background ,blue-0 :foreground ,blue-3
                                         :box (:line-width 1 :style released-button)))))
   `(custom-button-mouse ((,class (:background ,blue-00 :foreground ,black-3
                                               :box (:line-width 1 :style released-button)))))
   `(custom-button-pressed ((,class (:foreground ,black-3 :background ,white-1
                                                 :box (:line-width 1 :style pressed-button)))))

   `(button ((,class (:weight thin :foreground ,blue-1 :underline t))))

   (custom-theme-set-variables
    'moe-dark
    `(ansi-color-names-vector [,black-5 ,red-0 ,green-0 ,yellow-1
                                        ,blue-1 ,purple-1 ,blue-0 ,white-1]))))


(setq moe-theme-which-enabled 'dark)

(provide-theme 'moe-dark)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; moe-dark-theme.el ends here

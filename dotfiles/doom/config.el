;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
 (setq user-full-name "Jose Cruz"
       user-mail-address "jlnmailbx@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-opera-light-modded)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; org mode config
;;(setq org-todo-keywords
;;	(quote ((sequence "TODO(t)" "INPROGRESS(i)" "WAITING(W)" "|" "DONE(d)" "CANCELLED(c)"))))
;; (setq org-log-done t)

;;---------------------------------------------
;;org-agenda-time-grid
;;--------------------------------------------

;; nothing to be done here

;;=================================================================================
;;LaTeX in org mode
;;=================================================================================
        ;; these commented-out lines break company mode, so don't uncomment them
        ;; Show hidden emphasis markers
                ;;(use-package org-appear
                  ;;:hook (org-mode . org-appear-mode))

        ;; Enable org-frogtog-mode package
                ;;(add-hook! 'org-mode-hook 'org-fragtog-mode)

        ;;Start Emacs with LaTeX previewing
                ;;(setq org-startup-with-latex-preview t)

        ;;(setq org-src-preserve-indentation t)

        ;;(after! org (plist-put org-format-latex-options :scale 1.20))
;;===================================================================================

;; Count words in document
        (global-set-key (kbd "M-=") 'count-words)

;; no quit message
        (setq confirm-kill-emacs nil)

;; save undo history from previous sessions
        (require 'undo-fu-session)
        (undo-fu-session-global-mode)

;; autocompletion
        (add-hook 'after-init-hook 'global-company-mode)
        (global-company-mode)
        (setq company-idle-delay 0)
        (setq company-minimum-prefix-length 2)

;; relative line numbers
(setq display-line-numbers-type 'relative)

;; set 4 space indent in doom
;; (setq tab-width 4)
;; (setq indent-tabs-mode nil)

;; (setq indent-tabs-mode t
;;       tab-width 4)

;; (setq indent-tabs-mode t)
;; (setq tab-always-indent nil)
;; (setq tab-width 4)
;; (setq-default indent-tabs-mode nil)
;; (setq-default tab-width 4)

;; (defun org-custom-settings ()
;;   (setq tab-width 4))

;; (add-hook 'org-mode-hook 'org-custom-settings)


;; TRYING TO CHANGE TAB-WIDTH FROM 8 TO 4 DID NOT WORK
;; (add-hook! 'org-mode-hook
;;   (add-hook! 'after-change-major-mode-hook :local
;;     (setq-local tab-width 4)))

;; (setq-default tab-width 4)

;; custom keybinds
        ;; To use function keys
        ;; (global-set-key [f1] 'command)
        (global-set-key (kbd "C-c C-n") 'calendar)

;; (setq org-journal-file-format "%Y-%m-%d.org")

;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Johnson Lee"
      user-mail-address "0xjohnsonlee@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
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
(setq doom-theme 'doom-tokyo-night)
(setq doom-font (font-spec :family "sarasa mono sc" :size 14))
(unless (doom-font-exists-p doom-font)
  (setq doom-font nil))
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;; (setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(custom-set-faces
 `(default ((t (:background nil)))))
(global-tree-sitter-mode)
(global-prettify-symbols-mode -1)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

;; OCaml configuration
(add-hook 'tuareg-mode-hook
          (lambda()
            (add-hook 'before-save-hook #'+format/buffer nil t)
            (kill-local-variable 'prettify-symbols-alist)
            (setq mode-name "🐫")
            ))
(add-hook 'racket-mode-hook
          (lambda()
            (racket-unicode-input-method-enable)
            (setq mode-name "🧙")
            ))
(add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
(global-evil-matchit-mode 1)
(setq lsp-inlay-hint-enable t)

;; pyim相关
(require 'pyim-tsinghua-dict)
(require 'pyim-dregcache)
(setq default-input-method "pyim")
(setq pyim-dcache-backend 'pyim-dregcache)
(setq pyim-page-tooltip 'popup)
(setq pyim-cloudim 'baidu)
(pyim-default-scheme 'xiaohe-shuangpin)
(pyim-tsinghua-dict-enable)
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

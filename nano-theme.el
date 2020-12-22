;; ---------------------------------------------------------------------
;; GNU Emacs / N Λ N O - Emacs made simple
;; Copyright (C) 2020 - N Λ N O developers 
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;; ---------------------------------------------------------------------
;; 
;; This file defines the 6 basic nano faces:
;;
;; - nano-face-critical  - nano-face-popout   - nano-face-salient
;; - nano-face-default   - nano-face-faded    - nano-face-subtle
;;
;; These faces are used for setting all faces in various modes. The only
;; exception is the highlight line mode that uses a very light color.
;;
;; ---------------------------------------------------------------------

(defvar nano-color-foreground "#000000")
(defvar nano-color-background "#FFFFFF")
(defvar nano-color-highlight  "#FAFAFA")
(defvar nano-color-critical   "#FF0000")
(defvar nano-color-salient    "#0000FF")
(defvar nano-color-strong     "#000000")
(defvar nano-color-popout     "#FF00FF")
(defvar nano-color-subtle     "#444444")
(defvar nano-color-faded      "#888888")

;; When we set a face, we take care of removing any previous settings
(defun set-face (face style)
  "Reset a face and make it inherit style."
  (set-face-attribute face nil
   :foreground 'unspecified :background 'unspecified
   :family     'unspecified :slant      'unspecified
   :weight     'unspecified :height     'unspecified
   :underline  'unspecified :overline   'unspecified
   :box        'unspecified :inherit    style))

;; A theme is fully defined by these six faces 
(defgroup nano nil
  "Faces for the nano emacs theme")

;; Do not show prefix when displaying the nano group
;; (setq custom-unlispify-remove-prefixes t)

(defface nano-face-default nil
  "Default face is used for regular information."
:group 'nano)

(defface nano-face-critical nil
  "Critical face is for information that requires immediate action.
It should be of high constrast when compared to other faces. This
can be realized (for example) by setting an intense background
color, typically a shade of red. It must be used scarcely."
:group 'nano)

(defface nano-face-popout nil
"Popout face is used for information that needs attention.
To achieve such effect, the hue of the face has to be
sufficiently different from other faces such that it attracts
attention through the popout effect."
:group 'nano)

(defface nano-face-strong nil
"Strong face is used for information of a structural nature.
It has to be the same color as the default color and only the
weight differs by one level (e.g., light/regular or
regular/bold). IT is generally used for titles, keywords,
directory, etc."
:group 'nano)

(defface nano-face-highlight nil
"Highlight face is used to highlight information."
:group 'nano)

(defface nano-face-salient nil
"Salient face is used for information that are important.
To suggest the information is of the same nature but important,
the face uses a different hue with approximately the same
intensity as the default face. This is typically used for links."
:group 'nano)

(defface nano-face-faded nil
"Faded face is for information that are less important.
It is made by using the same hue as the default but with a lesser
intensity than the default. It can be used for comments,
secondary information and also replace italic (which is generally
abused anyway)."
:group 'nano)

(defface nano-face-subtle nil
"Subtle face is used to suggest a physical area on the screen.
It is important to not disturb too strongly the reading of
information and this can be made by setting a very light
background color that is barely perceptible."
:group 'nano)

(defun activate-nano-theme ()
  "Activate the current nano theme."
  (set-foreground-color nano-color-foreground)
  (set-background-color nano-color-background)

  (set-face-attribute 'default nil
                      :foreground (face-foreground 'default)
                      :background (face-background 'default)
                      :weight 'light)
  (set-face-attribute 'nano-face-default nil
                      :foreground (face-foreground 'default)
                      :background (face-background 'default))
  (set-face-attribute 'nano-face-critical nil
                      :foreground (face-background 'default)
                      :background nano-color-critical)
  (set-face-attribute 'nano-face-popout nil
                      :foreground nano-color-popout)
  (if (display-graphic-p)
      (set-face-attribute 'nano-face-strong nil
                          :foreground (face-foreground 'nano-face-default)
                          :family "Roboto Mono"
                          :weight 'medium)
    (set-face-attribute 'nano-face-strong nil
                        :foreground (face-foreground 'nano-face-default)
                        :weight 'bold))
  (set-face-attribute 'nano-face-salient nil
                      :foreground nano-color-salient
                      :weight 'light)
  (set-face-attribute 'nano-face-faded nil
                      :foreground nano-color-faded
                      :weight 'light)
  (set-face-attribute 'nano-face-subtle nil
                      :background nano-color-subtle)

  ;; mode-line / header-line
  (set-face-attribute 'mode-line nil
                      :height 1
                      :foreground (face-foreground 'nano-face-faded)
                      :background (face-background 'nano-face-default)
                      :overline nil
		                  :underline (face-foreground 'nano-face-faded)
		                  :box nil)
  (set-face-attribute 'mode-line-inactive nil
                      :height 1
                      :foreground (face-foreground 'nano-face-faded)
                      :background (face-background 'nano-face-default)
                      :overline nil 
                      :underline (face-foreground 'nano-face-faded)
		                  :inherit nil
                      :box nil)
  ;;(when (display-graphic-p)
  (set-face-attribute 'header-line nil
		                  :weight 'light
                      :foreground (face-foreground 'nano-face-default)
                      :background (face-background 'nano-face-subtle)
                      :overline nil
                      :underline nil
		                  :inherit nil)
  ;; (when (not (display-graphic-p))
  ;;   (set-face-attribute 'header-line nil
  ;; 		      :weight 'light
  ;;                       :foreground (face-foreground 'nano-face-default)
  ;;                       :background (face-background 'nano-face-subtle)
  ;;                       :inverse-video t
  ;;                       :overline nil
  ;;                       :underline nil
  ;;                       :box nil
  ;; 		              :inherit nil))

  ;; (set-face-attribute 'internal-border nil
  ;;                     :background (face-foreground 'nano-face-default))
  (set-face-attribute 'internal-border nil
                      :background (face-background 'nano-face-default))

  (if (display-graphic-p)
      (set-face-attribute 'bold nil :weight 'regular)
    (set-face-attribute 'bold nil :weight 'bold))

  (set-face-attribute 'cursor nil
                      :background (face-foreground 'nano-face-default))
  (set-face-attribute 'window-divider nil
                      :foreground (face-background 'nano-face-default))
  (set-face-attribute 'window-divider-first-pixel nil
                      :foreground nano-color-highlight)
  ;;                    :foreground (face-background 'nano-face-subtle))
  (set-face-attribute 'window-divider-last-pixel nil
                      :foreground nano-color-highlight)
  ;;                    :foreground (face-background 'nano-face-subtle))


  ;; Minibuffer / echo area
  (dolist (buffer (list " *Minibuf-0*" " *Echo Area 0*"
                        " *Minibuf-1*" " *Echo Area 1*"))
    (when (get-buffer buffer)
      (with-current-buffer buffer
        (face-remap-add-relative 'default 'nano-face-faded)))))

(activate-nano-theme)

;; Structural
(set-face 'bold                                     'nano-face-strong)
(set-face 'italic                                    'nano-face-faded)
(set-face 'bold-italic                              'nano-face-strong)
(set-face 'region                                   'nano-face-subtle)
(set-face 'highlight                                'nano-face-subtle)
;;(set-face 'fixed-pitch                                     'default)
(set-face 'fixed-pitch-serif                       'nano-face-default)
(set-face 'variable-pitch                          'nano-face-default)
(set-face 'cursor                                  'nano-face-default)

;; Semantic
(set-face 'shadow                                    'nano-face-faded)
(set-face 'success                                 'nano-face-salient)
(set-face 'warning                                  'nano-face-popout)
(set-face 'error                                  'nano-face-critical)
(set-face 'match                                    'nano-face-popout)

;; General
(set-face 'buffer-menu-buffer                       'nano-face-strong)
(set-face 'minibuffer-prompt                        'nano-face-strong)
(set-face 'link                                    'nano-face-salient)
(set-face 'fringe                                    'nano-face-faded)
(set-face-attribute 'fringe nil
                       :foreground (face-background 'nano-face-subtle)
                               :background (face-background 'default))
(set-face 'isearch                                  'nano-face-strong)
(set-face 'isearch-fail                              'nano-face-faded)
(set-face 'lazy-highlight                           'nano-face-subtle)
(set-face 'trailing-whitespace                      'nano-face-subtle)
(set-face 'show-paren-match                         'nano-face-popout)
(set-face 'show-paren-mismatch                           'face-normal)
(set-face-attribute 'tooltip nil                         :height 0.85)
(set-face 'secondary-selection                      'nano-face-subtle)
(set-face 'completions-common-part                  'nano-face-faded)
(set-face 'completions-first-difference             'nano-face-popout)

;; Programmation mode
(set-face 'font-lock-comment-face                    'nano-face-faded)
(set-face 'font-lock-doc-face                        'nano-face-faded)
(set-face 'font-lock-string-face                    'nano-face-popout)
(set-face 'font-lock-constant-face                 'nano-face-salient)
(set-face 'font-lock-warning-face                   'nano-face-popout)
(set-face 'font-lock-function-name-face             'nano-face-strong)
(set-face 'font-lock-variable-name-face             'nano-face-strong)
(set-face 'font-lock-builtin-face                  'nano-face-salient)
(set-face 'font-lock-type-face                     'nano-face-salient)
(set-face 'font-lock-keyword-face                  'nano-face-salient)


;; Highlight line mode
(with-eval-after-load 'hl-line
  (set-face-attribute 'hl-line nil
                      :background nano-color-highlight))

;; Buttons
(with-eval-after-load 'cus-edit
  (set-face-attribute 'custom-button nil
                      :foreground (face-foreground 'nano-face-faded)
                      :background (face-background 'nano-face-default)
                      :box `(:line-width 1
                             :color ,(face-foreground 'nano-face-faded)
                             :style nil))
  (set-face-attribute 'custom-button-mouse nil
;;                      :inherit 'custom-button
                      :foreground (face-foreground 'nano-face-faded)
                      :background (face-background 'nano-face-subtle)
                      :box `(:line-width 1
                             :color ,(face-foreground 'nano-face-faded)
                             :style nil))
  (set-face-attribute 'custom-button-pressed nil
                      :foreground (face-background 'default)
                      :background (face-foreground 'nano-face-salient)
                      :inherit 'nano-face-salient
                      :box `(:line-width 1
                             :color ,(face-foreground 'nano-face-salient)
                             :style nil)
                      :inverse-video nil))

;; Documentation
(with-eval-after-load 'info
  (set-face 'info-menu-header                       'nano-face-strong)
  (set-face 'info-header-node                      'nano-face-default)
  (set-face 'info-index-match                      'nano-face-salient)
  (set-face 'Info-quoted                             'nano-face-faded)
  (set-face 'info-title-1                           'nano-face-strong)
  (set-face 'info-title-2                           'nano-face-strong)
  (set-face 'info-title-3                           'nano-face-strong)
  (set-face 'info-title-4                           'nano-face-strong))

;; Bookmarks
(with-eval-after-load 'bookmark
  (set-face 'bookmark-menu-heading                  'nano-face-strong)
  (set-face 'bookmark-menu-bookmark                'nano-face-salient))

;; Message
(with-eval-after-load 'message
  (unless (version< emacs-version "27.0")
    (set-face 'message-cited-text-1                  'nano-face-faded)
    (set-face 'message-cited-text-2                  'nano-face-faded)
    (set-face 'message-cited-text-3                  'nano-face-faded)
    (set-face 'message-cited-text-4                 'nano-face-faded))
  (set-face 'message-cited-text                      'nano-face-faded)
  (set-face 'message-header-cc                     'nano-face-default)
  (set-face 'message-header-name                    'nano-face-strong)
  (set-face 'message-header-newsgroups             'nano-face-default)
  (set-face 'message-header-other                  'nano-face-default)
  (set-face 'message-header-subject                'nano-face-salient)
  (set-face 'message-header-to                     'nano-face-salient)
  (set-face 'message-header-xheader                'nano-face-default)
  (set-face 'message-mml                            'nano-face-popout)
  (set-face 'message-separator                       'nano-face-faded))

;; Interface
(with-eval-after-load 'cus-edit
  (set-face 'widget-field                           'nano-face-subtle)
  (set-face 'widget-button                          'nano-face-strong)
  (set-face 'widget-single-line-field               'nano-face-subtle)
  (set-face 'custom-group-subtitle                  'nano-face-strong)
  (set-face 'custom-group-tag                       'nano-face-strong)
  (set-face 'custom-group-tag-1                     'nano-face-strong)
  (set-face 'custom-comment                          'nano-face-faded)
  (set-face 'custom-comment-tag                      'nano-face-faded)
  (set-face 'custom-changed                        'nano-face-salient)
  (set-face 'custom-modified                       'nano-face-salient)
  (set-face 'custom-face-tag                        'nano-face-strong)
  (set-face 'custom-variable-tag                   'nano-face-default)
  (set-face 'custom-invalid                         'nano-face-popout)
  (set-face 'custom-visibility                     'nano-face-salient)
  (set-face 'custom-state                          'nano-face-salient)
  (set-face 'custom-link                           'nano-face-salient))

  ;; Button face is hardcoded, we have to redefine the relevant
  ;; function
  (defun package-make-button (text &rest properties)
    "Insert button labeled TEXT with button PROPERTIES at point.
PROPERTIES are passed to `insert-text-button', for which this
function is a convenience wrapper used by `describe-package-1'."
    (let ((button-text (if (display-graphic-p)
                           text (concat "[" text "]")))
          (button-face (if (display-graphic-p)
                           '(:box `(:line-width 1
                                    :color ,nano-color-subtle
                                    :style nil)
                                  :foreground nano-color-faded
                                  :background nano-color-subtle)
                         'link)))
      (apply #'insert-text-button button-text
             'face button-face 'follow-link t properties))))

(provide 'nano-theme)

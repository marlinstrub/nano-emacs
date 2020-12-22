;;; package --- summary
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
;;; Commentary:

(require 'nano-colors)
(require 'nano-theme)

;;; Code:

;; Colors from Nord theme at https://www.nordtheme.com
(defun nano-theme-kimbie-dark ()
  "Activates the kimbie dark theme.

  See https://github.com/idleberg/atom-kimbie-dark."
  (interactive)
  ;; This is a dark theme.
  (setq frame-background-mode   'dark)
  
  ;; Set the colors for the theme.
  (setq nano-color-foreground "#D3AF86")
  (setq nano-color-background "#221A0F")
  (setq nano-color-highlight  "#5E452B")
  (setq nano-color-critical   "#C53E38")
  (setq nano-color-salient    "#8AB1B0")
  (setq nano-color-strong     "#FBEBD4")
  (setq nano-color-popout     "#F79A32")
  (setq nano-color-subtle     "#463320")
  (setq nano-color-faded      "#A57A4C")

  ;; Activate the theme.
  (activate-nano-theme)

  ;; For some reason, the modeline needs to be activated separately.
  (set-face-attribute 'mode-line nil
                      :height 1
                      :underline (face-foreground 'nano-face-faded)
                      :overline nil
                      :box nil)
  (set-face 'mode-line-inactive 'mode-line))

(provide 'nano-theme-nord-dark)
;;; nano-theme-kimbie-dark.el ends here

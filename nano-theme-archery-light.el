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
(defun nano-theme-archery-light ()
  "Activates the archery light theme.

  See https://github.com/Badacadabra/vim-archery."
  (interactive)
  ;; This is a light theme.
  (setq frame-background-mode   'light)
  
  ;; Set the colors for the theme.
  (setq nano-color-foreground "#354151")
  (setq nano-color-background "#F6F9FC")
  (setq nano-color-highlight  "#D0E0EF")
  (setq nano-color-critical   "#BA2A2A")
  (setq nano-color-salient    "#006596")
  (setq nano-color-strong     "#F6F9FC")
  (setq nano-color-popout     "#F07D30")
  (setq nano-color-subtle     "#D0E0EF")
  (setq nano-color-faded      "#53586F")

  ;; Activate the theme.
  (activate-nano-theme)

  ;; For some reason, the modeline needs to be activated separately.
  (set-face-attribute 'mode-line nil
                      :height 1
                      :underline (face-foreground 'nano-face-faded)
                      :overline nil
                      :box nil)
  (set-face 'mode-line-inactive 'mode-line))

(provide 'nano-theme-archery-light)
;;; nano-theme-archery-light.el ends here

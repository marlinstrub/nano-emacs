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
(require 'nano-colors)
(require 'nano-theme)

(defun nano-theme-solarized-light ()
  (interactive)
  ;; This is a light theme.
  (setq frame-background-mode   'light)

  ;; Set the colors for the theme.
  (setq nano-color-foreground "#839496")
  (setq nano-color-background "#FDF6E3")
  (setq nano-color-highlight  "#FAFAFA")
  (setq nano-color-critical   "#DC322F")
  (setq nano-color-salient    "#859900")
  (setq nano-color-strong     "#2AA198")
  (setq nano-color-popout     "#CB4B16")
  (setq nano-color-subtle     "#EEE8D5")
  (setq nano-color-faded      "#93A1A1")

  ;; Activate the theme.
  (activate-nano-theme)

  ;; For some reason, the modeline needs to be activated separately.
  (set-face-attribute 'mode-line nil
                      :height 1
                      :underline (face-foreground 'nano-face-faded)
                      :overline nil
                      :box nil)
  (set-face 'mode-line-inactive 'mode-line))

(provide 'nano-theme-solarized-light)

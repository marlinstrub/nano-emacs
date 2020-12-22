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
;;; Code:
(require 'nano-colors)
(require 'nano-theme)

;; Colors from Nord theme at https://www.nordtheme.com
(defun nano-theme-nord-dark ()
  "Activate the dark nord theme."
  (interactive)
  ;; This is a dark theme.
  (setq frame-background-mode   'dark)
  
  ;; Set the colors for the theme.
  (setq nano-color-foreground (nord-color "snow-storm 2" )) ;; nord  6
  (setq nano-color-background (nord-color "polar-night 0")) ;; nord  0
  (setq nano-color-highlight  (nord-color "polar-night 1")) ;; nord  1
  (setq nano-color-critical   (nord-color "aurora 2"     )) ;; nord 11
  (setq nano-color-salient    (nord-color "frost 2"      )) ;; nord  9
  (setq nano-color-strong     (nord-color "snow-storm 2" )) ;; nord  6
  (setq nano-color-popout     (nord-color "aurora 1"     )) ;; nord 12
  (setq nano-color-subtle     (nord-color "polar-night 2")) ;; nord  2
  (setq nano-color-faded      "#616E87"                   ) ;;

  ;; Activate the theme.
  (activate-nano-theme)

  ;; The modeline needs to be activated separately.
  (set-face-attribute 'mode-line nil
                      :height 1
                      :underline (face-foreground 'nano-face-faded)
                      :overline nil
                      :box nil)
  (set-face 'mode-line-inactive 'mode-line))

(provide 'nano-theme-nord-dark)
;;; nano-theme-nord-dark ends here

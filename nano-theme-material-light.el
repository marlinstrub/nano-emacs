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

(setq frame-background-mode   'light)

;; Colors from Material design at https://material.io/
(defvar nano-color-foreground (material-color "blue-grey 8"  ))
(defvar nano-color-background "#FFFFFF"                       ) ;; White
(defvar nano-color-highlight  "#FAFAFA"                       ) ;; Very light grey
(defvar nano-color-critical   (material-color "amber 9"      ))
(defvar nano-color-salient    (material-color "indigo 7"     ))
(defvar nano-color-strong     "#000000"                       ) ;; Black
(defvar nano-color-popout     (material-color "deep-orange 2"))
(defvar nano-color-subtle     (material-color "blue-grey 0"  ))
(defvar nano-color-faded      (material-color "blue-grey 2"  ))

(require 'nano-theme)
(provide 'nano-theme-material-light)

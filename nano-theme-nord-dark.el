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

(setq frame-background-mode   'dark)

;; Colors from Nord theme at https://www.nordtheme.com
(defvar nano-color-foreground (nord-color "snow-storm 3" )) ;; nord  6
(defvar nano-color-background (nord-color "polar-night 0")) ;; nord  0
(defvar nano-color-highlight  (nord-color "polar-night 1")) ;; nord  1
(defvar nano-color-critical   (nord-color "aurora 2"     )) ;; nord 11
(defvar nano-color-salient    (nord-color "frost 2"      )) ;; nord  9
(defvar nano-color-strong     (nord-color "snow-storm 3" )) ;; nord  6
(defvar nano-color-popout     (nord-color "aurora 1"     )) ;; nord 12
(defvar nano-color-subtle     (nord-color "polar-night 2")) ;; nord  2
(defvar nano-color-faded      "#616E87"                   ) ;; 

(require 'nano-theme)
(provide 'nano-theme-nord-dark)

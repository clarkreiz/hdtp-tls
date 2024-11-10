;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname square) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

(define (number->square s)
  (square s "solid" "red"))

(define (number->circle s)
  (circle s "solid" "red"))


(number->square 100)
(number->circle 50)

(define (reset s ke)
  100)

(big-bang 500
  [to-draw number->square]
  [on-tick sub1]
  [stop-when zero?]
  [on-key reset])



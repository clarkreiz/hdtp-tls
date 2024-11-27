;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname draw) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)




(define (draw-wedge angle)
  (overlay (wedge 60 (+ 1 angle) "outline" "purple") (rectangle 100 100 "solid" "orange")))

(define (rgb int)
  (cond
    [(< int 1) 1]
    [(> int 255) 255]
    [else int]
    ))

(rgb 12)




(define (draw-poly angle)
  
(overlay
           (regular-polygon (* 0.1 angle) 5 "solid" (make-color  20 20 255))
           (regular-polygon (* 0.2 angle) 5 "solid" (make-color  30 30 255))
           (regular-polygon (* 0.3 angle) 5 "solid" (make-color  40 40 255))
           (regular-polygon (* 0.4 angle) 5 "solid" (make-color  50 50 255))
           (regular-polygon (* 0.5 angle) 5 "solid" (make-color  60 60 255))
            (regular-polygon (* 0.6 angle) 5 "solid" (make-color 70 70 255))
           (regular-polygon (* 0.7 angle) 5 "solid" (make-color 80 80 255))
           (regular-polygon (* 0.8 angle) 5 "solid" (make-color 100 100 255))
           (regular-polygon (* 0.9 angle) 5 "solid" (make-color 120 120 255))
           (rectangle 1000 1000 "solid" "orange"))
)


(animate draw-poly)

;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname distance_to_zero) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define x 12)
(define y 5)

(define (distance-to-zero-point-coord x y)
  (sqrt(+(* x x)(* y y))))

(distance-to-zero-point-coord x y)
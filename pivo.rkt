;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname pivo) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (numbers?? a1 a2)
  (and (number? a1) (number? a2)))

(define (eqan? a1 a2)
  (cond
    [(numbers?? a1 a2) (= a1 a2) ]
    [else (eq? a1 a2)]))

(define (occur a lat)
  (cond
    [(null? lat) 0]
    [else
     (cond
       [(eqan? (car lat) a) (add1 (occur a (cdr lat)))]
       [else (occur a (cdr lat))])]))

(occur "пиво" '("pivo" "пиво" 12 3))
(occur "пиво" '("pivo" "пиво" 12 "пиво" 3))
(occur 12 '("pivo" "пиво" 12 "пиво" 12 3))


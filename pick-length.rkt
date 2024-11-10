#lang racket

(define (length s)
  (cond
    [(null? s) 0]
    [else (add1 (length (cdr s)))]))

;(length '(ветчина и сыр))

(define (pick n lat)
 (cond
   [(zero? (sub1 n)) (car lat)]
   [else (pick (sub1 n) (cdr lat))]))

; (pick 2 '(ветчина cs сыр))
;(pick 0 '(cs сыр)) -> (car '(cs сыр))


 (pick 5 '(ветчина и сыр картошка чеснок лук)) 
;(pick 4 '(и сыр картошка чеснок лук)) -> 4 - 1 != 0
;(pick 3 '(сыр картошка чеснок лук))   -> 3 - 1 != 0
;(pick 2 '(картошка чеснок лук))       -> 2 - 1 != 0
;(pick 1 '(чеснок лук))                -> 1 - 1 = 0, take чеснок


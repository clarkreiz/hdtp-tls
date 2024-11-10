#lang racket

(define (> n m)
  (cond
    [(zero? n) #f]
    [(zero? m) #t]
    [else (> (sub1 n) (sub1 m))]))

;(> 3 3)

;(define (< n m)
 ; (cond
  ;  [(zero? m) #f]
   ; [(zero? n) #t]
    ;[else (< (sub1 n) (sub1 m))]))

;(< 10 10)

(define (= n m)
  (cond
    [(< n m) #f]
    [(> n m) #f]
    [else #t]))

;(= 10 10)

(define (pow n m)
  (cond
    [(zero? m) 1]
    [else
      (* n (pow n (sub1 m)))]))

;(pow 5 3)

(define (/ n m)
  (cond
    [(< n m) 0]
    [else (add1 (/ (- n m) m))]))

(/ 6 2)

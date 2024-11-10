#lang racket

(define (tup+ tup1 tup2)
  (cond
   ;[(and(null? tup1) null? tup2) '() ] это строка избыточна
    [(null? tup1) tup2] ; эти две строки добавлены для того
    [(null? tup2) tup1] ; чтобы обрабатывать таплы разной длины
    [(cons (+ (car tup1) (car tup2))
          (tup+ (cdr tup1) (cdr tup2) ))]))

(tup+ '(1 2 300) '(1 2 3))


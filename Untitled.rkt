#lang racket

(define (+ num1 num2)
  (cond
    [(zero? num2) num1]
    [else (add1 (+ num1 (sub1 num2)))]))

;(+ 5 10)

(define (minus- num1 num2)
  (cond
    [(zero? num2) num1]
    [else (sub1 (minus- num1 (sub1 num2)))]))
; мне меньше нравится эта функция чем последний вариант, но тем не менее, она работает
; ее суть такая же как в функции + но вместо add1 используется sub1. 
(minus- 10 5)





(define (min- num1 num2)
  (cond
    [(zero? num2) num1]
    [else (min- (sub1 num1) (sub1 num2))]))
; это чертовски логично, отнимаем единицу для num1 и num2, когда num2 станет 0, num1 будет нашим ответом

(min- 3 2)


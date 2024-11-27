;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname eqlist?) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (eqan? a1 a2)
  (cond
    [(numbers?? a1 a2) (= a1 a2) ]
    [else (eq? a1 a2)]))

(define (atom? a)
  (or (number? a) (string? a)))


(define (numbers?? a1 a2)
  (and (number? a1) (number? a2)))

(define (atoms? a b)
  (and (atom? a) (atom? b)))

(define (nulls? a b)
  (and (null? a) (null? b)))


; Нужно написать функцию равенства двух списков
; Для этого необходимо проходится сразу по двум списка
; Для начала определим 'концы' рекурсии, а конкретно равны ли s1 и s2
;
;
;
;
(define (eqlist-old-naive? s1 s2)
  (cond
    [(atoms? s1 s2) (eqan? s1 s2)]
    [(nulls? s1 s2) #t]
    [else
     (cond
       [(and (eqlist-old-naive? (car s1) (car s2))
             (eqlist-old-naive? (cdr s1) (cdr s2))) #t]
       [else #f]
       )]))

; Улучшенная версия где мы опустили последний cond
(define (eqlist? s1 s2)
  (cond
    [(atoms? s1 s2) (eqan? s1 s2)]
    [(nulls? s1 s2) #t]
    [else
     (and (eqlist? (car s1) (car s2))
          (eqlist? (cdr s1) (cdr s2)))]))

(eqlist? '((("томатный" "соус")) ("фасолевый" "соус") ("и" (("сметанный")) "соус")) '((("томатный" "соус")) ("фасолевый" "соус") ("и" (("сметанный")) "соус")))

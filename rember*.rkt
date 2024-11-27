;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname rember*) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (eqan? a1 a2)
  (cond
    [(numbers?? a1 a2) (= a1 a2) ]
    [else (eq? a1 a2)]))

(define (atom? a)
  (or (number? a) (string? a)))


(define (numbers?? a1 a2)
  (and (number? a1) (number? a2)))


(define (rember* a l) 
  (cond
    [(null? l) '()]     ; Базовый случай когда обошли весь вложенный список
    [(atom? (car l))    ; Первый элемент списка это атом?
      (cond             ; Если да, то 
       [(eqan? a (car l)) (rember* a (cdr l))]       ; Равен ли этот элемент искомому?
                                                     ; Если да, вызови рекурсивно без этого элемента
       [else (cons (car l) (rember* a (cdr l)))])]   ; Иначе добавь этот элемент в рекурсивный вызов
                        ; Иначе добавь рекурсивный вызов головы вложенного списка
    [else (cons (rember* a (car l)) (rember* a (cdr l)))]))
                        ; В рекурсивной вызов хвоста
(rember* "соус" '((("томатный" "соус")) ("фасолевый" "соус") ("и" (("сметанный")) "соус")))

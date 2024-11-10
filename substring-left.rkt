#lang racket


(define str "helloworld")
(define l_pointer 4)
(define r_pointer 5)

;(define (create-num-list i (current 0))
 ; (if (> current i)
  ;    '()
   ;   (cons current (create-num-list i (add1 current)))))

;(create-num-list 10)

;(car(create-num-list 10))

; Изначальная идея:
; 1. Преобразовать i в list до i
; 2. Рекурсивно пройтись по этому листу используя car и cdr
; 3. Вызывать передаваемую в тело функцию с аргументом i

; Конечная идея:
; 1. На основе существующего метода `string-ref` написать substring-left

(define (string-ith str current)
  (string (string-ref str current)))


(define (substring-left str i (current 0))   ; Определить функцию substring-left с параметрами str i и дефолтом current = 0
  (if (> current i)                          ; Если current > i вернуть пустую строку
      ""                                      
      (string-append                         ; Конкатенация строк где слева символ с позиции current, а справа рекурсивный вызов
                                             ; функции с current + 1 
       (string-ith str current) (substring-left str i (add1 current)))
      )
  )



(string-append (substring-left str l_pointer)  "_" (substring str r_pointer))

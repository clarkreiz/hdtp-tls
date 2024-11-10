#lang racket

(define str "helloworld")
(define l_pointer 4)
(define r_pointer 5)


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




(define (remove-ith i str)
  (string-append (substring-left str (- i 1)) (substring str (+ i 1))))

(remove-ith 1 str)



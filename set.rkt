;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname set) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (set? lat)
  (cond
    [(null? lat) #t]
    [(member? (car lat) (cdr lat)) #f ]
    [else (set? (cdr lat))]
    ))

(define (makeset lat)
  (cond
    [(null? lat) '()]
    [(member? (car lat) (cdr lat)) (makeset (cdr lat))  ]
    [else (cons (car lat) (makeset (cdr lat)))]
    ))

;(makeset '(1 222 222 "a" 3 3 "a"))
; Проверка является ли s1 подсписком s2
; Для этого нужно задать вопрос каждому элементу s1 содержится ли он в s2
(define (subset? s1 s2)
  (cond
    [(null? s1) #t]
    [else (and(member? (car s1) s2) (subset? (cdr s1) s2))]))

;(subset? '(1 222 222) '(1 222 "a" 1 3 3 "a"))

(define (eqset? s1 s2)
  (cond
    [(subset? s1 s2) (subset? s2 s1)]
    [else #f]))

; flat vers
(define (eqset-flat? s1 s2)
  (and (subset? s1 s2) (subset? s2 s1)))

(eqset-flat? '(1 222 222) '(1 222 "a" 1 3 3 "a"))


(eqset-flat? '(1 222 222) '(1 222 222))



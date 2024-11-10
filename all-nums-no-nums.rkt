;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname all-nums-no-nums) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (no-nums lat)
  (cond
    [(null? lat) '()]
    [(number? (car lat)) (no-nums (cdr lat))]
    [else (cons (car lat) (no-nums (cdr lat)))]))

(no-nums '(1 3 world 4 hello 2))


(define (all-nums lat)
  (cond
    [(null? lat) '()]
    [(number? (car lat)) (cons (car lat) (all-nums (cdr lat)))]
    [else (all-nums (cdr lat))]))

(all-nums '(1 3 world 4 hello 2))

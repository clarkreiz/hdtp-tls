;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname eqan) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (eqan? a1 a2)
  (cond
    [(numbers?? a1 a2) (= a1 a2) ]
    [else (eq? a1 a2)]))


(define (numbers?? a1 a2)
  (and (number? a1) (number? a2)))

(eqan? 1 2) ;f
(eqan? 1 1) ;t
(eqan? "asd" "asd") ;t
(eqan? "asd" "as")  ;f

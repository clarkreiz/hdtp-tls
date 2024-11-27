;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname aexp) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (numbered? aexp)
  (cond
    [(atom? aexp) (number? aexp)]
    [else
     (and (numbered? (car aexp)) (numbered? (cdr aexp)))]))


(define (atom? a)
  (or (number? a) (string? a)))

(numbered? (* 2 (+ 2 2)))


(define (value aexp)
  (cond
    [(numbered? aexp) aexp]
    [else "not a value"]))


(value (* 2 (+ 2 2)))
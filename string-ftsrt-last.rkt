;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname string-ftsrt-last) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (string-first str)
  (car(explode str )))

(define (string-last str)
  (car (reverse (explode str))))


(string-first "asda asd")

(string-last "asda asd")

;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname traffic-light-next) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

;(check-expect (traffic-light-next "red") "green")
;(check-expect (traffic-light-next "green") "yellow")
;(check-expect (traffic-light-next "yellow") "red")

;(define (traffic-light-next s)
;  (cond
;    [(string=? "red" s) "green"]
;    [(string=? "green" s) "yellow"]
;    [(string=? "yellow" s) "red"]))

(define (traffic-light-next-image n)
  (cond
    [(< (modulo n 84) 28) (circle 100 "solid" "green")]
    [(< (modulo n 84) 56) (circle 100 "solid" "yellow")]
    [(< (modulo n 84) 84) (circle 100 "solid" "red")]))


;(traffic-light-next-image  28)
;(traffic-light-next-image  56)
;(traffic-light-next-image  84)

(animate traffic-light-next-image)

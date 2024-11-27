;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname game-with-ball) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

; Начальное состояние мира (x-координата)
(define WIDTH 500)
(define HEIGHT 100)
(define INITIAL-X (/ WIDTH 2)) ; начальная позиция точки

; Функция обработки нажатий клавиш
(define (change x a-key)
  (cond
    [(key=? a-key "left")  (max 0 (- x 10))] ; движение влево, не выходя за границу
    [(key=? a-key "right") (min WIDTH (+ x 10))] ; движение вправо, не выходя за границу
    [else x])) ; если другая клавиша, состояние не меняется

; Функция отображения мира
(define (draw x)
  (place-image (circle 10 "solid" "red") x (/ HEIGHT 2) (empty-scene WIDTH HEIGHT)))

; Запуск big-bang
(big-bang INITIAL-X
          (on-key change)
          (to-draw draw))
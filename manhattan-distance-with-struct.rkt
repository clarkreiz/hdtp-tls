;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname manhattan-distance-with-struct) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (distance-to-0 ap)
  (sqrt
   (+ (sqr (posn-x ap))
      (sqr (posn-y ap)))))

(distance-to-0 (make-posn 3 4))

(define (manhattan-distance ap)
  (+ (abs (posn-x ap))
     (abs (posn-y ap))))


(manhattan-distance (make-posn 3 4))

(posn? (make-posn 3 4))
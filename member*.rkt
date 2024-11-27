;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname member*) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (eqan? a1 a2)
  (cond
    [(numbers?? a1 a2) (= a1 a2) ]
    [else (eq? a1 a2)]))

(define (atom? a)
  (or (number? a) (string? a)))


(define (numbers?? a1 a2)
  (and (number? a1) (number? a2)))


(define (insertR* new old l) 
  (cond
    [(null? l) '()]    
    [(atom? (car l))   
      (cond            
       [(eqan? old (car l)) (cons old (cons new (insertR* new old (cdr l))))]
       
       [else (cons (car l) (insertR* new old (cdr l)))])]   
    
    [else (cons (insertR* new old (car l)) (insertR* new old (cdr l)))]))


(insertR* "блин" "соус" '((("томатный" "соус")) ("фасолевый" "соус") ("и" (("сметанный")) "соус")))

(define (subst* new old l) 
  (cond
    [(null? l) '()]    
    [(atom? (car l))   
      (cond            
       [(eqan? old (car l)) (cons new (subst* new old (cdr l)))]
       
       [else (cons (car l) (subst* new old (cdr l)))])]   
    
    [else (cons (subst* new old (car l)) (subst* new old (cdr l)))]))


(subst* "блин" "соус" '((("томатный" "соус")) ("фасолевый" "соус") ("и" (("сметанный")) "соус")))


(define (insertL* new old l) 
  (cond
    [(null? l) '()]    
    [(atom? (car l))   
      (cond            
       [(eqan? old (car l)) (cons new (cons old (insertL* new old (cdr l))))]
       
       [else (cons (car l) (insertL* new old (cdr l)))])]   
    
    [else (cons (insertL* new old (car l)) (insertL* new old (cdr l)))]))


(insertL* "блин" "соус" '((("томатный" "соус")) ("фасолевый" "соус") ("и" (("сметанный")) "соус")))


(define (member* a l)
  (cond
    [(null? l) #f]
    [(atom? (car l))
     (or (eqan? (car l) a) (member* a (cdr l)))]
    [else
     (or (member* a (car l)) (member* a (cdr l)))]))


(member* 1 '((("томатный" "соус")) ("фасолевый" 1 "соус") ("и" (("сметанный")) "соус")))


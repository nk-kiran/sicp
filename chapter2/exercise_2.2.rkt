#lang scheme

(define (make-segment x y)(cons x y))

(define (make-point x y)(cons x y))

(define (x-point x) (car x))

(define (y-point x) (cdr x))

(define (start-segment s)(car s))
(define (end-segment s)(cdr s))

(define (mid-point s)( cons (/ (+(x-point(start-segment s)) (x-point (end-segment s))) 2)
                            (/ (+(y-point(start-segment s)) (y-point (end-segment s))) 2)
                       
                       ))
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define a (make-point 2 6))
(define b (make-point 4 8))
(define l(make-segment a b))

(define m (mid-point l))
(print-point m)









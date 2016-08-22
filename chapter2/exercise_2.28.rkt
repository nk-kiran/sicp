#lang scheme

(define (fringe x)
  (cond ((null? x) )
        ((not (pair? x)) (display x) (display " "))
        (else (fringe (car x)) (fringe (cdr x)))
        )
  )
(define x (list (list 1 2) (list 3 4)))

(count-leaves x)



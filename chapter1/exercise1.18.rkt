#lang scheme


(define (double x)( * 2 x))
(define (half x)( / x 2))

(define (fastm p a b)( cond( (= b 0) p)
                         ((even? b) (fastm p (double a) (half b)))
                         (else ( fastm ( + a p ) a (- b 1)))
                    ))

(fastm 0 3 8)
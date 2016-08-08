#lang scheme


(define (double x)( * 2 x))
(define (half x)( / x 2))

(define (fastm a b)( cond( (= b 0) 0)
                         ((even? b) (double (fastm a (half b))))
                         (else (+ a ( fastm a (- b 1))))
                    ))

(fastm 3 8)



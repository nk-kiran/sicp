#lang scheme
( define (square x)(* x x))

(define (even? n)
  (= (remainder n 2) 0))

(define(fx-iter a b n)( cond ((= n 0) a)
                             ((even? n) (fx-iter (* a b) b (/ n 2)))
                             ( else( fx-iter (* a b) b (- n 1)) )
                       ))
                 

(fx-iter 1 2 4 )


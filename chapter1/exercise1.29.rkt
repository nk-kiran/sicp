#lang scheme

(define (cube x)(* x x x))

(define (even? x)( = (remainder x 2) 0))

(define (val k n)( cond((= k 0) 1)
                       ((= k n) 1)
                       ((even? k) 2)
                       (else 4)
                       )
  )


(define(iter func a b n k h)(
if(> k n) 0
(+ (* (val k n) (func (+ a (* k h))) ) ( iter func a b n (+ k 1) h) )
 ))

(define (integ f a b n)( * (/ (/ (- b a) n) 3) (iter f a b n 0 (/ (- b a) n) ))
                         )
  


(integ cube 0 1 100.0)





#lang scheme

(define (square x)(* x x))
(define (add2 x)(+ x 2))
(define (add x)(+ x 1))
(define (val x ) x)
(define (mult x)(* x (+ x 2)))

(define (product term a next b)( if(> a b)
                                   1
                                   (* (term a) (product term (next a) next b))
                                   )
  )


;(product square 1 add 2)

(define (factorial x) ( product val 1 add x)) ; factorial in terms of product

(factorial 4)

( define (pi-approx n)( / (product mult 2.0 add2 (+ 1 (* n 2)) )( product square 3 add2 (+ 1 (* n 2))) ) ); approximation for pi/4

(pi-approx 60)




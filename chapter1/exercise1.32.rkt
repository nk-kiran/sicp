#lang scheme
(define (val x) x)
(define (add x) (+ x 1))
(define (accumulate combiner null-value term a next b)(if (> a b)
                                                          null-value
                                                          (combiner (term a) (accumulate combiner null-value term  (next a) next b))
                                                          )
  )

(accumulate + 0 val 1 add 3)

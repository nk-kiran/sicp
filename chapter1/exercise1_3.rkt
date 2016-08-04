#lang scheme
(define (square x)(* x x))
(define (sum_square a b)(+ (square a)(square b)))
(define (larger_two a b c) ( if(> a b)
                               ( if (> b c) (sum_square a b) (sum_square a c))
                               ( if (> a c) (sum_square b a) (sum_square b c))
                               )
  )

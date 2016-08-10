#lang scheme

(define (inc x)(+ 1 x))

(define (double g)(lambda(x)(g (g x))))

((double inc) 2)

(((double (double double)) inc) 5)

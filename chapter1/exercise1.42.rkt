#lang scheme



(define (compose f g)(lambda(x)(f (g x)) ))

((compose (lambda(x)(* x x)) (lambda(y)(+ 1 y)) ) 6) 
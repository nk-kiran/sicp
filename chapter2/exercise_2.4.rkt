#lang scheme


(define (cons x y)
  (lambda (m) (m x y)))
(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q))) ;corresponding definition of cdr

(define a(cons 1 2))

(car a)

;thus (car (cons x y)) yeilds x


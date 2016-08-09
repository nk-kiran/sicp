#lang scheme
(define (val x) x)
(define (add x) (+ x 1))
(define (even? x)(= (remainder x 2) 0 ))
(define(square x)(* x x))


(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))


(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
(define (relatively-prime? a b)(= (gcd a b) 0) )


(define (filter-accumulate filter combiner null-value term a next b)(if (> a b)
                                                          null-value
                                                          (if (filter a)
                                                          (combiner (term a) (filter-accumulate filter combiner null-value term  (next a) next b))
                                                          (filter-accumulate filter combiner null-value term  (next a) next b))
                                                          )
  )

(filter-accumulate prime? + 0 square 1 add 8)

(define (product-primes n)
(define (relatively-prime? x)(= (gcd x n) 1) )
(filter-accumulate relatively-prime? * 1 val 1 add (- n 1))
  )
                          

(product-primes 10)




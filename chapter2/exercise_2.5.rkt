#lang scheme

(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b
                (- counter 1)
                (* b product))))

(define (cons a b)( * (expt 2 a)(expt 3 b) ) )

(define (divide x n)( define (divide-iter count result n)( if(= 0 (remainder result n))
                                                         (divide-iter (+ 1 count ) (/ result n) n)
                                                         count )
                                        )(divide-iter 0 x n))
(define (car z)(expt 2 (divide z 2)))
(define (cdr z)(expt 3 (divide z 3)))

(define a(cons 2 2))
a
(car a)



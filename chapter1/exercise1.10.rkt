#lang scheme
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))
   )
)
(define (f n) (A 0 n))
;the above procedure returns n times two

(define (g n) (A 1 n))
;the above procedure returns 2^n

(define (h n) (A 2 n))
;if n=1 , it returns 2, else 2^(2^)(2^.... n times 

(A 1 10) ; 1024
(A 2 4)  ;65536
(A 3 3)  ;65536



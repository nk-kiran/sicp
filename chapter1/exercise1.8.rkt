
#lang scheme

(define (cube x)(* x (* x x)))


(define (abs x)(if(>= x 0) x (- x) ))

(define (good_enough guess x)(< (abs(- guess (improve guess x))) (* guess 0.001)))



(define (improve guess x)
 (/ (+ (/ x ( * guess guess)) (* 2 guess)) 3 )
  )



(define (cube-iter guess x)
  (if (good_enough guess x)
      guess
      (cube-iter (improve guess x) x)
      )
  )
  

(define (cubert x)
  (cube-iter 1.0 x)
)

(cubert 27)


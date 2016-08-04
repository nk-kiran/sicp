
#lang scheme

(define (square x)(* x x))


(define (abs x)(if(>= x 0) x (- x) ))

(define (good_enough guess x)(< (abs(- guess (improve guess x))) (* guess 0.001)))



(define (improve guess x)
  ( / ( + guess (/ x guess)) 2)
  )



(define (sqrt-iter guess x)
  (if (good_enough guess x)
      guess
      (sqrt-iter (improve guess x) x)
      )
  )
  

(define (sqrt x)
  (sqrt-iter 1.0 x)
)

(sqrt 0.0001)

;Explanation
;if we use the the difference between old guess and new guess times 1/1000 as the tolerance for the alogorithm to stop , the accuracy of the result increases.

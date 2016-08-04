#lang scheme

(define (square x)(* x x))


(define (abs x)(if(>= x 0) x (- x) ))

(define (good_enough guess x)(< (abs(- x (square guess))) .001))



(define (improve guess x)
  ( / ( + guess (/ x guess)) 2)
  )

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good_enough guess x) guess (sqrt-iter (improve guess x) x)
      )
  )
  

(define (sqrt x)
  (sqrt-iter 1.0 x)
)

(sqrt 4)

;Explanation
;if we use the new-if procedure the square does not get computed. This is because the interpreter uses
;applicative-order evaluation i.e evaluate the arguments and then apply. Since we are passing the
;sqr-itr procedure as an argument for new-if inside the sqr-itr procedure itself , it ends up goin into a infinite loop 

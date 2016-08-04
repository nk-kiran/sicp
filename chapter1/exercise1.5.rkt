#lang scheme

(define (p) (p))
(define (test x y)
(if (= x 0) 0
y))


(test 0 (p))

;if the interpreter uses applicative-order-evaluation, the argument (p) is evaluated first and according to procedure (p) it goes into infinte loop
;because (p) is being called recurrsively. If normal order evaluation is used the arguments are read without evaluating first, hence it returns 0 when the condition x=0 is satisfied.

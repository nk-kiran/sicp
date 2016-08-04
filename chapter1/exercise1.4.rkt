#lang scheme
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


;explanation
;if b is greater than 0, the procedure a-plus-abs-b evaluates + as the operator else it uses - as the operator. 
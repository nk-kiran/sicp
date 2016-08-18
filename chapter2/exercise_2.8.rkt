#lang scheme

(define (sub-interval x y)
  (make-interval (abs(- (lower-bound x) (lower-bound y)))
                 (abs(- (upper-bound x) (upper-bound y)))))

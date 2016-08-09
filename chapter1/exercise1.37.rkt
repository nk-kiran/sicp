#lang scheme

(define (cont-frac n d k)(if(= k 0)
                            0 
                            (/ (n k) (+ (d k) (cont-frac n d (- k 1))))
                            )
  )
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
11)
;k=11 for getting approximation accurate to 4 decimal places
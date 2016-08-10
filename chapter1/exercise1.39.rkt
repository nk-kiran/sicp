#lang scheme



(define (cont-frac n d k)(if(= k 0)
                            0 
                            (/ ((lambda(x)(* x x)) n) (- d (cont-frac n (+ 2 d) (- k 1))))
                            )
  )

(define (tan-cf x k)(/ (cont-frac x 1 k) x)
  )

(tan-cf 0.7853 1000)
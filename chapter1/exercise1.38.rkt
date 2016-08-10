#lang scheme

(define (cont-frac n d k1 k2 )(if(> k1 k2)
                            0 
                            (/ n (+ (d k1) (cont-frac n d (+ k1 1) k2)))
                            )
  )

(+ 2 (cont-frac 1.0 (lambda(x)(cond((= x 1) 1)
                            ((= (remainder (+ 1 x) 3) 0) (* 2 (/ (+ x 1) 3)))
                            (else 1)
                            )
               ) 1 10 ))

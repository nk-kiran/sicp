#lang scheme

(define(repeated fun n)(lambda(x)(if(= n 0)
                                    x
                                    (fun (( repeated fun (- n 1)) x))
                                    )
                         )
  )
(define dx 0.00001)
(define (smooth f)(lambda(x)(/ (+ (f (- x dx)) (f x) (f (+ x dx)) ) 3)
                    )
  )

( (repeated smooth n-times) function); repeated smoothing using repeated function
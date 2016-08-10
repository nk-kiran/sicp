#lang scheme

(define (compose f g)(lambda(x)(f (g x)) ))
(define (square x)(* x x))




(define(repeated fun n)(lambda(x)(if(= n 0)
                                    x
                                    (fun (( repeated fun (- n 1)) x))
                                    )
                         )
  )

((repeated square 3 ) 5)

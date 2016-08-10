#lang scheme
(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b
                (- counter 1)
                (* b product))))
(define(repeated fun n)(lambda(x)(if(= n 0)
                                    x
                                    (fun (( repeated fun (- n 1)) x))
                                    )
                         )
  )

(define (average-damp f)
  (lambda (x) (/ (+ x (f x))2)))

(define (nth-root x n)(
   fixed-point ((repeated average-damp 2) (lambda (y) (/ x (expt y (- n 1)))) ) 1.0 
                       ))

(nth-root 1000 3)
;when average-damp is 2 , n can go till 7
;when average damp is 3 , n can go till 15
; so the pattern is n= 2^(average-damp+1)-1





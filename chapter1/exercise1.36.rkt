#lang scheme

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (newline)
    (display guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(fixed-point (lambda(x) (/ (+ x (/ (log 1000) (log x))) 2)) 2) ; 4.555553


;when we use average damping the number of approximations it generates reduces from 37 to only 12 when we use 2 as our intial guess
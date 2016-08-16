#lang scheme

(define ( make-rat n d)( if(< d 0)
                           (cons (* -1 n) (* -1 d))
                           (cons n d)
                           ))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define y (make-rat 1 -2) )
(print-rat y)

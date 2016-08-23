#lang scheme

(define (fold-left op initial sequence)
   (define (iter result rest)
     (if (null? rest)
         result
         (iter (op result (car rest))
               (cdr rest))))
   (iter initial sequence))

(define (fold-right op initial sequence)
   (define (iter result rest)
     (if (null? rest)
         result
         (iter (op (car rest) result)
               (cdr rest))))
   (iter initial sequence))

(fold-right / 1 (list 1 2 3))
;1 1/2

(fold-left / 1 (list 1 2 3))
;1/6
(fold-right list null (list 1 2 3))
;(3 (2 (1 ())))
(fold-left list null (list 1 2 3))
;(3 (2 (1 ())))

; op should satisfy commutative property

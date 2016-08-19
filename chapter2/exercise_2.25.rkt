#lang scheme

(define x (list 1 3 (list 5 7) 9))
(define y (list 1 (list 2 (list 3(list 4 (list 5 (list 6 7)))))))
(define z (cons 1 (cons 2 (cons 3(cons 4 (cons 5 (cons 6 7)))))))
(define a (list (list 7)))

(cdr (car (cdr (cdr x))))
(cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr y)))))))))))
(car (car a))
;(cdr (cdr (cdr (cdr z))))
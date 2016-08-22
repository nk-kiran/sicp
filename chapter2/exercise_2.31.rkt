#lang scheme

(define (square x)(* x x))

(define (tree-map tree factor)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (* tree factor))
        (else (cons (scale-tree (car tree) factor)
                    (scale-tree (cdr tree) factor)))))



(define (square-tree tree) (tree-map square tree))
#lang scheme

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

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



(define (reverse1 sequence)
(fold-right (lambda (x y) (cons x y)) null sequence))

(define (reverse2 sequence)
(fold-left (lambda (x y) (cons y x)) null sequence))

(reverse1 (list 1 2 3 4))
(reverse2 (list 1 2 3 4))



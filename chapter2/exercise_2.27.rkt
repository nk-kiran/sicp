#lang scheme

(define x (list (list 1 2) (list 3 4)))



(define (deep-reverse a)( if(null? a)
                       a
                       (append (reverse (cdr a)) (if (pair? (car a)) (list (reverse (car a))) (list (car a))) )


  ))



(deep-reverse x)





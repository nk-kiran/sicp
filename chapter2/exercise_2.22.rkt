#lang scheme

(define (square x)(* x x))

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things) (cons (square (car things)) answer))
        )
    )
(iter items null)
 )

(square-list (list 1 2 3 4))
;(16 9 4 1)

;it produces the list in reverse format because as the iteration progresses
; (cons 16 null)
; (cons 9 (cons 16 null))
; (cons 4 (cons 9 (cons 16 null))) and so on producing (16 9 4 1)


(define (square-list2 items)
  (define (iter2 things answer)
    (if (null? things)
        answer
        (iter2 (cdr things) (cons answer (square (car things))))

        )
    )
  (iter2 items null))

  
(square-list2 (list 1 2 3 4))
;(cons null 16)
;(cons (null 16) 9) and so on to produce ((((() . 1) . 4) . 9) . 16)
;we are combining the list formed in previous and wrapping it with new element here 

#lang scheme

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))


(define (reverse a)( if(null? a)
                       a
                       (append (reverse (cdr a)) (list (car a)))


  ))






(reverse (list 1 2 3 4))
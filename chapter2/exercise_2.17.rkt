#lang scheme

( define numbers (list 1 2 3 4))



(define (last-pair a)(
                      if (null? (cdr a))
                          (car a)
                          (last-pair (cdr a)))
  )

(last-pair numbers) 

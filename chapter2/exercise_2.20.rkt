#lang scheme


(define (is_even? x) (= 0 (remainder x 2)))

(define (even x)( if(null? x)
                  x 
                 (if (is_even? (car x))
                    (cons (car x) (even (cdr x)))
                    (even (cdr x)))
                   )
  )
(define (odd x)( if(null? x)
                  x 
                 (if (is_even? (car x))
                     (odd (cdr x))
                    (cons (car x) (odd (cdr x)))
                    )
                   )
  )


(define (same-parity x . z)(if (is_even? x)
                               (cons x (even z))
                               (cons x (odd z))
                               )
                              
  )
(same-parity 1 2 3 4 5 6)
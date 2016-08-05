#lang scheme

;recursive process
(define (func3 n)(
                  if (< n 3)
                      n
                      (+ (func3 (- n 1)) (* 2 (func3 (- n 2))) (* 3 (func3 (- n 3))))
                      
                  )
)
(func3 5)


;iterative process
(define (f n)(
              if (< n 3)
                 n
                 (fi 2 1 0 n)
              ))
(define (fi a b c count)(
                 if(< count 3)
                     a
                     ( fi (+ a (* 2 b) (* 3 c)) a b (- count 1))

                         ) )
(f 5)

#lang scheme

(define (pas r c)( cond( (= r c) 1)
                       ( (= c 1) 1)
                       ( else (+ ( pas (- r 1) c) ( pas (- r 1) (- c 1))))
                  )
  )
;(pas row column)
(pas 4 3)
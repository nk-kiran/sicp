#lang scheme

(define (f g)(g 2))
 (f f)
; we get an error when we ask the interpreter to compute (f,f)
;(f,f)
;(f,2)
;(2,2) when it reaches here a procedure is expected instead of 2, hence the error
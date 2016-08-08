#lang scheme

(define (divides? a b)
  (= (remainder b a) 0))

(define (square x)(* x x))


(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (timed-prime-test n )
  (newline)
  ;(display n)
  
  (start-prime-test n (current-inexact-milliseconds)))


(define (start-prime-test n start-time)
  ( if (fast-prime? n 10)
      (report-prime (- (current-inexact-milliseconds) start-time) n)
      (display "" )
      )
      
      )

(define (report-prime elapsed-time n)
  (display n)
  (display " is prime ")
(display elapsed-time)

  )
(timed-prime-test 561); outputs 561 as prime whereas it is not since it is divisible by 3
;fermat test is fooled by charmichael numbers

 
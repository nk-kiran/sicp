#lang scheme

(define (divides? a b)
  (= (remainder b a) 0))

(define (square x)(* x x))

(define (smallest-divisor n)
  (find-divisor n 2))
(define (next x) (if (= x 2) 3 (+ x 2)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  
  (start-prime-test n (current-inexact-milliseconds)))


(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (current-inexact-milliseconds) start-time) n)
      (display "")
      )
      
      )

(define (report-prime elapsed-time n )
  (display n)
  (display " is prime ")
(display elapsed-time)
  )


(timed-prime-test 5)

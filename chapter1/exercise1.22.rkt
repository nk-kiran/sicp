#lang scheme

(define (divides? a b)
  (= (remainder b a) 0))

(define (square x)(* x x))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n m)
  (newline)
  ;(display n)
  
  (start-prime-test n m (current-inexact-milliseconds)))


(define (start-prime-test n m start-time)
  (if (> n m)(display "done")(if (prime? n)
      (report-prime (- (current-inexact-milliseconds) start-time) n m)
      (start-prime-test (+ n 2) m (current-inexact-milliseconds) )
      )
      
      ))

(define (report-prime elapsed-time n m)
  (display n)
  (display " is prime ")
(display elapsed-time)
  (display " ")
  (
if(< n m) (start-prime-test (+ n 2) m (current-inexact-milliseconds) ) ( display "done"))
  )



(define (search_for_primes n m)(if (divides? 2 n) (timed-prime-test (+ n 1) m) (timed-prime-test n m)))

(search_for_primes 1000 1020) ; Searches if consecutive odd numbers are prime in the given range (n m) 


; three smallest prime numbers larger than 1000 are 1009, 1013, 1019     (average time taken 0.001953)
; three smallest prime numbers larger than 10000 are 10007, 10009 , 1037 (average time taken 0.0080566)
; three smallest prime numbers larger than 100000 are 100003, 100019, 100043 (average time taken 0.02685)
; We can see that the time taken to compute in n is a prime increases by a factor 3.162 (root 10) as n goes from 1000 to 10000 , 100000 
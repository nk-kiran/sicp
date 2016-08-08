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

(define (timed-prime-test n m)
  (newline)
  ;(display n)
  
  (start-prime-test n m (current-inexact-milliseconds)))


(define (start-prime-test n m start-time)
  (if (> n m)(display "done")(if (fast-prime? n 10)
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

(search_for_primes 100000 100050) ; Searches if consecutive odd numbers are prime in the given range (n m) 


; three smallest prime numbers larger than 1000 are 1009, 1013, 1019     (average time taken 0.014892)
; three smallest prime numbers larger than 10000 are 10007, 10009 , 1037 (average time taken 0.02099609)
; three smallest prime numbers larger than 100000 are 100003, 100019, 100043 (average time taken 0.0219765) 
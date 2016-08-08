#lang scheme



(define (divides? a b)
  (= (remainder b a) 0))
(define (square x)(* x x))

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

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

(search_for_primes 10000 10020) ; Searches if consecutive odd numbers are prime in the given range (n m)

;when we use fast-exp instead of the expmod used in the previous exercise , the procedure takes time of higher magnitude than the previous procedure.
; the regular expmod apllies remainder procedure before the square procedure, this results in multiplaction of number always less than m with itslef
; whereas the fast-exp multiplies number of higher magnitude with itself and hence results in higher computation time.


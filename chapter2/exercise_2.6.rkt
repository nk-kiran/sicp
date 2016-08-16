#lang scheme


(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

; we can define one by (add-1 zero)
;((lambda (f) (lambda (x) (f ((zero f) x)))))
;(lambda (f) (lambda (x) (f ((lambda(x) x) x))))
;(lambda (f) (lambda (x) (f x))))
(define one (lambda (f) (lambda (x) (f x))))

;similarly

(define two (lambda (f) (lambda (x) (f (f x)))))

;similary we can add two number n amd m by wrapping n in m function calls instead of only one which is what add-1 procedure does
(define (add m n) (lambda (f) (lambda (x) ((m f) ((n f) x)))))





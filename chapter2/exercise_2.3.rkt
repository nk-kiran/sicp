#lang scheme

(define (make-point x y)(cons x y))

(define (x-point x) (car x))

(define (y-point x) (cdr x))

(define (make-rect x y)(cons x y))

(define(rect-width r)(abs(- (x-point(car r)) (x-point(cdr r)))))

(define(rect-height r)(abs(- (y-point(car r)) (y-point(cdr r)))))

(define(rect-area r)(*(rect-width r)(rect-height r)))

(define(rect-per r)(* (+ (rect-width r)(rect-height r)) 2 ))

(define r1(make-point 0 10))
(define r2(make-point 8 0))

(define r(make-rect r1 r2))
(rect-per r)
(rect-area r)




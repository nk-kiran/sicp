#lang scheme

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))


(define (left-branch x)( car x))
(define (right-branch x)(car (cdr x)))

(define (branch-length x)( car x))
(define (branch-structure x)(car (cdr x)))


(define (mobile-weight x)(+ (weight (left-branch x)) (weight (right-branch x))))

(define (weight x)(if(pair?(branch-structure x))
                     (mobile-weight (branch-structure x))
                      (branch-structure x) )
                     )

(define (mobile-length x)(if(pair?(branch-structure x))
                            (+ (branch-length x) (mobile-length (left-branch (branch-structure x))) (mobile-length (right-branch (branch-structure x))) )
                            (branch-length x)
                            ))

(define x (make-mobile (make-branch 3 (make-mobile (make-branch 3 2) (make-branch 2 6))) (make-branch 4 (make-mobile (make-branch 3 2) (make-branch 2 6)))))


(define (mobile-balance x)(= (balance (left-branch x)) (balance (right-branch x))))

(define (balance x)(if(pair?(branch-structure x))
                      (* (branch-length x)(mobile-weight (branch-structure x)))
                      ( * (branch-length x)(branch-structure x))
                      ))

               
(define a (make-mobile (make-branch 2 3) (make-branch 2 3)))
(define b (make-mobile (make-branch 2 3) (make-branch 4 5)))
(define c (make-mobile (make-branch 5 a) (make-branch 3 b)))
(define d (make-mobile (make-branch 10 a) (make-branch 12 5)))

;(mobile-length (left-branch x))

(mobile-balance d)

;if the definitions change to
;
(define (new-make-mobile left right)
(cons left right))
(define (new-make-branch length structure)
(cons length structure))

;then

(define (new-right-branch x)(cdr x))
(define (new-branch-structure x)(cdr x))


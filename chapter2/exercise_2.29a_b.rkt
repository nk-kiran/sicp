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
  


(define x (make-mobile (make-branch 3 (make-mobile (make-branch 3 2) (make-branch 2 6))) (make-branch 2 (make-mobile (make-branch 3 2) (make-branch 2 6)))))

;(left-branch x)
;(branch-structure (left-branch x))
;(left-branch (branch-structure (left-branch x)))
;(pair? (branch-structure (left-branch (branch-structure (left-branch x)))))
;(branch-structure (left-branch (branch-structure (left-branch x))))


 
               
(define a (make-mobile (make-branch 2 3) (make-branch 2 3)))
(define b (make-mobile (make-branch 2 3) (make-branch 4 5)))
(define c (make-mobile (make-branch 5 a) (make-branch 3 b)))
(define d (make-mobile (make-branch 10 a) (make-branch 12 5)))


;(left-branch x)
;(* (branch-length (left-branch x)) (+ (balance (left-branch (branch-structure (left-branch x)))) (balance (right-branch (branch-structure (left-branch x))))))


;(mobile-weight x)
;(mobile-balance x)





(define (make-mobile left right)
  (list left right))

(define (make-branch l s)
  (list l s))

;a
(define (left-branch m)
  (car m))

(define (right-branch m)
  (car (cdr m)))

(define (branch-length b)
  (car b))

(define (branch-structure b)
  (car (cdr b)))

;b
(define (total-weight m)
  (define (branch-weight b)
    (if (number? (branch-structure b))
      (branch-structure b)
      (branch-weight (branch-structure b))))
  (+ (branch-weight (left-branch m))
     (branch-weight (right-branch m))))





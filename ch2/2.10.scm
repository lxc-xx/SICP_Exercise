(load "interval.scm")

(define (div-interval-new x y)
 (if (<= (* (upper-bound y) (lower-bound y)) 0)
  (error "Cannot be divided by zero")
  (div-interval x y)))

(div-interval-new (make-interval 1 2) (make-interval -1 1))

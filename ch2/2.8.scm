(load "interval.scm")

(define (sub-interval x y)
 (add-interval
  x
  (make-interval
   (- 0 (upper-bound y))
   (- 0 (lower-bound y)))))

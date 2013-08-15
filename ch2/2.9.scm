(load "interval.scm")

(define (width i)
 (/ (-
	 (upper-bound i)
	 (lower-bound i))
  2.0))

(newline)
(display (width (mul-interval (make-interval 5 6) (make-interval 7 8))))
(newline)
(display (width (mul-interval (make-interval 500 501) (make-interval 700 701))))


(load "interval.scm")

(define (mul-interval-new x y)
 (define (type1 i)
  (and 
   (<= (lower-bound i) 0) 
   (<= (upper-bound i) 0)))
 (define (type2 i)
  (and
   (<= (lower-bound i) 0) 
   (> (upper-bound i) 0)))
 (define (type3 i)
  (and
   (> (lower-bound i) 0) 
   (> (upper-bound i) 0)))
 (define (neg i)
  (make-interval (- 0 (upper-bound i)) (- 0 (lower-bound i))))
 (define (mul-lower-lower a b)
  (* (lower-bound a) (lower-bound b)))
 (define (mul-lower-upper a b)
  (* (lower-bound a) (upper-bound b)))
 (define (mul-upper-lower a b)
  (* (upper-bound a) (lower-bound b)))
 (define (mul-upper-upper a b)
  (* (upper-bound a) (upper-bound b)))
 (cond
  ((and
	(type1 x)
	(type1 y))
   (make-interval (mul-upper-upper x y) (mul-lower-lower x y)))
  ((and
	(type1 x)
	(type2 y))
   (make-interval (mul-lower-upper x y) (mul-lower-lower x y)))
  ((and
	(type1 x)
	(type3 y))
   (make-interval (mul-lower-upper x y) (mul-upper-lower x y)))
  ((and
	(type2 x)
	(type2 y)


 




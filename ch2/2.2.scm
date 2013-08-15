(define make-segment cons)
(define start-segment car)
(define end-segment cdr)
(define make-point cons)
(define x-point car)
(define y-point cdr)

(define (print-point  p)
 (newline)
 (display "(")
 (display (x-point p))
 (display ",")
 (display (y-point p))
 (display ")"))

(define (midpoint-segment seg)
 (make-point 
  (/ 
   (+ 
	(x-point (start-segment seg)) 
	(x-point (end-segment seg))) 
   2.0)
  (/ (+
	  (y-point (start-segment seg))
	  (y-point (end-segment seg)))
   2.0)))


;(print-point (midpoint-segment (make-segment (make-point 1 1) (make-point 3 9))))

(define (double x)
 (* x 2))

(define (halve x)
 (/ x 2))

(define (fast-mul-iter a b v)
 (if (= b 0) 
  v
  (if (even? b)
   (fast-mul-iter (double a) (halve b) v)
   (fast-mul-iter a (- b 1) (+ v a)))))

(define (fast-mul a b)
 (fast-mul-iter a b 0))

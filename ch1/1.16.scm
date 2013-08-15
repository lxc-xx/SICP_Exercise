(define (fast-expt b n)
 (cond ((= n 0) 1)
  ((even? n) (square (fast-expt b (/ n 2))))
  (else (* b (fast-expt b (- n 1))))))

(define (square n)
 (* n n))

(define (fast-expt-i b n v)
 (if (= n 0) 
  v
  (if (even? n)
   (fast-expt-i (square b) (/ n 2) v)
   (fast-expt-i b (- n 1) (* v b)))))

(define (fast-expt-iter b n)
 (fast-expt-i b n 1))

(define (cons a b)
 (* 
  (expt 2 a)
  (expt 3 b)))
 
(define (iter n acc now)
 (if (= (remainder now n) 0) 
  (iter n (1+ acc) (/ now n)) 
  acc))

(define (car z)
 (iter 2 0 z))

(define (cdr z)
 (iter 3 0 z))

(newline)
(display (cdr (cons 19 9)))

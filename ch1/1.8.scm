(define (cbrt-iter x guess)
 (if (good-enough? x guess)
  guess
  (cbrt-iter x (improve x guess))))

(define (good-enough? x guess)
 (< (abs (- (* guess guess guess) x)) 0.001))

(define (improve x guess)
 (/ (+ (/ x 
		(* guess guess))
	 (* guess 2 ))
  3.0))

(define (cbrt x)
 (cbrt-iter x 1))

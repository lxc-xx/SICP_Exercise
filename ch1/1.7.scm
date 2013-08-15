(define (sqrt-iter x guess)
 (if (good-enough? x guess)
  guess
  (sqrt-iter x 
   (improve x guess))))

(define (good-enough? x guess)
 (< (abs (- guess (improve x guess))) 0.0000000000000000000000000000000000000000000000000000000000000000001))

(define (improve x guess)
 (average guess 
  (/ x guess)))

(define (average x y)
 (* (+ x y) 0.5))

(define (sqrt-me x)
 (sqrt-iter x 1))

(define (iterative-improve good-enough? improve first-guess)
  (define (iter guess)
    (if (good-enough? guess)
      guess
      (iter (improve guess))))
  (iter first-guess))

(define (sqrt x)
  (iterative-improve (lambda (i)
                       (< (abs (- (* i i) x)) 0.000001))
                     (lambda (i)
                       (/ (+ (/ x i) i) 2))
                     1.0))


(newline)
(display (sqrt 2))

(define (fixed-point f first-guess)
  (iterative-improve (lambda (i)
                       (< (abs (- (f i) i)) 0.0000001))
                     f
                     first-guess))

(newline)
(display (fixed-point cos 1.0))

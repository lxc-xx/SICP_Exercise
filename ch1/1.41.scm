(define (double f)
  (lambda (x)
    (f (f x))))

(newline)
(display (((double (double double)) 1+) 5))

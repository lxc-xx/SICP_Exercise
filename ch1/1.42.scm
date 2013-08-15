(define (compose f g)
  (lambda (x)
    (f (g x))))

(newline)
(display ((compose square 1+) 6))

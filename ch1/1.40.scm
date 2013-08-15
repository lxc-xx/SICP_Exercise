(load "newton.scm")
(define (cubic a b c)
  (lambda (x)
    (+ (* x x x)
       (* x x a)
       (* x b)
       c)))

(display (newtons-method (cubic 1 1 1) 1))

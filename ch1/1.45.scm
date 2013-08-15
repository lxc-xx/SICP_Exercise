(load "repeated.scm")
(load "fixed-point.scm")

(define (root2 x)
  (fixed-point (average-damp (lambda (y) (/ x y))) 1.0))

(newline)
(display (root2 2))

(define (root3 x)
  (fixed-point (average-damp (lambda (y) (/ x (* y y)))) 1.0))

(newline)
(display (root3 7))

(define (root4 x)
  (fixed-point ((repeated average-damp 2) (lambda (y) (/ x (* y y y)))) 1.0))

(newline)
(display (root4 16))

(define (root5 x)
  (fixed-point ((repeated average-damp 2) (lambda (y) (/ x (* y y y y)))) 1.0))

(newline)
(display (root5 32))

(define (root6 x)
  (fixed-point ((repeated average-damp 2) (lambda (y) (/ x (* y y y y y)))) 1.0))

(newline)
(display (root6 64))


(define (nth-roots x n)
  (define nth-damp (floor (/ (log n) (log 2))))
  (fixed-point ((repeated average-damp nth-damp) (lambda (y) (/ x (expt y (- n 1))))) 1.0))

(define N 200)
(newline)
(display (nth-roots (expt 2 N) N))

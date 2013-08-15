(load "fixed-point.scm")

(define dx 0.000001)

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (sqrt x) 
           (newtons-method (lambda (y) (- (square y) x)) 
                           1.0))

;(newline)
;(display (sqrt 2))

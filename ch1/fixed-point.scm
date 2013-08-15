(define tolerance 0.000001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
        next
        (try next))))
  (try first-guess))

;(newline)
;(display (fixed-point cos 1.0))

;(newline)
;(display (fixed-point (lambda (y) (+ (sin y) (cos y)))
;                      1.0))

(define (sqrt x)
  (define (average a b)
    (* 0.5 (+ a b)))
  (fixed-point (lambda (y) (average y (/ x y)))
               1.0))

;(newline)
;(display (sqrt 2))

(define (average-damp f)
  (lambda (x)
    (/ (+ x (f x))
       2)))


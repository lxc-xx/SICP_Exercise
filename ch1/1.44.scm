(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f n)
  (if (<= n 1)
    f
    (compose f 
             (repeated f
                       (- n 1)))))

(define dx 0.000001)

(define (smooth f)
  (define (average a b c)
    (/ (+ a b c) 3))
  (lambda (x)
    (average (f (- x dx))
             (f x)
             (f (+ x dx)))))

(define (smooth f n)
  (repeated (smooth f) n))


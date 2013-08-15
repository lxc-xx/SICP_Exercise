(load "prime.scm")

(define (filtered-accumulate combiner null-value term a next b con)
  (define (iter acc now)
    (if (> now b)
      acc
      (iter (combiner (if (con now)
                        (term now)
                        null-value)
                      acc)
            (next now))))
  (iter null-value a))


(define (sum-square-prime a b)
  (filtered-accumulate +
                       0 
                       (lambda (x)
                             (* x x))
                       a
                       1+
                       b
                       prime?))
;2 3 5 => 4+9+25=38
;(display (sum-square-prime 1 5))

(define (gcd a b)
  (if (divides? b a)
    b
    (gcd b (remainder a b))))

(define (sum-reprime-under n)
  (define (test x)
    (= (gcd x n) 1))
  (define (identity x)
    x)
  (filtered-accumulate +
                       0
                       identity
                       1
                       1+
                       n
                       test))

;1 3 7 9 => 20
(display (sum-reprime-under 10))




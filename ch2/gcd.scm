(define (divides a b)
  (= (remainder b a) 0))

(define (gcd a b)
  (if (divides b a)
    b
    (gcd a (remainder a b))))

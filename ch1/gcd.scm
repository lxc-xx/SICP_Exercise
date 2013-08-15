(define (gcd-i a b)
 (if (= a b)
  a
  (gcd-i b (remainder a b))))

(define (gcd a b)
 (if (> b a)
  (gcd-i b a)
  (gcd-i a b)))



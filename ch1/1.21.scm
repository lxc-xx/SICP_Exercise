(define (devides a b)
  (= (remainder b a)
     0))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((devides test-divisor n) test-divisor)
        (else (find-divisor n
                             (+ test-divisor
                                1)))))

(define (smallest-divisor n)
  (find-divisor n 2))

(newline)
(display (smallest-divisor 199))
(newline)
(display (smallest-divisor 1999))
(newline)
(display (smallest-divisor 19999))


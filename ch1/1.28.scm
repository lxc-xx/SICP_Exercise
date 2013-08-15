;Computes exponetial of a number modulo another number
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (let* ((sub (expmod base (/ exp 2) m))
                (rem (remainder (square sub) m)))
                (if (and (= rem 1) 
                    (not (or (= sub 1) 
                             (= sub (- m 1)))))
                  0 
                  rem)))
        (else (remainder (* base
                            (expmod base
                                    (- exp 1)
                                    m))
                         m))))

;M&R test
(define (M&R n)
  (define (try-it a)
    (= (expmod a n n)
       a))
  (try-it (+ 1
             (random (- n 1)))))

;Fast prime test using M&R test
(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((M&R n) (fast-prime? n
                                      (- times 1)))
        (else false)))

(newline)
(display (fast-prime? 20 13))
(newline)
(display (fast-prime? 2 13))
(newline)
(display (fast-prime? 3 13))
(newline)
(display (fast-prime? 9 13))
(newline)
(display (fast-prime? 7 13))
(newline)
(display (fast-prime? 19 13))
(newline)
(display (fast-prime? 13 13))

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

(define (prime? n)
  (and (> n 1) 
       (= (smallest-divisor n) 
          n)))

(define (time-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
    (begin 
      (newline) 
      (display n)
      (report-prime (- (runtime) start-time) ) #t)
    #f))

(define (report-prime elapsed-time)
  (display "***")
  (display elapsed-time))

(define (search-for-primes start end)
  (if (> start end)
    (begin (newline)
     "done")
    (begin (time-prime-test start)
           (search-for-primes (+ start 1)
                              end))))

;(search-for-primes 1 100)

(define (find-three-primes-from start)
  (define (find-primes-from start left)
    (if (= left 0)
      "done"
      (find-primes-from (+ start 1)
                        (- left (if (time-prime-test start)
                                  1
                                  0)))))
  (find-primes-from start 3))

(find-three-primes-from 1000000000000)
(find-three-primes-from 100000000000000)


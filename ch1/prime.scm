(define (divides? a b)
  (= (remainder b a)
     0))

;n>1
(define (prime? n)
  (define (iter x)
    (if (> (* x x) n)
      #t
      (if (divides? x n)
        #f 
        (iter (+ x 1)))))
  (if (< n 2)
    #f
    (iter 2)))

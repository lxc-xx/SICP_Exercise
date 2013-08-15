(load "sum.scm")

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a)
            (+ (term a)
               result))))
  (iter a 0))

(display (sum-iter identity 0 inc 10))

(load "integral.scm")

(define (simpson f a b n)
  (define h
    (/ (- b a) n))
  (define (term k)
    (* h 
       (/ (* (f (+ a (* k h)))
          (if (even? k)
            (if (= k 0)
              1
              2)
            4)) 
          3.0)))
  (sum term 0 inc n))

;(display (simpson cube 0 1 100))
;(display (integral cube 0 1 0.001))

;a
(define (accumulate-rec combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a)
              (accumulate-rec combiner null-value term (next a) next b))))

;b
(define (accumulate-iter combiner null-value term a next b)
  (define (iter acc now)
    (if (> now b)
      acc
      (iter (combiner (term now) acc) (next now))))
  (iter null-value a))


(define (sum term a next b)
  (accumulate-rec + 0 term a next b))

(define (product term a next b)
  (accumulate-rec * 1 term a next b))

(define (identity x) x)

(newline)
(display (sum identity 1 1+ 10))


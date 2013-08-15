(load "sum.scm")
;a
(define (product-rec term a next b)
  (if (> a b)
    1
    (* (term a)
       (product-rec term
                    (next a)
                    next
                    b))))

;b
(define (product-iter term a next b)
  (define (iter acc now)
    (if (> now b)
      acc
      (iter (* (term now)
               acc)
            (next now))))
  (iter 1 a))

(define (factorial-rec a b)
  (product-rec identity a inc b))

;(display (factorial-rec 1 4))

(define (term n)
  (if (even? n)
    (/ (+ n 2.0)
       (+ n 1.0))
    (/ (+ n 1.0)
       (+ n 2.0))))

(newline)
(display (* 4 (product-iter term 1 inc 1000000)))


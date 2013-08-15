(load "seq.scm")

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map dot-product m v))

(define (transpose m)
  (accumulate-n cons (list) m))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (x) (map (lambda (y) (dot-product x y)) cols)) m)))

(newline)
(define s (list (list 1 2 3) (list 4 5 6) (list 7 8 9)))
(display (matrix-*-matrix s s))


(load "seq.scm")

(define (unique-pairs n)
  (flatmap (lambda (i)
             (map (lambda (j) (cons i j))
                  (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))


(newline)
(display (unique-pairs 12))

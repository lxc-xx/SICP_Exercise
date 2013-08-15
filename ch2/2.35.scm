(load "seq.scm")


(define (count-leaves t )
  (accumulate + 0 (map (lambda (x)
                         (if (not (pair? x))
                           1
                           (count-leaves x)))
                       t)))

(newline)
(display (count-leaves (cons 4 (cons (list 1 2) (list 3 4)))))

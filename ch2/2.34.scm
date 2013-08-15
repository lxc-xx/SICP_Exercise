(load "seq.scm")

(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-iterms)
                (+ (* higher-iterms x)
                   this-coeff))
              0
              coefficient-sequence))

(newline)
(display (horner-eval 2 (list 1 3 0 5 0 1)))

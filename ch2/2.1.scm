(load "gcd.scm")

(define (make-rat n d)
  (if (< d 0)
    (make-rat (- 0 n)
              (- 0 d))
    (let ((g (gcd n d)))
          (cons (/ n g)
                (/ d g)))))

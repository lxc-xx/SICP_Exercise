(define (last-pair lst)
  (if (null? (cdr lst))
    (car lst)
    (last-pair (cdr lst))))

(newline)
(display (last-pair (list 1 2 3)))
(newline)
(display (last-pair (list 1)))
(newline)
(display (last-pair (list 1 2 3 (cons 123 32))))
(newline)


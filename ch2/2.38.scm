(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
      result
      (iter (op result (car rest))
            (cdr rest))))
  (iter initial sequence))


(newline)
(display (fold-left / 1 (list 1 2 3)))
(newline)
(display (fold-right / 1 (list 1 2 3)))

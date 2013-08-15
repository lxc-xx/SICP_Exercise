(define (same-parity? a b)
  (= (remainder a 2) (remainder b 2)))

(define (same-parity first . last)
  (define (same-parity-iter l acc)
    (if (null? l)
      acc
      (if (same-parity? first (car l))
        (same-parity-iter (cdr l) (cons (car l) acc))
        (same-parity-iter (cdr l) acc))))
  (same-parity-iter last (list first)))

(newline)
(display (same-parity 1 2 3 4 5 6 7))


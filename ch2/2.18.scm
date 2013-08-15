(define (reverse-list lst)
  (define (reverse-iter l acc)
    (if (null? l)
      acc
      (reverse-iter (cdr l) 
                    (cons (car l) acc))))
  (reverse-iter lst ()))

(newline)
(display (reverse-list (list 1 2 3 4 5)))
(newline)
(display (reverse-list (list 1)))
(newline)
(display (reverse-list ()))

(define (deep-reverse lst)
  (define (deep-reverse-iter l acc)
    (if (null? l)
      acc 
      (deep-reverse-iter (cdr l) 
                         (cons (deep-reverse (car l)) 
                               acc))))
  (if (pair? lst)
    (deep-reverse-iter lst ())
    lst))

(newline)
(display (deep-reverse (list (list 1 2 3) (list 4 5 6))))


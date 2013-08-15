(define (fringe tree)
  (if (null? tree)
    tree
    (if (pair? tree) 
      (append (fringe (car tree))
              (fringe (cdr tree)))
      (list tree))))
(newline)
(display (fringe (list (list 1 2 3) (list 4 5 6))))


(define (for-each proc items)
  (if (null? items)
    items
    (begin (proc (car items))
           (for-each proc (cdr items)))))

(newline)
(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))

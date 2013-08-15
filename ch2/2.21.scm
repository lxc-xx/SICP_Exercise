(define (map proc items)
  (if (null? items)
    items
    (cons (proc (car items))
          (map proc (cdr items)))))

;(newline)
;(display (map (lambda (x) (+ x x)) (list 1 2 3 4)))


(define (square-list items)
  (if (null? items)
    ()
    (cons (* (car items) (car items))
          (square-list (cdr items)))))

(define (square-list-x items)
  (map (lambda (x) (* x x)) items))

(newline)
(display (square-list (list 1 2 3 4)))
(newline)
(display (square-list-x (list 1 2 3 4)))

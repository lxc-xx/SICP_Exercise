(define (reverse-a sequence)
  (fold-right (lambda (x y) (append y (list x))) (list) sequence))

(define (reverse-b sequence)
  (fold-left (lambda (x y) (cons y x)) (list) sequence))

(newline)
(display (reverse-b (list 1 2 3)))

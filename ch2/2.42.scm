(load "seq.scm")
(define empty-board (list))

(define (safe? k positions)
  (define (get-position n pos)
    (if (= n 1)
      (car pos)
      (get-position (- n 1) (cdr pos))))
  (let ((kth (get-position k positions)))
    (accumulate
      (lambda (rest result)
         (and 
           result
           (let ((rth (get-position rest positions)))
             (and (not (= rth kth))
                  (not (= (abs (- k rest))
                          (abs (- kth rth))))))))
      #t
      (enumerate-interval 1 (- k 1)))))

(define (adjoin-position new-row k rest-of-queens)
  (append rest-of-queens (list new-row)))

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
      (list empty-board)
      (filter
        (lambda (positions) (safe? k positions))
        (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1)))))) 
  (queen-cols board-size))


(newline)
;(display (safe? 8 (list 4 2 8 5 7 1 3 6)))
(display (queens 8))


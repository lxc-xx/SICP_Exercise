(define (pascal row col)
 (if (or (> col row) (<= row 0) (<= col 0))
  0
  (if (or (= col row)
	   (= col 1))
   1
   (+ (pascal (- row 1) col)
	(pascal (- row 1) (- col 1))))))


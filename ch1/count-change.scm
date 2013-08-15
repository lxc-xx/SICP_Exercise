(define (count-change amount)
 (cc amount 5))

(define (cc amount kinds-of-coins)
 (cond ((= amount 0) 1)
  ((or (< amount 0) (= kinds-of-coins 0)) 0)
  (else (+ (cc amount
			(- kinds-of-coins 1))
		 (cc (- amount 
			  (first-denomination kinds-of-coins))
		  kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
 (cond ((= kinds-of-coins 1) 1)
  ((= kinds-of-coins 2) 5)
  ((= kinds-of-coins 3) 10)
  ((= kinds-of-coins 4) 25)
  ((= kinds-of-coins 5) 50)))
	
(define (count-change-iter amount curCoin)
 (if (= amount 0) 
  1
  ( if (< amount 0)
	0
	(cond ((= curCoin 1) 
		   (+ (count-change-iter (- amount 1 ) curCoin)
			(count-change-iter amount (+ curCoin 1))))
	 ((= curCoin 2)
	  (+ (count-change-iter (- amount 5) curCoin)
	   (count-change-iter amount (+ curCoin 1))))
	 ((= curCoin 3)
	  (+ (count-change-iter (- amount 10) curCoin)
	   (count-change-iter amount (+ curCoin 1))))
	 ((= curCoin 4)
	  (+ (count-change-iter (- amount 25) curCoin)
	   (count-change-iter amount (+ curCoin 1))))
	 ((= curCoin 5)
	  (+ (count-change-iter (- amount 50) curCoin)
	   (count-change-iter amount (+ curCoin 1))))
	 ( else 0)))))

(define (count-change-i amount)
 (count-change-iter amount 1))


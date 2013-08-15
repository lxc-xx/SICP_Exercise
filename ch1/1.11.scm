(define (f n)
 (if (< n 3)
  n
  (+ (f (- n 1))
   (* 2 (f (- n 2)))
   (* 3 (f (- n 3))))))

(define (f-iter n i v-1 v-2 v-3)
 (if (>= i n)
  (next v-1 v-2 v-3)
  (f-iter n (+ i 1)
   (next v-1 v-2 v-3)
   v-1
   v-2)))

(define (next v-1 v-2 v-3)
 (+ v-1
  (* 2 v-2)
  (* 3 v-3)))

(define (f-i n) 
 (if (<= n 2)
  n
  (f-iter n 3 2 1 0)))

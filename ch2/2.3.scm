(define make-ractangle cons)
(define width-rectangle car)
(define height-rectangle cdr)

(define (perimeter rec)
 (*
  2
  (+
   (width-rectangle rec)
   (height-rectangle rec))))


(define (area rec)
 (*
  (width-rectangle rec)
  (height-rectangle rec)))
  
(newline)
(display (perimeter (make-ractangle 2 8)))
(display (area (make-ractangle 3 5)))

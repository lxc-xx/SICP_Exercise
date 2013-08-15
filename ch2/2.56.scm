(define variable? symbol?)

(define (same-variable? v1 v2)
  (and (variable? v1)
       (variable? v2)
       (eq? v1 v2)))

(define (=number? expr num)
  (and (number? expr)
       (= expr num)))

(define (make-sum a1 a2)
  (cond ((=number? a1 0) a2)
        ((=number? a2 0) a1)
        ((and (number? a1) (number? a2)) (+ a1 a2))
        (else (list '+ a1 a2))))

(define (make-product m1 m2)
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        ((and (number? m1) (number? m2)) (* m1 m2))
        (else (list '* m1 m2))))

(define (sum? x)
  (and (pair? x)
       (eq? (car x)
            '+)))

(define (product? x)
  (and (pair? x)
       (eq? (car x)
            '*)))

(define addend cadr)
(define augend caddr)

(define multiplier cadr)
(define multiplicant caddr)


(define (make-exponentiation base exponent)
  (cond ((=number? exponent 0) 1)
        ((=number? exponent 1) base)
        (else (list '** base exponent))))

(define (exponentiation? expr)
  (and (pair? expr)
       (eq? (car expr)
            '**)))

(define base cadr)
(define exponent caddr)

(define (deriv expr var)
  (cond ((number? expr) 0)
        ((variable? expr)
         (if (same-variable? expr var) 1 0))
        ((sum? expr)
         (make-sum (deriv (addend expr) var)
                   (deriv (augend expr) var)))
        ((product? expr)
         (make-sum
           (make-product (multiplier expr)
                         (deriv (multiplicant expr) var))
           (make-product (deriv (multiplier expr) var)
                         (multiplicant expr))))
        ((exponentiation? expr)
         (make-product
           (exponent expr)
           (make-product
             (make-exponentiation 
               (base expr)
               (make-sum (exponent expr) -1))
             (deriv (base expr) var))))
        (else
          (error "Unknown expression"))))


;(newline)
;(display (deriv '(+ x 3) 'x))
;(newline)
;(display (deriv '(* x y) 'x))
;(newline)
;(display (deriv '(* (* x y) (+ x 3)) 'x))
(newline)
(display (deriv '(* 2 (** (* 3 n) 5)) 'n))


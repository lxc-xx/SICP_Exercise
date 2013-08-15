(load "seq.scm")

(define (triples-sum-s n s)
  (define (flatten seqs)
    (accumulate append (list) seqs))
  (flatten
    (flatten (map (lambda (i)
                    (map (lambda (j)
                           (map (lambda (k)
                                  (list i j k))
                                (filter (lambda (k)
                                          (<= (+ i j k) s))
                                        (enumerate-interval j (- s i j)))))
                         (enumerate-interval i (- s i))))
                  (enumerate-interval 1 n)))))
(newline)
(display (triples-sum-s 15 10))


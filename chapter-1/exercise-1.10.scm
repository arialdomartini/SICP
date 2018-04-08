;; Ackerman's function


(define (A x y)
  (define (double n) (* 2 n))
  (define (dec n) (- n 1))

  (cond ((= y 0) 0)
        ((= x 0) (double y))
        ((= y 1) 2)
        (else (A (dec x)
                 (A x (dec y))))))


(display (A 1 10))
(newline)

(display (A 2 4))
(newline)

(display (A 3 3))
(newline)


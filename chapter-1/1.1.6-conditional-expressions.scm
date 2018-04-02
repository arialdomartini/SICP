(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(display (abs (- 10)))
(newline)


(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))

(display (abs2 (- 10)))
(newline)

(define (abs3 x)
  (if (< x 0)
      (- x)
      x))

(display (abs3 (- 10)))
(newline)

(define (f x)
  (or (> x 5)
      (< x 2)))

(display (f 1))
(display (f 3))
(display (f 6))
(newline)

(define (my-or p1 p2)
  (cond (p1 #t)
        (else p2)))

(define (f2 x)
  (my-or (> x 5)
         (< x 2)))

(display (f2 1))
(display (f2 3))
(display (f2 6))
(newline)

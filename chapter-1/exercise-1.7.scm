;; Calculating the square root using the Newton's method

(define (sqrt x)
  (define (average a b)
    (/ (+ a b) 2))

  (define (good-enough? old-guess guess)
    (cond
     ((< (abs (- guess old-guess)) (/ guess 100)) #t)
     (else #f)))
  (define (improve guess)
    (average guess (/ x guess) ))

  (define (sqrt-iter old-guess guess)
    (if (good-enough? old-guess guess)
        guess
        (sqrt-iter guess (improve guess))))
  (sqrt-iter 2.0 1.0))

(display (sqrt 10000000000000)) ; this never ends <== fixed
(newline)

(display (sqrt 0.0001)) ; this returns a very wrong value <== fixed
(newline)

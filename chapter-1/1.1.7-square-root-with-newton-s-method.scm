;; Calculating the square root using the Newton's method

(define (sqrt x)
  (define (average a b)
    (/ (+ a b) 2))

  (define (good-enough? guess)
    (if (< (abs (- x
                   (* guess guess)))
           0.00001)
        #t
        #f))
  (define (improve guess)
    (average guess (/ x guess) ))

  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(display (sqrt 2))
(newline)

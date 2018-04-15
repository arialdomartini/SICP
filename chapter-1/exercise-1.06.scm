;; if as an ordinary function, rather than as a special form

(define (my-if predicate true-clause false-clause)
  (cond (predicate true-clause)
        (else false-clause)))

(display (my-if (> 10 2) "10 is larger than 2" "shouldn't happen"))
(newline)


(define (sqrt x)
  (define (average a b)
    (/ (+ a b) 2))

  (define (good-enough? guess)
    (my-if (< (abs (- x
                   (* guess guess)))
           0.00001)
        #t
        #f))
  (define (improve guess)
    (average guess (/ x guess) ))

  (define (sqrt-iter guess)
    (my-if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))


(display (sqrt 2)) ; this does not work, and results in
                   ; "maximum recursion depth exceeded" error
(newline)

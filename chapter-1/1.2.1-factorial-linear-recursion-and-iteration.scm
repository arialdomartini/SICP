(define (factorial n)
  (cond ((= n 0) 1)
        (else (* n (factorial (- n 1))))))

(display (factorial 6))
(newline)

(define (iterative-factorial n)
  (define (factorial-iter counter result)
    (cond ((= counter 1) result)
          (else (factorial-iter (- counter 1) (* counter result)))))
  (factorial-iter n 1))

(display (iterative-factorial 6))
(newline)

(define (iterative-factorial2 n)
  (define (factorial-iter counter product)
    (cond ((> counter n) product)
          (else (factorial-iter (+ counter 1)
                                (* counter product)))))
  (factorial-iter 1 1))

(display (iterative-factorial2 6))
(newline)

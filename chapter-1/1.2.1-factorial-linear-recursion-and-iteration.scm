(define (factorial n)
  (cond ((= n 0) 1)
        (else (* n (factorial (- n 1))))))

(display (factorial 6))
(newline)

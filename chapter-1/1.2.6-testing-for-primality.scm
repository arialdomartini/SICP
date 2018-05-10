;; Searching for divisors

(define (smallest-divisor n)
  (define (divides? x y) (= 0 (remainder x y)))
  (define (square x) (* x x)) ;; for the end test, see the note below
  (define (iter m)
    (cond ((> (square m) n) 1)
          ((divides? n m) m)
          (else (iter (+ m 1)))))
  (iter 2))


;; if d is a divisor of n, the also n/d is a divisor of n
;; for example, 2 is divisor of 20. Also 20/2 = 10 must be a divisor of 20
;; since d and n/d are both divisors, d and n/d cannot be both greater than sqrt(n)


(display (smallest-divisor 2))
(display " should be 1")
(newline)
(newline)


(display (smallest-divisor 10))
(display " should be 2")
(newline)
(newline)


(display (smallest-divisor 13))
(display " should be 1")
(newline)
(newline)


(display (smallest-divisor 35))
(display " should be 5")
(newline)
(newline)

(display (smallest-divisor 19999))


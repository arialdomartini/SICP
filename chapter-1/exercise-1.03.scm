; Define a procudure that takes 3 numbers and returns the sum of the squares of the 2 largest

(define (square x) (* x x))
(define (sum x y) (+ x y))

(define (max a b)
  (if (> a b)
      a
      b))
(define (min a b)
  (if (< a b) a b))

(define (largest a b c)
  (max (max a b) c))

(define (second-largest a b c)
  (min (min (max a b) (max b c)) (max a c)))

(define (sum-of-squares-of-2-largest a b c)
  (sum (square (largest a b c))
       (square (second-largest a b c))))


(display (sum-of-squares-of-2-largest 3 1 2))
(newline)


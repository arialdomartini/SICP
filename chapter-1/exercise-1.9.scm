(define (dec n) (- n 1))
(define (inc n) (+ n 1))


(define (sum a b)
  (if (= 0 a)
      b
      (sum (dec a) (inc b))))

(display (sum 10 12))
(newline)


(define (sum2 a b)  
  (if (= 0 a) b
      (inc (sum (dec a) b))))

(display (sum2 10 12))
(newline)


;; regardless both the procedures are defined as recursive, sum's process is iterative, while sum2's one is recursive

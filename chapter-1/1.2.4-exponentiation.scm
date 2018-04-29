;; b^n =
;;   1           if n = 0
;;   b * b^(n-1) otherwise

(define (expt b n)
  (if (= n 0)
      1
      (* b
         (expt b (- n 1)))))

(display (expt 2 8))
(newline)

(define (expt-linear b n)
  (define (iter n result)
    (if (= n 0)
        result
        (iter (- n 1) (* result b))))
  (iter n 1))

(display (expt-linear 2 8))
(newline)


;; b^n = b^(n/2)^2       if n is even
;; b * b^(n - 1)         if n is odd

(define (fast-expt b n)
  (define (square x)
    (* x x))
  (define (even? x)
    (= (remainder n 2) 0))
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(display (fast-expt 2 8))
(newline)

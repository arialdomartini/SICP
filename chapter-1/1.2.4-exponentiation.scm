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

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

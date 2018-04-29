(define (product a b)
  (cond ((= b 1) a)
        (else (+ a (product a (- b 1))))))

(display (product 4 5))
(newline)
(display (product 15 6))
(newline)


(define (product-iterative a b)
  (define (iter aa bb prod)
    (if (= 0 bb)
        prod
        (iter aa (- bb 1) (+ prod aa))))
  (iter a b 0))

(display (product-iterative 4 5))
(newline)
(display (product-iterative 15 6))
(newline)

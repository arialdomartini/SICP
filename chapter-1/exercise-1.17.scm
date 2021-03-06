(define (product a b)
  (cond ((= b 1) a)
        (else (+ a (product a (- b 1))))))

(display (product 4 5))
(newline)
(display (product 15 6))
(newline)
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
(newline)

(define (fast-product a b)
  (define (double x) (+ x x))
  (define (halve x) (/ x 2))
  (define (even? x) (= (remainder x 2) 0))
  (cond ((= b 1) a)
        ((even? b) (fast-product (double a) (halve b)))
        (else (+
               (fast-product a (- b 1))
               a)))
  )

(display (fast-product 4 5))
(newline)
(display (fast-product 15 6))
(newline)

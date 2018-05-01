(define (mult a b)
  (define (double x) (+ x x))
  (define (halve x) (/ x 2))
  (define (even? x) (= 0 (remainder x 2)))
  (define (iter aa bb product)
    (cond ((= bb 1) (+ aa product))
          ((even? bb) (iter (double aa)
                            (halve bb)
                            product))
          (else (iter aa
                      (- bb 1)
                      (+ product aa)))))
  (iter a b 0))




(display (mult 2 3))
(newline)
(display "2 * 3 = 6")
(newline)(newline)

(display (mult 20 30))
(newline)
(display "20 * 30 = 600")
(newline)(newline)

(display (mult 7 9))
(newline)
(display "7 * 9 = 63")
(newline)(newline)

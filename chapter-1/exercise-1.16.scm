(define (expt-iter b n)
  (define (square x) (* x x))
  (define (even? x) (= (remainder x 2) 0))
  (define (iter bb n a)
    (cond
     ((= n 0) a )
     ((even? n) (iter
                 (square bb)
                 (/ n 2)
                 a))
     (else (iter
            bb
            (- n 1)
            (* a bb)))))



  (iter b n 1))

(display (expt-iter 2 2))
(newline)
(display (expt-iter 2 3))
(newline)
(display (expt-iter 2 4))
(newline)
(display (expt-iter 2 8))
(newline)


(define (fast-expt b n)
  (define (expt-iter2 a b n)
    (cond ((= n 0) a)
          ((even? n) (expt-iter2 a (square b) (/ n 2)))
          (else (expt-iter2 (* a b) b (- n 1)))))
  (expt-iter2 1 b n))


(display (fast-expt 2 2))
(newline)
(display (fast-expt 2 3))
(newline)
(display (fast-expt 2 4))
(newline)
(display (fast-expt 2 8))
(newline)

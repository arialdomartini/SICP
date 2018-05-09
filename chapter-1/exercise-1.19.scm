(define (fib n)
  (cond ((= 0 n) 0)
        ((= 1 n) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

(display (fib 0)) (display " ")
(display (fib 1)) (display " ")
(display (fib 2)) (display " ")
(display (fib 3)) (display " ")
(display (fib 4)) (display " ")
(display (fib 5)) (display " ")
(display (fib 6)) (display " ")
(display (fib 7)) (display " ")
(newline)
(newline)


(define (fib-iter n)
  (define (iter left right count)
    (cond ((= 0 n) 0)
          ((= 1 n) 1)
          ((= n count) left)
          (else (iter (+ left right)
                      left
                      (+ 1 count)))))
  (iter 0 1 0))

(display (fib-iter 0)) (display " ")
(display (fib-iter 1)) (display " ")
(display (fib-iter 2)) (display " ")
(display (fib-iter 3)) (display " ")
(display (fib-iter 4)) (display " ")
(display (fib-iter 5)) (display " ")
(display (fib-iter 6)) (display " ")
(display (fib-iter 7)) (display " ")
(newline)
(newline)


(define (fib-iter-general n)
  (define (iter a b count)
    (let ((p 0) (q 1))
      (if (= n count) b
          ;;  a <= bq + aq + ap
          ;;  b <= bp + aq
          (iter (+ (* b q) (* a q) (* a p))
                (+ (* b p) (* a q))
                (+ 1 count))))
    )
  (iter 1 0 0))


(display (fib-iter-general 0)) (display " ")
(display (fib-iter-general 1)) (display " ")
(display (fib-iter-general 2)) (display " ")
(display (fib-iter-general 3)) (display " ")
(display (fib-iter-general 4)) (display " ")
(display (fib-iter-general 5)) (display " ")
(display (fib-iter-general 6)) (display " ")
(display (fib-iter-general 7)) (display " ")
(newline)
(newline)


;; Tqp
;;  a <= bq + aq + ap
;;  b <= bp + aq
;; where
;;  p = 0
;;  q = 1
;;
;; Then
;; a <= b + a
;; b <= a

(define (fib-iter-fast n)
  (define (iter a b p q count)
    (cond ((= count 0) b)
          ((even? count) (iter a
                               b
                               (+ (square p) (square q)) 
                               (+ (* 2 p q) (square q))                                     (/ count 2)))
          (else (iter (+ (* b q)
                         (* a q)
                         (* a p))
                      (+ (* b p)
                         (* a q))
                      p
                      q
                      (- count 1)))))
  (iter 1 0 0 1 n)
  )

(display (fib-iter-fast 1)) (display " ")
(display (fib-iter-fast 2)) (display " ")
(display (fib-iter-fast 3)) (display " ")
(display (fib-iter-fast 4)) (display " ")
(display (fib-iter-fast 5)) (display " ")
(display (fib-iter-fast 6)) (display " ")
(display (fib-iter-fast 7)) (display " ")
(newline)

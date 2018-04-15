;; f(n) = n if n < 3
;;      = f(n - 1) + 2 f(n - 2) if n >= 3


;; as a recursive process
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))))))

(display "===== Recursive ====")
(newline)
(display (f 2))
(newline)
(display (f 3))
(newline)
(display (f 5))
(newline)
(display (f 8))
(newline)
(display (f 11))
(newline)

(define (f2 n)
  (define (shift-window i left right)
    (cond ((< n 3) n)
          ((= i n) lef)
          (else (shift-window (+ i 1) right (* 2 right)))))
  (shift-window 0 0 1))


(display "==== Iterative ====")
(newline)
(display (f2 2))
(newline)
(display (f2 3))
(newline)
(display (f2 5))
(newline)
(display (f2 8))
(newline)
(display (f2 11))
(newline)

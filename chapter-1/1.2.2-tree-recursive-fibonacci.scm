;; a tree recursive definition of Fibonacci numbers.
;; This implementation is very inefficient:
;; running (fib 20), (fib 3) is calculated 2584 times,
;; (fib 1) even 6996 times

(define (fib n)
  ;;(display "computing fib ")
  ;;(display n)
  ;;(newline)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))


(display (fib 20))
(newline)



(define (iterative-fib n)
  (define (shift-window left right n)
    (if (= n 0)
        left
        (shift-window right (+ left right) (- n 1))))
  (shift-window 0 1 n)
  )

(display (iterative-fib 20))
(newline)

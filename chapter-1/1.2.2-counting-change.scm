;; How many different ways can we make change of $1.00 given
;; 50, 25, 10, 5 and 1 cents coins?


(define (count-change amount kinds)
  (define (cc amount coins)
    (cond ((= amount 0) 1)
          ((null? coins) 0)
          ((< amount 0) 0)
          (else (+ (cc amount (cdr coins))
                   (cc (- amount (car coins)) coins)))))
  (cc amount kinds))

(display (count-change 100 '(50 25 10 5 1)))
(newline)

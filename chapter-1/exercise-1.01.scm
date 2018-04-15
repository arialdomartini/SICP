10
(+ 5 4 3)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))

(define a 3)
(define b (+ a 1))  ; b = 4
(+ a b (* a b))
(= a b)

(display
(if (and (> b a) (< b (* a b)))
    b
    a)) ; this should print 4
(newline)

(display
 (cond ((= a 4) 6)
       ((= b 4) (+ 6 7 a))  ; this is true and returns 6 + 7 + 3 = 16
       (else 25)))
(newline)

(display
 (+ 2 (if (> b a) b a))) ; 2 + 4 = 6
(newline)

(display
 (* (cond ((> a b) a)
          ((< a b) b) ; this is true, and its value is 4
          (else 1))
    (+ a 1)))         ; this is 4, so the result should be 16
(newline)

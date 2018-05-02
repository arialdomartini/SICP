;; calculating the Greatest Commom Divisor with the Euclid's Algorithm
;;
;; GCD(a, b) = GCD(b, r)
;;   with r = remainder (a, b)


(define (gcd a b)
  (cond ((= b 0) a)
        (else (gcd b (remainder a b)))))

(display (gcd 206 40))
(newline)
(display (gcd 28 16))
(newline)


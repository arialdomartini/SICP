;; given n, and a | a < n a > 0
;; if a^n modulo n != a, then n is not prime


(define (exp base e)
  (if (= e 0) 1
      (* base (exp base (- e 1)))))

;; (define (exp-modulo base e n)
;;  (remainder (/ (exp base e) n)))

(display (exp 2 3))
(newline)

(define (exp-fast base e)
  (cond ((= 0 e) 1)
        ((even? e) (square (exp-fast base (/ e 2))))
        (else (* base (exp-fast base (- e 1))))))

(display (exp-fast 2 3))
(newline)

(define (exp-mod base e n)
  (cond ((= 0 e) 1)
        ((even? e)
         (remainder (square
                     (exp-mod base (/ e 2) n))
                    n))
        (else
         (remainder (* base
                       (exp-mod base (- e 1) n))
                    n))))

(display (exp-mod 2 3 3)) ;; should be 2
(newline)


(define (random-1 n)
  (+ 1 (random (- n 1))))

(define (fermat-test n)
  (define (try-with a)
    (= (exp-mod a n n) a))
  (try-with (random-1 n)))

(define (fermat-test-times n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fermat-test-times n (- times 1)) )
        (else false)))


(define (stampa-up-to n)
  (define (stampa count)
    (define (report n)
      (display "checking: ")
      (display n)
      (if (fermat-test-times n 100)
          (display "=> primo")
          (display ""))
      (newline)
      (stampa (+ 1 count))
      )
    (if (= n count) 1
        (report count)))
  (stampa 2))

(stampa-up-to 10000)

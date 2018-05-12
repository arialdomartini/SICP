(define (modexp base e n)
  (cond ((= e 0) 1)
        ((even? e) (remainder
                    (square
                     (modexp base
                             (/ e 2)
                             n))
                    n))
        (else (remainder
               (* base
                  (modexp base
                          (- e 1)
                          n))
               n))))

(define (random-1 n)
  (+ 1 (random (- n 1))))

(define (prime? n)
  (fermat-test n))

(define (fermat-test n)
  (let ((a (random-1 n)))
    (cond ((= (modexp a n n) a) true)
          (else false))))
(define (fermat-test-repeat n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fermat-test-repeat n (- times 1)))
        (else false)))

(display (fermat-test-repeat 6373  100))
(newline)


(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (fermat-test-repeat n 10000)
      (report-prime n start-time)))

(define (report-prime n start-time)
  (let ((end-time (runtime)))
    (display " *** is prime. Elapsed time: ")
    (display (- end-time start-time))))

(define (search-for-prime from to)
  (timed-prime-test from)
  (if (< from to)
      (search-for-prime (+ from 1) to)))

(search-for-prime 2 100000)

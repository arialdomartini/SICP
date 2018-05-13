(define (modulo a b)
  (remainder a b))

(define (exp base e)
  (cond ((= e 0) 1)
        (else (* base
                 (exp base
                      (- e 1))))))

(define (exp-mod base e n)
  (cond ((= e 0) 1)
        ((even? e) (modulo (square (exp-mod base
                                            (/ e 2)
                                            n))
                           n))
        (else (modulo (* base
                         (exp-mod base (- e 1) n))
                      n))))

(display (exp-mod 2 3 3)) ;; should be 2
(newline)

(define (exp base e)
  (if (= e 0)
      1
      (* base (exp base (- e 1))))
  )
(display (exp 2 3)) ;; should be 8
(newline)

(define (fast-exp base e)
  (cond ((= e 0) 1)
        ((even? e) (fast-exp (square base) (/ e 2)))
        (else (* base (fast-exp base (- e 1))))))
(display (fast-exp 2 3)) ;; should be 8 as well
(newline)

(define (exp-mod-hacker base e n)
  (remainder (fast-exp base e) n))

(display (exp-mod-hacker 2 3 3))
(newline)

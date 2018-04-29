;; The sine of an angle in radians can be camputed by making use of the
;; approximation sin x ~~ x if x is small enough, and the trigonometric identity
;;
;; sin x = 3sin x/3 - 4sin^3 x/3
;;
;; to reduce the size of sine's argument

;; sin(12.5) = 0.2164396139381


(define (sin x)
  (define (triple x)
    (* x 3))
  (define (quadruple x)
    (* x 4))
  (define (cube x)
    (* x x x))
  (define (small-enough x)
    (< (abs x) 0.1))
  (cond ((small-enough x) x)
        (else (- (triple (sin (/ x 3)))
                 (quadruple (cube (sin (/ x 3))))))))

(display (sin 12.5))
(newline)

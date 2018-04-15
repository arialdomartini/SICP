;; Pascal's triangle
;;
;;           1        <- level 0, position 0
;;          1 1       <- level 1, position 0, 1
;;         1 2 1      <- level 2, position 0, 1, 2
;;        1 3 3 1     <- level 3, position 0, 1, 2, 3
;;       1 4 6 4 1
;;         ...


(define (triangle n)
  (if (= n 0) 1
      -1))



(define (elem level position)
  (cond ((= position 0) 1)
        ((= position level) 1)
        (else (+ (elem (- level 1)
                       (- position 1))
                 (elem (- level 1)
                       position)))))

(define (triangle up-to-level)
  (define (display-level l)
    (display (make-string (- up-to-level l) #\ ))
    (define (print-level position)
      (cond ((= position l) (display (elem l position)))
            (else (display (elem l position))
                  (display " ")
                  (print-level (+ position 1)))))
    (print-level 0)
    (newline))
  (define (display-levels current-level)
    (cond ((= current-level up-to-level) (display-level current-level))
          (else (display-level current-level)
                (display-levels (+ current-level 1)))))
  (display-levels 0))


(triangle 14)
(newline)

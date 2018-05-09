
(define (mezzo-index ns)
  (define sum
    (lambda (l)
      (if (null? l)
          0
          (+ (car l) (sum (cdr l))))))
  (define (iter sn dx)
    (cond ((null? dx) (length sn))
          ((>= (sum sn) (sum dx)) (length sn))
          (else (iter (append sn (list (car dx)))
                      (cdr dx)))))

  (iter () ns)))


(display (mezzo-index '(1 2 1 1 1 6)))
(newline)



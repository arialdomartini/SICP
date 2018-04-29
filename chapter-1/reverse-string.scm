(define (revs s)
  (cond ((null? s) ())
        (else (append
               (revs (cdr s))
               (list (car s))))))


(display
 (list->string
  (revs (string->list "ciao mamma, guarda come mi diverto"))))
(newline)


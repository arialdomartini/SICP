(define (a-plus-abs-b a b)
  ((if (> b 0) + -) ; wow, this is amazing: this returns either the function + or the function -
   a
   b))

(display 
 (a-plus-abs-b 5 -4))
(newline)
(display 
 (a-plus-abs-b 5 4))
(newline)

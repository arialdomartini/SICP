(define (range-rec from to)
  (if (> from to)
      ()
      (cons from
            (range-rec (+ 1 from)
                   to))))

(define (range from to)
  (define (range-iter from to result)
    (if (> from to)
        result
        (range-iter (+ 1 from)
                    to
                    (cons from result))))
  (range-iter from to ()))

(define (product-rec f xs)
  (if (null? xs)
      1
      (* (f (car xs))
         (product-rec f (cdr xs)))))

(define (product f xs)
  (define (product-iter f xs result)
    (if (null? xs)
        result
        (product-iter f
                      (cdr xs)
                      (* result
                         (f (car xs))))))
  (product-iter f xs 1))

(display (product-rec
          (lambda (x) (* x x))
          (range-rec 1 10)))
(newline)

(display (product
          (lambda (x) (* x x))
          (range 1 10)))
(newline)



;; calculate pi/4 as
;; pi   2 * 4 * 4 * 6 * 6 * 8 * ...
;; -- = ---------------------------
;; 4    3 * 3 * 5 * 5 * 7 * 7 * ...

(define (item i)
  (define (item-z a b index)
    (cond ((= i index) (cons a b))
          ((even? index) (item-z (+ b 1)
                                 b
                                 (+ 1 index)))
          (else (item-z a
                        (+ b 2)
                        (+ 1 index)))))
  (item-z 2 3 0))


(define (item-div i)
  (/ (car (item i))
     (cdr (item i))))

(define (pi n)
  (* 4
     (product item-div
              (range 0 n))))

(display (+ 0.0 (pi 13500)))
(newline)




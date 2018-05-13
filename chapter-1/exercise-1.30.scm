;; Simpson's Rule for calculating function's integration


;; int(f, a, b) = h/3 * (y0 + 4y1 + 2y2+ 4y3 + 2 y4 + ... + 2yn-2 + 4 yn-1 + yn)
;; with h  (b-a)/n
;; and yk = f(a + kh)



(define (enumerate-interval-recursive from to)
  (if (> from to) ()
      (cons from
            (enumerate-interval (+ 1 from)
                                to))))
(define (enumerate-interval from to)
  (define (enumerate-interval-iter from to result)
    (if (> from to)
        result
        (enumerate-interval-iter (+ 1 from)
                               to
                               (cons from result))))
  (enumerate-interval-iter from to ()))

(display (enumerate-interval 1 100))
(newline)


(define (sum list)
  (define (sum-iter list result)
    (if (null? list)
        0
        (sum-iter (cdr list) (+ result (car list)))))
  (sum-iter list 0))


(define (accumulate-recursive f initial list)
  (if (null? list)
      initial
      (f (car list) (accumulate-recursive f initial (cdr list)))))

(define (accumulate f initial list)
  (define (accumulate-iter f initial list result)
    (if (null? list)
        result
        (accumulate-iter f
                         initial
                         (cdr list)
                         (f result (car list)))))
  (accumulate-iter f initial list initial))

(display (sum (enumerate-interval 0 100)))
(newline)

(display (accumulate + 0 (enumerate-interval 0 100)))
(newline)



(define (map-index-recursive f xs)
  (define (map-index-i f xs i)
    (if (null? xs) ()
        (cons (f (car xs) i)
              (map-index-i f (cdr xs) (+ i 1))))
    )

  (map-index-i f xs 0))

(define (map-index f xs)
  (define (map-index-i f xs i result)
    (if (null? xs)
        result
        (map-index-i f
                     (cdr xs)
                     (+ i 1)
                     (cons (f (car xs) i) result))))
  (map-index-i f xs 0 ()))

(define (sub-i x i)
  (- x i)
  )

(display (map-index sub-i
                    (enumerate-interval 1 10)))
(newline)


(define (coefficient i n)
  (define (even? x) (= 0 (remainder x 2)))
  (cond ((= i 0) 1)
        ((= i n) 1)
        ((even? i) 4)
        (else 2)))

(let ((n 10))
  (define (print-coefficient x i)
    (coefficient i n))
  (display (map-index print-coefficient (enumerate-interval 0 10)))
  )
(newline)

(define (sum xs)
  (accumulate + 0 xs))

(define (integ f a b n)
  (let ((h (/ (- b a)
              n)))
    (* (/ h 3)
       (sum (map-index
             (lambda (x i)
               (* (coefficient i n)
                  (f (+ a (* i h)))))
             (enumerate-interval 0 n))))))

(define (cube x) (* x x x))
(display (integ cube 0 1 100))
(newline)
;(display (integ cube 0 1 1000))
;(newline)

(define (linear x) x)
(display (integ linear 0 1 100000))
(newline)

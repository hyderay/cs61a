(define (square n) (* n n))

(define (pow base exp) 
    (cond
        ((= exp 0) 1)
        ((= (modulo exp 2) 1) (* base (pow base (- exp 1))))
        ((= (modulo exp 2) 0) (square (pow base (/ exp 2))))
        )
    )

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y (repeatedly-cube (- n 1) x)))
        (* y y y))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) 
    (car (cdr s)))

(define (caddr s) 
    (car (cddr s))
    )

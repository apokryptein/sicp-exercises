#lang planet neil/sicp

(define (sqrt-iter guess x)
  (display 'guess: )
  (display guess) (newline)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (display 'newguess: )
  (display (average guess (/ x guess)))
  (newline) (newline)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (display 'difference: )
  (display (abs (- (square guess) x)))
  (newline)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; illustration of tests failing for very samll number
;; We can see that when we attempt to calculate the square root
;; of values less than the desired maximum difference (0.001) as
;; defined in the good-enough? function, we receive inaccurate results.
;; This occurs because as the program recurses and the improved guesses become smaller and smaller
;; as they approach the correct answer, they become smaller than than programmed threshold.
;; As the threshold is then too high, the program cannot iterate enough times to approach the correct
;; answer.

(sqrt 0.00000001)
;;(sqrt 0.001)
;;(sqrt 0.01)


;; illustration of tests failing for very large numbers




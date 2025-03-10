#lang planet neil/sicp

;; f(n)
;; n if n < 3
;; f(n-1) + 2f(n-2) + 3f(n-3) if n>=3

;; RECURSIVE EXAMPLE 
(define (f-rec n)
  (cond ((< n 3)
         n)
        ((>= n 3)
         (+ (f-rec (- n 1))
            (* 2 (f-rec (- n 2)))
            (* 3 (f-rec (- n 3)))
            ))))

(f-rec 0)
(f-rec 1)
(f-rec 2)
(f-rec 3)
(f-rec 4)
(f-rec 5)


;; ITERATIVE EXAMPLE
(define (f-iter n)
  

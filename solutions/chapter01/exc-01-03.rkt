#lang planet neil/sicp

;; SICP Exercise 1.3
(define (square x)
	(* x x))
	
(define (sum-two-squares x y)
	(+ (square x) (square y)))
	
(define (larger x y)
	(> x y))

(define (square-two-largest x y z)
	(cond
          ((and (larger x y) (larger y z)) (sum-two-squares x y))
          ((and (larger y x) (larger z x)) (sum-two-squares y z))
          (else (sum-two-squares x z))))

(square-two-largest 1 2 3)
(square-two-largest 0 1 2)
(square-two-largest -5 -4 0)
#lang planet neil/sicp

;; SICP Exercise 1.8
;; Implementation of Newton's method for cube roots
;; (x/y^2 + 2y) / 3

(define (cube-iter guess last x)
  (if (good-enough? guess last)
      guess
      (cube-iter (improve guess x) guess x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess last)
  (< (/ (abs (- guess last)) guess) 0.00001))

(define (square x)
  (* x x))

(define (cube-root x)
  (cube-iter 1.0 0.0 x))

(cube-root 64)
(cube-root 125)
(cube-root 216)
(cube-root 343)
(cube-root 512)
(cube-root 729)
(cube-root 1000)
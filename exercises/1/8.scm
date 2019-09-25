#lang scheme

;;; Exercise 1.8:Newton’s method for cube roots is based onthe fact that if y is an approximation to the cube root of x,
;;; then a beer approximation is given by the {{{formula}}}:
;;; Use this formula to implement a cube-root procedure anal-ogous to the square-root procedure.

(define (sq x) (* x x))

(define (improve guess x)
  (/ (+ (/ guess (sq x))
         (* 2 x))
     3))

(define (good-guess? new old)
  (< (abs (- new old)) 0.0000001))

(define (cbrt-iter x new old)
  (if (good-guess? new old)
      new
      (cbrt-iter x (improve new x) new)))

(define (cbrt x)
  (cbrt-iter x 1 10000))
#lang scheme
;;; Exercise 1.3:Define a procedure that takes three numbersas arguments and returns the sum of the squares of the twolarger numbers.

(define (square x) (* x x))

(define (sumSquares x y) (+ (square x)
                            (square y)))

(define (f a b c)
  (cond
    ((and (>= a c) (>= b c)) (sumSquares a b))
    ((and (>= b a) (>= c a)) (sumSquares b c))
    ((and (>= c b) (>= a b)) (sumSquares c a))))
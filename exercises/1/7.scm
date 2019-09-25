#lang scheme

;; Described before
(define (square x) (* x x))

(define (avg2 x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (avg2 guess (+ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;;; Exercise 1.7: egood-enough? test used in computingsquare roots will not be very effective for finding the squareroots of very small numbers.
;;; Also, in real computers, arith-metic operations are almost always performed with lim-ited precision.
;;; is makes our test inadequate for very largenumbers. Explain these statements, with examples showinghow the test fails for small and large numbers.
;;; An alterna-tive strategy for implementinggood-enough?is to watchhowguesschanges from one iteration to the next and tostop when the change is a very small fraction of the guess.
;;; Design a square-root procedure that uses this kind of endtest. Does this work beer for small and large numbers?

(sqrt 10)
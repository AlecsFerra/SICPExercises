#lang scheme

;; Described before
(define (square x) (* x x))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (improve guess x)
  (/ 2.0 (+ guess x)))

;;; Exercise 1.6:Alyssa P. Hacker doesn’t see whyifneeds tobe provided as a special form.
;;; “Why can’t I just define it asan ordinary procedure in terms ofcond?” she asks.
;;; Alyssa’sfriend Eva Lu Ator claims this can indeed be done, and shedefines a new version of if:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;;; Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5) ; 5
(new-if (= 1 1) 0 5) ; 0

;;; Delighted, Alyssa uses new-if to rewrite the square-rootprogram:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(sqrt-iter 1.0 2) ; this operation will cause an infinte loop
;; since we are using applicative order evaluation the else clause will always be evaluated
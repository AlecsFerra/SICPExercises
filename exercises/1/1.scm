;;; Exercise 1.1:Below is a sequence of expressions. What isthe result printed by the interpreter in response to each ex-pression?
;;; Assume that the sequence is to be evaluated inthe order in which it is presented.

10 ;10

(+ 5 3 4) ; 12

(- 9 1) ; 8

(/ 6 2) ; 3

(+ (* 2 4) (- 4 6)) ; 6 - eval as (+ 8 -2) -> 6

(define a 3) ; set a = 3 in the Enviroment

(define b (+ a 1)) ; set a = 3 in the Enviroment - eval as (define b 4)

(+ a b (* a b)) ; 19 - eval as (+ 3 4 (* 3 4)) -> (+ 3 4 12) -> 19

(= a b) ; #f

(if (and (> b a) (< b (* a b ))) ; eval as (and (> 4 3) (< 4 (* 3 4))) -> (and #t (< 4 (* 3 4))) ->
                                 ; (and #t (< 4 12)) -> (and #t #t) -> #t
    b  ; since the predicate is #t the b value is returned
    a)
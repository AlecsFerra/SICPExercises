;;; Exercise 1.1:Below is a sequence of expressions.
;;; What isthe result printed by the interpreter in response to each ex-pression?
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

(if (and (> b a) (< b (* a b ))) ; (and (> 4 3) (< 4 (* 3 4))) -> (and #t (< 4 (* 3 4))) ->
                                 ; (and #t (< 4 12)) -> (and #t #t) -> #t
    b  ; since the predicate is #t the b value is returned
    a)

(cond ((= a 4) 6) ; (= a 4) -> (= 3 4) -> #f
      ((= b 4) (+ 6 7 a)) ; (= b 4) -> (= 4 4) -> #t
                          ; (+ 6 7 a) -> (+ 6 7 3) -> 16
                          ; 16 is returned
      (else 25)

(+ 2 (if (> b a) b a)) ; (> b a) -> (> 4 3) -> #t
                       ; so the 1st arg is returned b -> 4
                       ; (+ 2 4) -> 6

(* (cond ((> a b) a) ; (> a b) -> (> 3 4) -> #f
         ((< a b) b) ; (< a b) -> (< 3 4) -> #t - so is returned b -> 4
         (else -1))
    (+ a 1)) ; (* 4 (+ 3 1)) -> (* 4 4) -> 16
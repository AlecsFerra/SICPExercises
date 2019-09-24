#lang scheme
;;; Exercise 1.5:Ben Bitdiddle has invented a test to determinewhether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation.
;;; He defines thefollowing two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

;;; en he evaluates the expression

(test 0 (p))

;;; What behavior will Ben observe with an interpreter thatuses applicative-order evaluation?
;;; What behavior will heobserve with an interpreter that uses normal-order evalu-ation? Explain your answer. 

;; Using applicative-order evaluation all arguments are evaluated before the function is called
;; Since p is defined as itself the expression will be evaluated this way
;; (test 0 (p))
;; (test 0 (p))
;; (test 0 (p)) stuck in an infinite loop
;;
;; Using anormal-order evaluation arguments are evaluated only when needed
;; The expression will be evaluated this way
;; (if (= 0 0) 0 (p)))
;; (if #t 0 (p))
;; 0 -- Notice that p is never evaluated because is nerver needed
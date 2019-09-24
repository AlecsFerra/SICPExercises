#lang scheme
;;; Exercise 1.4: Observe that our model of evaluation allowsfor combinations whose operators are compound expres-sions.
;;; Use this observation to describe the behavior of thefollowing procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; check if b is a positive value
; if #t permorm a + on the anguments a, b
; else permorm a - on the anguments a, b
; this procecdure can be written as (+ a (abs b))
; this exapmle shows that even procedures can be passed dinamicly
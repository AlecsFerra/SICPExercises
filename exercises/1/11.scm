#lang scheme
;;; Exercise 1.11: A function f is defined by the rule {{}}
;;; Write a procedure that computes f by means of a recursiveprocess.
(define (f n)
  (define (fmin d)
    (* d (f (- n d))))
  (if (< n 3) n
      (+ (fmin 1) (fmin 2) (fmin 3))))

(f 7)

;;; Write a procedure that computes f by means of aniterative process.
(define (f~ n)
  (define (f-iter a b c n)
    (if (= n 0)
        a
        (f-iter b c (+ c (* 2 b) (* 3 a)) (- n 1))))
  (f-iter 0 1 2 n))

(f~ 7)
#lang scheme
;;; Exercise 1.10: e following procedure computes a math-ematical function called Ackermann’s function.
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))
;;; What are the values of the following expressions?
(A 1 10)
; (A (- 1 1) (A 1 (- 10 1)))
; (A 0 (A 1 9))
; (A 0 (A 0 (A 1 8)))
; (A 0 (A 0 (A 0 (A 1 7))))
; (A 0 (A 0 (A 0 (A 0 (A 0 6)))))
; ...
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))
; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))
; ...
; 1024 
(A 2 4)
; (A (- x 1) (A x (- y 1)))
; ..
; 65536
(A 3 3)
; 65536 
;;; Consider the following procedures, whereAis the proce-dure defined above:
(define (f n) (A 0 n)) ; 2n
(define (g n) (A 1 n)) ; 2 ** n
(define (h n) (A 2 n)) ; 2 ** 2 ** (n - 1) volte
(define (k n) (* 5 n n))
;;;Give concise mathematical definitions for the functions com-puted by the procedures f,g, and h for positive integer values of n.
;;; For example,(k n)computes 5n2.
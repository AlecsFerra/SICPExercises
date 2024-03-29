#lang scheme

;;; Exercise 1.9: Each of the following two procedures definesa method for adding two positive integers in terms of theproceduresinc,
;;; which increments its argument by 1, and dec, which decrements its argument by 1.
;;; Using the substitution model, illustrate the process gener-ated by each procedure in evaluating (+ 4 5). Are theseprocesses iterative or recursive?

(define (+ a b )
  (if (= a 0)
      b (inc (+ (dec a) b))))

(+ 4 5)
;;; (inc (+ (dec 4) 5)) 
;;; (inc (+ 3 5)) 
;;; (inc (inc (+ (dec 3) 5))) 
;;; (inc (inc (+ 2 5))) 
;;; (inc (inc (inc (+ (dec 2) 5)))) 
;;; (inc (inc (inc (+ 1 5)))) 
;;; (inc (inc (inc (inc (+ (dec 1) 5))))) 
;;; (inc (inc (inc (inc (+ 0 5))))) 
;;; (inc (inc (inc (inc 5)))) 
;;; (inc (inc (inc 6))) 
;;; (inc (inc 7)) 
;;; (inc 8)
;;; 9
;;; its recursive beacuse the state cant be resumed as some data is saved in the pervius call

(define (+ a b)
  (if (= a 0 )
      b
      (+ (dec a) (inc b))))

(+ 4 5)
;;; (+ (dec 4) (inc 5))
;;; (+ 3 6)
;;; (+ (dec 3) (inc 6))
;;; (+ 2 7)
;;; (+ (dec 2) (inc 7))
;;; (+ 1 8)
;;; (+ (dec 1) (inc 8))
;;; (+ 0 9)
;;; 9
;;; its recursive beacuse on every call you can resume the state

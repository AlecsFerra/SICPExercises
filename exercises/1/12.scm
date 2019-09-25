#lang scheme

(define (psc row col)
  (if (or (= 0 col) (= row col))
      1
      (+ (psc (- row 1) col)
         (psc (- row 1) (- col 1)))))
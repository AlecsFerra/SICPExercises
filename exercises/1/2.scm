;;; Exercise 1.2:Translate the following expression into prefixform
;;; see the book for the formula


(define f 
    (/ (+ 5 
          4
          (- 2 (- 3 (+ 6 (/ 4 5))))
       )
       (* 3
          (- 6 2)
          (- 2 7)
       )
    )
)
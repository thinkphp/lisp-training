;insert after an element
;(insertAfter '(9 8 7 5 3) 1 2) -> (9 2 8 7 5 3)

(defun insertAfter (L N A) 
   (cond ((null L) ())
         ((equal n 0) (cons A L))
         (T (cons (CAR L) (rep (CDR L) (- N 1) A) ))
   )  
)
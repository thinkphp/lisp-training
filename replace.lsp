;Replace an element in the list
;(rep '(1 2 3 5 7) 1 8) -> (1 8 3 5 7)
(defun rep (L N A) 
   (cond ((null L) ())
         ((equal n 0) (cons A (cdr L)))
         (T (cons (CAR L) (rep (CDR L) (- N 1) A) ))
   )  
)
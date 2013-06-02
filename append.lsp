;(append2 '(a b c) '(x y z))
;->(a b c x y z)

(defun append2 (A B)

       (cond ((null A) B)

             (T (cons (car A) (append2 (cdr A) B)))
       ) 
)

;
(defun append* (&REST L)

               (cond ((null L) L)

                     (T (append (car L) (apply 'append* (cdr L) )))
               )  
)
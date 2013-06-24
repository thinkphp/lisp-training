;member
;(member! 'a '(c v a f (x y z))
;T

(defun member! (E L)

       (dolist (i L)

            (if (equal i E)

                (return T)  
            )
       ) 
)

(defun member!! (E L)

       (cond ((null L) nil)
           
             ((equal (car L) E) L) 

             (t (member!! E (cdr L)))
       )    
)
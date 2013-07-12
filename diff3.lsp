;Difference of two or more sets

(defun diff (X Y)

       (cond ((null X) nil)

             ((member (car X) Y) (diff (cdr X) Y)) 

             (T (cons (car X) (diff (cdr X) Y))) 
       ) 
)

(defun diff* (&REST L &AUX (R (car L)))

       (dolist (i (cdr L) R)

               (unless (setf R (diff R I)) (return nil)) 
       )  
)

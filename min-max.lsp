(defun min2 (X Y)

       (if (< X Y)

           X 

           Y
       )  
)

(defun min* (&REST L)

       (cond ((null L) 'error)

             ((null (cdr L)) (car L))  

             (T (min2 (car L) (apply #'min* (cdr L) ) ))
       )
        
)

(defun min** (&REST L &AUX (R (car L)) )

       (dolist (i (cdr L) R) 

          (unless (setf R (min2 i R) ) (return nil)) 
       )        
)

(defun forall(L P)
   (if (null L) 
       T 
       (and (FUNCALL P (cAR L)) (forall (CDR L) P) )
   )
)

(defun nums(start stop)

       (setf L nil)
 
       (loop ( when(> start stop) (return (reverse L)) )

             (setf L (cons start L) )

             (incf start)
       )       
 
)

(defun prime(N)
       (forall (nums 2 (floor (sqrt N)) )  
               #'(lambda (d) (not (= (MOD N d) 0)))
       )
)
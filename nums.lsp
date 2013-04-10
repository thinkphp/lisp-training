(defun nums(start stop)

       (setf L nil)
 
       (loop ( when(> start stop) (return (reverse L)) )

             (setf L (cons start L) )

             (incf start)
       )       
 
)
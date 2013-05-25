(defun divisors (N)

     (let ((R))

       (dotimes (i (+ N 1) (reverse R))
 
            (if (> i 0) 

                (if (equal (REM N i) 0)

                    (setf R (cons i R)) 
                )

            )           
       )  

     )
)
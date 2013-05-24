;Checks if a number is Prime or Not
;(prime 101)
;->T
;(prime 100)
;->nil

;using dotimes
(defun prime (N)

     (print (sqrt 8))

     (let ((flag T))
 
       (dotimes (i (+ (floor (sqrt N)) 1) flag)

             (if (>= i 2)

                 (if (equal (REM N i) 0)

                     (setf flag nil) 
                 )
             ) 
       ) 

     )
) 
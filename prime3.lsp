;Checks if a number is Prime or Not
;(prime 101)
;->T
;(prime 100)
;->nil
(defun prime(N)
      
     (let ((flag T))
    
       (do ((i 2 (+ i 1))) ((= i (+ (floor (sqrt N)) 1)) flag)

           (print i)

           (if (equal (REM N i) 0) 

               (setf flag nil)
           )     

       )   
     )
)
 
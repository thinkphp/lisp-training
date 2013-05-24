(defun prime(N)
      
     (let ((flag T)(S 0))

       (do ((i 2 (+ i 1))) ((= i (floor (sqrt (/ N 2)))) flag)
           (print i) 
           (if (= (/ N i) 0)
               (setf flag nil)
           )
       )   
     )
)
 
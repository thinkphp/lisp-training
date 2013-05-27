;(expo 2 3)
;->8

(defun expo(a b)

       (cond ((= b 0) 1) 

             (t (* a (expo a (- b 1))))
       ) 
)


    
        
             
                  
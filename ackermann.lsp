;Ackermann function

;if x = 0, then y + 1
;if y = 0, then ackermann(x-1,1)
;if x > 0 and y > 0, then ackermann(x-1,ackermann(x,y-1))

(defun ackermann (X Y)

       (cond ((zerop X) (+ y 1))
 
             ((zerop Y) (ackermann (- x 1) 1))

             (T (ackermann (- x 1) (ackermann x (- y 1)) ))          
       )  
)
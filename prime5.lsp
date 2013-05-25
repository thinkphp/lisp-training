;Checks if a number is Prime or Not
;(prime 101)
;->T
;(prime 100)
;->nil

;using prog()
(defun prime (N)

       (prog ((i 2)(flag T))

             (if (OR (= N 2) (= N 3)) (return T))

             again             

             (if (equal (REM N i) 0)

                 (setf flag nil) 
             )

             (setf i (+ i 1))

             (if (<= i (+ (floor (sqrt N)) 1))

                 (go again)

                 (return flag)
             )
       ) 
) 
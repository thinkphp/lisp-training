;reverse number N
;(rev 123) -> 321
(defun rev (N)
       (setf s 0) 
       (do ((M N (floor (/ M 10)) ) ) ((= M 0) S)
           (setf s (+ (* s 10)(REM M 10)) )  
       ) 
          
)
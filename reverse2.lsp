;reverse an integer N

;(rev 123456789) -> 987654321
;iterative solution
(defun rev (N)

       (setf s 0) 

       (do ((M N (floor (/ M 10)) ) ) ((= M 0) S)

           (setf s (+ (* s 10)(REM M 10)) )
       ) 
          
)

;recursive solution
;(rev2 123456789) -> 987654321
(defun rev2 (N)

    (labels ((rec (N S)

              (cond ((= N 0) S)

                   (T (rec (floor (/ N 10)) (+ (* s 10)(REM N 10) ) ) )
             )

            ))

       (rec N 0) 
    ) 
)
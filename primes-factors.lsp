;Decomposition in prime factors
;(factors 8)
;(2 3)

(defun factors (N)

          (let ((R))
 
            (do ((x N)(c 0)(i 2 (+ i 1))) ((= x 1) R)

                 (setf c 0) 

                 (if (equal (REM x i) 0)

                    (do ()((> (REM x i) 0))

                        (setf c (+ c 1)) 

                        (setf x (floor (/ x i)))
                    )
                 )

                 (if (> c 0) 

                       (and (setf R (cons c R))(setf R (cons i R)))
                 )
            )   
          )            
)
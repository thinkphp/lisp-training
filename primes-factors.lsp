;Decomposition in prime factors

;(factors 100)
;(5 2 2 2) <=> 100 = 5^2 * 2^2
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

;(factors2 100)
;((5 2) (2 2)) <=> 100 = 5^2 * 2^2
(defun factors2 (N)

          (let ((R))
 
            (do ((x N)(c 0)(i 2 (+ i 1))) ((= x 1) (reverse R))

                 (setf c 0) 

                 (if (equal (REM x i) 0)

                    (do ()((> (REM x i) 0))

                        (setf c (+ c 1)) 

                        (setf x (floor (/ x i)))
                    )
                 )

                 (if (> c 0) 

                     (setf R (cons (list i c) R))
                 )
            )   
          )            
)
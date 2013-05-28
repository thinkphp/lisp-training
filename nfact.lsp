;Contest Problem OJI
;(nfact 5)
;->2 3 4 5 => 2^3*3*5

(defun nfact (N)

   (let ((R))

       (do ((xx 2 (+ xx 1))) ((= xx (+ N 1)) (display R))
           
           (setf x xx)

           (do ((d 2 (+ d 1))) ((<= x 1))
 
               (if (equal (REM x d) 0)

                    (do () ((> (REM x d) 0))

                        (setf R (cons d R))
  
                        (setf x (floor (/ x d)))
                    )
               )
           ) 

       )
   )
)

(defun display (R)

  (reverse R)
)
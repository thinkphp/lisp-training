;(sumdigits 1234)
;->10
(defun sumdigits (N)

    (let ((s 0))

       (do ((i N (floor (/ i 10) ))) ((= i 0) S)

           (setf first (REM i 10)) 

           (setf s (+ s first)) 
       )  
    )
)
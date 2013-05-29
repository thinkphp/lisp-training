(defun toBin(N)

    (let ((R))

       (dotimes (i 15 R)

          (setf bit (logand (ash N (- i)) 1)) 

          (setf R (cons bit R)) 
       )
    )
)
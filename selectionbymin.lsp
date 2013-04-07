(defun selec(N)

    (format t "<<Selection by min for ~D numbers>>~&" n)

    (setf arr (make-array N))

    (format t "Enter the numbers")

    (dotimes (x N)

        (setf (aref arr x) (read))
    )

    (do ((i 0 (+ i 1) )) ((= i (- n 1)))

        (setf m (aref arr i) )

        (setf k i) 

        (do ((j (+ i 1) (+ j 1) )) ((= j n)) 
 
            (if (< (aref arr j) m ) (and (setf k j) (setf m (aref arr j) )) )
             
        )

        (setf (aref arr k) (aref arr i))

        (setf (aref arr i) m)
    ) 


    (princ "Output (Sorted Array) -> ")     
    (dotimes (x N)

        (princ (aref arr x))
        (princ " ")
    )
)

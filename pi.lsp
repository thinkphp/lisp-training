(defun p (EPS)

    (setf eps EPS)

    (setf sign 1)

    (setf v1 1)

    (setf v2 (- 1 (float (/ 1 3)) ))

    (setf i 5)

    (do () ((< (* 4 (if(> v1 v2)(- v1 v2)(- v2 v1)) ) EPS) (* 4 v2))

        (setf v1 v2)


        (setf f (* sign (float (/ 1 i) )))

        (setf v2 (+ v2 f))

        (setf sign -1)
 
        (setf i (+ i 2)) 
    )   
)
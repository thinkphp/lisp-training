(defun max2 (X Y)

       (if (> X Y)

           X

           Y
       )
)

(defun min2 (X Y)

       (if (< X Y)

           X

           Y
       )
)

(defun min* (&REST L)

       (cond ((null L) 'ERROR)
 
             ((null (cdr L)) (car L)) 

             (T (min2 (car L) (apply #'min* (cdr L) ) ))
       )
)

(defun max* (&REST L)

       (cond ((null L) 'ERROR)
 
             ((null (cdr L)) (car L)) 

             (T (max2 (car L) (apply #'max* (cdr L) ) ))
       )
)


(defun min** (&REST L)

       (setf min (car L))

       (setf L2 (cdr L))

       (let ((s))

          (dolist (i L2 min)

            (if (< i min) 

                (setf min i) 
            )
          )  
       ) 
)


(defun max** (&REST L)

       (setf max (car L))

       (setf L2 (cdr L))

       (let ((s))

          (dolist (i L2 max)

            (if (> i max) 

                (setf max i) 
            )
          )  
       ) 
)
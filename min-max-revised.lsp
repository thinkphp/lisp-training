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
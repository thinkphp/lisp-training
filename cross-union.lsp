;Intersection of two or more sets

(defun myintersection (X Y)

       (cond ((null X) nil)

             ((member (car X) Y) (cons (car X) (myintersection (cdr X) Y) )) 

             (T (myintersection (cdr X) Y))
       )
)

;written recursively
(defun myintersection* (&REST L)

       (cond ((null L) 'ERROR)

             ((null (cdr L)) (car L))

             (T (myintersection (car L) (apply #'myintersection* (cdr L) ) )) 
       ) 
)


;written iteratively
(defun myintersection** (&REST L &AUX (R (CAR L)))

       (dolist (i (cdr L) R)
               
               (unless (setf R (myintersection R i) )(return nil))
       ) 
)

;Union of two or more sets

(defun myunion (X Y)

       (cond ((null X) Y)

             ((member (car X) Y) (myunion (cdr X) Y)) 

             (T (cons (car X) (myunion (cdr X) Y)))
       )
)

;written recursively
(defun myunion* (&REST L)

       (cond ((null L) 'ERROR)

             ((null (cdr L)) (car L))

             (T (myunion (car L) (apply #'myunion* (cdr L) ) )) 
       ) 
)


;written iteratively
(defun myunion** (&REST L &AUX (R (CAR L)))

       (dolist (i (cdr L) R)
               
               (unless (setf R (myunion R i) )(return nil))
       ) 
)



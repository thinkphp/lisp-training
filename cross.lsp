;Intersection of two or more sets
(defun intersect (A B)

       (cond ((null A) nil)

             ((member (car A) B) (cons (car A) (intersect (cdr A) B) ))

             (T (intersect (cdr A) B))
       ) 
)

;using apply recursively
(defun intersect* (&REST L)

       (cond ((null L) nil)

             ((null (cdr L)) (car L))

             (t (intersect (car L) (apply #'intersect* (cdr L)) )) 
       )      
)

;using DOLIST intertively
(defun intersect** (&REST L &AUX (R (car L)))

       (dolist (i (cdr L) R)

               (unless (setf R (intersect R i))(return nil))
       ) 
)
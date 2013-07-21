;Intersection of two or more sets
(defun intersect (A B)

       (cond ((null A) nil)

             ((member (car A) B) (cons (car A) (intersect (cdr A) B) ))

             (T (intersect (cdr A) B))
       ) 
)

(defun intersect* (&REST L)

)

(defun intersect** (&REST L &AUX (R (car L)))

)
;Intersection of two or more sets
(defun cross (X Y)

       (duplicates (append X Y))
)

(defun duplicates (L)

       (cond ((null L) nil)

             ((member (car L) (cdr L))(cons (car L) (duplicates (cdr L))))  

             (T (duplicates (cdr L)))
       )
)
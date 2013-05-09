;Intersection of two sets
;(intersect '(a b c) '( x b c y)) -> (b c)

(defun intersect (X Y)
       (cond ((or (null X)(null Y)) nil)
             ((member (car X) Y) (cons (car X) (intersect (cdr X) Y) ))
             (T (intersect (cdr X) Y))
       ) 
)

(defun intersect* (&rest L)

)
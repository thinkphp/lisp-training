;Intersection of two sets
;(intersect '(a b c) '( x b c y)) -> (b c)

(defun intersect (X Y)
       (cond ((or (null X)(null Y)) nil)
             ((member (car X) Y) (cons (car X) (intersect (cdr X) Y) ))
             (T (intersect (cdr X) Y))
       ) 
)


;(intersect* '(a b c) '(x y z b c d) '(a b z))
(defun intersect* (&REST L)
       (cond ((null L) nil)
             ((null (cdr L)) (car L))
             (T (intersect (car L) (apply 'intersect* (cdr L)) ))
       ) 
)
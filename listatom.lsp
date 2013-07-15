;List all atoms
;(listatom '(a (b c) d (x y z (p)))
;->(a b c d x y z p)
;(listatom2 '(a (b c) d (x y z (p)))
;->(a b c d x y z p)

;recursively

(defun listatom (L)

       (cond ((null L) nil)  

             ((atom L) (list L)) 

             (T (append (listatom (car L)) (listatom (cdr L)) )) 
       )
)

;using mapcan

(defun listatom2 (L)

       (cond ((null L) nil)  

             ((atom L) (list L)) 

             (T (mapcan #'listatom2 L)) 
       )
)
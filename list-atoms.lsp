;List atoms
;(list-atoms '(a b (c) d (e f)))
;(a b c d e f)

(defun list-atoms(L)
       (cond ((null L) nil)
             ((atom L) (list L))
             (T (append (list-atoms (car L)) (list-atoms (cdr L)) )) 
       ) 
)

;with mapcan
(defun list-atoms2(l)
       (cond ((null L) nil)
             ((atom L) (list L))
             (T (mapcan #'list-atoms2 L)) 
       )
)
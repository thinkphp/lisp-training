;inser 5 '(1 2 3 7 8 9) '<)
(defun inser (elem L p)

 (cond ((NULL L)(LIST elem))

       ((funcall p elem (car L))(cons elem L))
 
       (T (cons (car L) (inser elem (cdr L) p )))         
 )
)
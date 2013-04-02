(defun lastelement(L)
 (cond ((NULL (CDR L)) L)
       (T (lastelement (CDR L))) 
 )
)

(defun firstelement(L)
 (car L)
)

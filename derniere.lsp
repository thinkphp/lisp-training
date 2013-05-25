;(derniere '(1 2 3))
;->3

(defun derniere(L)
       (cond ((null (cdr L)) L)
             (T (derniere (cdr L))) 
       ) 
)

(defun derniere2(L)

       (if (null (cdr L)) (car L) 
                          (derniere (cdr L))  
       )  
)
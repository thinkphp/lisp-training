(defun mapcar3 (L P)

       (cond ((null L) nil)

             (t (cons (funcall P (car L)) (mapcar3 (cdr L) P)) ) 
       ) 
)
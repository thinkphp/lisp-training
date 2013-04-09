(defun forall (L P)
   (if (null L) T (and (funcall P (cAR L) ) (forall (CDR L) P))         
   ) 
)
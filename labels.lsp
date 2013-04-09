;(REV '(3 2 1) nil) -> (1 2 3)
(defun reve(L)(labels (
 (REV (L R)
   (cond ((NULL L) R) 
         (T (REV (CDR L) (CONS (CAR L) R) ))
 )))(REV L nil)))

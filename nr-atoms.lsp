;(atoms '(a b c d e)
;->5

(defun atoms(L)
       (cond ((null L) 0)
             ((atom L) 1)
             (T (+ (atoms (car L)) (atoms (cdr L)) ))
       ) 
)

(defun atoms2(L)
       (cond ((null L) 0)
             ((atom L) (list 1))
             (T (summa (mapcan #'atoms2 L)))
       ) 
)

(defun summa(L &aux (r 0))
       (dolist (i L r)
               (setf r (+ r i))
       )
)
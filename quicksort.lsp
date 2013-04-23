;Quicksort
;(qsort '(5 4 3 2 1) '<)

(defun divide (X L P &aux L1 L2)
 (dolist (i L (list (reverse L1) (reverse L2)))
    (if (funcall P i X) (setf L1 (cons i L1)) (setf L2 (cons i L2)) )
 )
)

(defun qsort(L P)
       (labels ((rec (X L P)
                     (append (qsort (car L) P) (list X) (qsort (cadr L) P) ) 
               ))

               (if (NULL L) nil (rec (car L) (divide (car L) (cdr L) P) P ) )
       )       
)


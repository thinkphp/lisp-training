;Union function
(defun union33 (X Y)

       (cond ((null X) Y)

             ((member (car X) Y) (union33 (cdr X) Y))

             (T (cons (car X) (union33 (cdr X) Y)))
       )
)

(defun union34 (X Y)

       (duplicates (append X Y))
)

(defun duplicates (L)
      
       (cond ((null L) nil)

             ((member (car L) (cdr L)) (duplicates (cdr L)))

             (T (cons (car L) (duplicates (cdr L))))
       )   
)


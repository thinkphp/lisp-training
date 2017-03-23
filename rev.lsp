;(rev '(1 2 3))
;->(3 2 1)

(defun rev (L)

       (cond ((null L) nil)

             (T (append (rev (cdr L)) (list (car L)) ))
       )
)

(defun rev2 (L R)

       (cond ((null L) R)

             (T (append (rev (cdr L)) (cons (car L) R)))
       ) 
)

(defun cross (X Y)

       (duplicates (append X Y))
)

(defun union2 (X Y)

       (eliminate_dup (append X Y))
)

(defun duplicates (L)

       (cond ((null L) nil)

             ((member (car L) (cdr L)) (cons (car L) (duplicates (cdr L))))

             (T (duplicates (cdr L)))
       )
)

(defun eliminate_dup (L)

       (cond ((null L) nil)

             ((member (car L)(cdr L)) (eliminate_dup (cdr L)))
 
             (T (cons (car L) (eliminate_dup (cdr L))))
       )
)
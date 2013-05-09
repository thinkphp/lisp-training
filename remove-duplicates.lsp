;remove duplicates
;(remove_duplicates '(a a b b c c d e)
;

(defun remove_duplicates(L)
       (cond ((null L) nil)
             ((member (car L) (cdr L)) (remove_duplicates (cdr L) )) 
             (T (cons (car L) (remove_duplicates (cdr L)) ) )
       ) 
)
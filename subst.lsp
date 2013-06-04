;(subst2 'A 'Y '(X Y Z M N))
;->(X A Z M N)

(defun subst2 (new old L)

       (cond ((null L) nil)

             ((equal old (car L)) (cons new (subst2 new old (cdr L)) ))

             (T (cons (car L) (subst2 new old (cdr L)) ))
       )
)
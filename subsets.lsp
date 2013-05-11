;(subsets '(a b c))
;2^N

(defun subsets (M)

       (if (null M) '(NIL)

           (mapcan #'(lambda(z)(list (cons (car M) z) z) )

                     (subsets (CDR M))
           )
       )
)
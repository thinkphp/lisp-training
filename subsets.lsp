;(subsets '(a b c))
;2^N
;((a b c) (b c) (a c) (c) (a b) (b) (a) (nil))

(defun subsets (M)

       (if (null M) '(NIL)

           (mapcan #'(lambda(z)(list (cons (car M) z) z) )

                     (subsets (CDR M))
           )
       )
)

;(myreverse '(1 2 3))
;->(3 2 1)
(defun myreverse (L)
 
       (labels (( rev (L R)
 
                  (if (null L) R
                               (rev (cdr L) (cons (car L) R) )
                   ) 
               ))

          (rev L nil)
       )
)


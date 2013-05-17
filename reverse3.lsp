;Reverse reloaded

;(rev '(1 2 3 4 5))
;->(5 4 3 2 1)

(defun rev (L)

       (labels ((rev (L R) 
 
                     (cond ((null L) nil)

                           (T (append (rev (cdr L) R) (cons (car L) R) ))
                     )
        
               ))

          (rev L nil)
       ) 
)

;(rev2 '(1 2 3))
;->(3 2 1)
(defun rev2 (L)

       (labels ((rev (L R)

                     (if (null L) R

                         (rev (cdr L) (cons (car L) R) )
                     )
               ))

           (rev L nil)
       )
)
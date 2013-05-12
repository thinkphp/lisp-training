;(posatom 'a '(c a a b a a l a)
;->(1 2 4 5 7)

(defun posatom(X L)

       (labels ((rec (X L R N) 

                     (cond ((null L) (reverse R))

                           ((equal X (car L)) (rec X (cdr L) (cons N R) (+ N 1))) 

                           (T (rec x (cdr L) R (+ 1 N)))
                     )
    
               ))

         (rec X L nil 0)
       ) 
)
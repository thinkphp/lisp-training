;(select '((A 2)(B 3)(A 3)) 'integerp)
;(2 3)

(defun select (L P)

    (labels ((sel (L R)

              (let ((prim (car L))(rest (cdr L)))

                   (cond ((null L) R)

                         ((atom prim)(if (OR (not (funcall P prim)) (member prim R) ) 

                                      (sel rest R) 

                                      (sel rest (cons prim R)) 

                                     )) 
                        
                         (T (sel rest (sel prim R) ))
                   )
              )   

            ))

       (sel L nil)
    ) 
)
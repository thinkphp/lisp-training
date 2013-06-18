;foreach
(defun foreach (L F)

    (let ((R))
 
       (dolist (i L (reverse R))

               (setf R (cons (funcall F i) R)) 

       ) 

    )
)

(defun myreverse (L)
    

    (labels (( rec (L R)
           
               (cond ((null L) R)
    
                     (T (rec (cdr L) (cons (car L) R) ))
               )

            ))

        (rec L nil) 
     )
)

(defun reverseall (L)

       (foreach (myreverse L) #'(lambda(A)(if (atom A) A (reverseall A)  )) ) 
)
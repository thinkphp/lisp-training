;foreach
(defun foreach (L F)

    (let ((R))
 
       (dolist (i L (reverse R))

               (setf R (cons (funcall F i) R)) 

       ) 

    )
)

(defun myreverse (L)

       (if (null L) 

           nil

           (append (myreverse(cdr L)) (cons (car L) nil)) 
       )    

)

(defun reverseall (L)

       (foreach (myreverse L) #'(lambda(A)(if (atom A) A (reverseall A)  )) ) 
)
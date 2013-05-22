;(myreverse '(1 2 3))
;->(3 2 1)
(defun myreverse (L)

    (labels ((rev (L R)
 
               (if (null L) nil

                   (append (rev (cdr L) R) (cons (car L) R))
               ) 

             ))

         (rev L nil)
     )
)

(defun reverseFromNum (N)

       (let ((L))

         (do ((i N (floor (/ i 10)))) ((= i 0) L)

              (setf L (cons (REM i 10) L))
         )

         (labels ((rev (L R)

                        (if (null L) R

                                     (rev (cdr L) (cons (car L) R))
                        )  
                 ))

           (rev L nil)
         )
       )
)
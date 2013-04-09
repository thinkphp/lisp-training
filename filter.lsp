(defun filter (L P)

  (if (null L) '()

       (let (
             (the-rest (filter (CDR L) P))
            )
 
          (if (funcall P (CAR L) ) (cons (CAR L) the-rest) the-rest ) 
       )
   )
)
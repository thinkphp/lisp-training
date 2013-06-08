;Reverse


;solution 1 written recursively
(defun rev (L)

       (if (null L)

           nil

           (append (rev (cdr L)) (cons (car L) nil))
       )
)

;solution 2 written with recursion on queue

(defun rev2 (L)
       
       (labels ((rec (L R)
   
                     (if (null L) 

                         R

                         (rec (cdr L) (cons (car L) R))

                      ) 
               )) 

           (rec L nil)
       ) 
)

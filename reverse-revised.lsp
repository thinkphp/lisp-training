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

;solution 3 for all levels
;(reverseall '(1 (2 3) (7 8) 9))
;->(9 (8 7) (3 2) 1)

(defun reverseall (L)

       (print L)

       (cond ((null L) nil)

             ((atom L) L)
 
             (T (append (reverseall (cdr L)) (list (reverseall (car L)) )))
       )
)


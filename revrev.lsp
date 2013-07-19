;Reverse List

;solution 1
(defun rev (L)

   (labels ((rec (L R)

             (cond ((null L) R)

                   (T (rec (cdr L) (cons (car L) R) ))
             )
        
           ))

       (rec L nil) 
   )
)

;(rev '(1 2 3))
;->(3 2 1)

;solution 2
(defun rev2 (L)
      
       (cond ((null L) nil)

             (T (append (rev2 (cdr L) ) (list (car L)) ))
       )  
)

(defun rev* (L)

       (mapcar (lambda(z)(if (atom z) z (rev* z) )) (rev L))
)
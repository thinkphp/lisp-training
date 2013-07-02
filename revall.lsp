;Reverse the elements of the List

;(rev '(1 2 3))
;->(3 2 1)
;test
;->(equal (rev '(1 2 3)) (reverse '(1 2 3)))
;->T
;recursive solution with COND
(defun rev (L)

       (cond ((null L) nil)

             (T (append (rev (cdr L)) (list (car L) ) )) 
       )  
)

;recursive solution with the structure IF
(defun rev2 (L)

       (if (null L)

             nil

             (append (rev (cdr L)) (list (car L) ) )
       )  
)

;recursive solution with recursion on queue

(defun rev3 (L)

       (labels ((rec (L R)

                     (if (null L) 

                         R 

                         (rec (cdr L) (cons (car L) R))
                     )
               ))

           (rec L nil)
       )      
)

;Here is the magic function revall
(defun revall (L)

       (mapcar #'(lambda(z)(if (atom z) z (revall z) )) (rev L)) 
)
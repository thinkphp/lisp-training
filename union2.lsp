;(union '(a b c) '(x y z))
;(A B C X Y Z)

(defun union2 (A B)

       (cond ((null A) B)

             ((member (car A) B) (union (cdr A) B))  

             (T (cons (car A) (union (cdr A) B) ))
       ) 
)

;solution 1 written recursively
(defun union* (&REST L) 

       (cond ((null L) nil)

             (T (union2 (car L) (apply #' union* (cdr L) ) ))
       ) 

)

;solution 2 written iteratively using unless

(defun union** (&REST L &AUX (R (CAR L)) )

       (dolist (i (reverse (cdr L)) R)

               (unless (setf R (union i R)) (return nil))
       )  
)
;Insersection

;recursively
(defun intersect (A B)

       (cond ((OR (null A) (null B)) nil)

             ((member (car A) B) (cons (car A) (intersect (cdr A) B) ))

             (T (intersect (cdr A) B))
       )        
)

;interatively
(defun myintersect (A B)

    (let ((R nil))

       (dolist (i A (reverse R))

          (if (mymember i B) 

              (setf R (cons i R)) 
          )    
       )

    )

)

;defined function member
(defun mymember (E M)

       (dolist (i M)

          (if (equal i E)  

              (return T)               
          ) 
       ) 
)

;(myintersect* '(a b c)  '(x y a b z) '(c d e f a b))
;(a b)
;iterative solution
(defun myintersect* (&REST L &AUX (R (car L)))

      (dolist (i (cdr L) R)

         (unless (setf R (myintersect i R)) (return nil))
      ) 
)

;(myintersect* '(a b c)  '(x y a b z) '(c d e f a b))
;(a b)
;recursive solution

(defun myintersect** (&REST L)

       (cond ((null L) 'ERROR)

             ((null (cdr L)) (car L))

             (T (myintersect (car L) (apply #' myintersect** (cdr L) ) )) 
       ) 
)

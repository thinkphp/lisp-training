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
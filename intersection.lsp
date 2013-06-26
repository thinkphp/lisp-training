;Insersection

(defun intersect (A B)

       (cond ((OR (null A) (null B)) nil)

             ((member (car A) B) (cons (car A) (intersect (cdr A) B) ))

             (T (intersect (cdr A) B))
       )        
)

(defun myintersect (A B)

    (let ((R nil))

       (dolist (i A R)

          (if (member i B) 

              (setf R (cons i R)) 
          )    
       )

    )

)
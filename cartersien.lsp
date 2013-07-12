;Product Cartesien of two or more sets

(defun cartesien (X Y)

     (let ((R))

       (dolist (I X (reverse R))

          (dolist (J Y) 

               (setf R (cons (list I J) R)) 
          )
       )
 
     )       
)

(defun allcartesien (&REST L &AUX (R (car L)))

     (dolist (i (cdr L) R)

             (unless (setf R (cartesien R i))(return nil))
     )

     (mapcar #'normalize2 R)
)

(defun normalize (L)

       (cond ((null L) nil)

             ((atom L) (list L))

             (T (mapcan #' normalize L))
       ) 
)


(defun normalize2 (L)

       (cond ((null L) nil)

             ((atom L) (list L))

             (T (append (normalize2 (car L)) (normalize2 (cdr L))))
       ) 
)
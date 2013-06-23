;member
;(member! 'a '(c v a f (x y z))
;T

;written with DOLIST
(defun member! (E L)

       (dolist (i L)

            (if (equal i E)

                (return T)  
            )
       ) 
)

;written with COND
(defun member!! (E L)

       (cond ((null L) nil)
           
             ((equal (car L) E) L) 

             (t (member!! E (cdr L)))
       )    
)

;written with DO
(defun member* (E L)

       (do ((k L (cdr k) )) ((null k))

           (if (equal E (car k)) (return T))
       )
)

;written with LOOP
(defun member** (E L)

    (let ((k L))

       (loop 
             (if (equal (car k) E) (return T))

             (setf k (cdr k))

                     (when (null k) (return nil))
       )

    )
)
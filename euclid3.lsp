;Euclid's Algorithm using the structure PROG

(defun euclid (X Y)

       (prog ()

             again 

             (if (EQUAL Y 0) 

                 (return X)
             )          

             (setf R (REM X Y))

             (setf X Y)

             (setf Y R) 

             (go again)
       )
)

;recursively
(defun euclid* (&REST L)

       (cond ((null (cdr L)) (car L))

             (T (euclid (car L) (apply #'euclid* (cdr L) )))
       )
)

;iteratively

(defun euclid** (&REST L &AUX (R (car L)))

       (dolist (i (cdr L) R)

               (unless (setf R (euclid R I))(return nil))
       )
)

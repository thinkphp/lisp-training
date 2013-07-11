;Greatest Common Divisor

;(gcommond 10 3)
;->1

(defun gcommond (X Y)

       (prog ()

           again

           (if (EQUAL X Y) 

                (RETURN X)
           )

           (if (> X Y)

               (setf X (- X Y))
           )


           (if (< X Y)

               (setf Y (- Y X))
           )

           (go again)

       )
)

;recursively
(defun gcommond* (&REST L)

       (if (null (cdr L))

           (car L) 

           (gcommond (car L) (apply #'gcommond* (cdr L)))
       )
)

;iteratively
(defun gcommond** (&REST L &AUX (R (car L)))

       (dolist (I (cdr L) R)

               (unless (setf R (gcommond I R))(return nil))
       )   
)
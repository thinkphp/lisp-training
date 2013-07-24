;Union Function of two ore more sets

;Examples:

;(myunion '(1 2 3) '(2 5 7 8))
;->(1 3 2 5 7 8)

;(myunion* '(1 2 3) '(4 5 6) '(7 8 9))
;->(1 2 3 4 5 6 7 8 9)

(defun myunion (X Y)

       (cond ((null X) Y)

             ((member (car X) Y) (union (cdr X) Y))  

             (T (cons (car X) (union (cdr X) Y)))  
       )

)

(defun myunion* (&REST L)

      (cond ((null L) 'ERROR)

            ((null (cdr L)) (car L))

            (T (myunion (car L) (apply #'myunion* (cdr L) ) ))
      )
)

(defun myunion** (&REST L &AUX (R (car L)))

       (dolist (i (cdr L) R) 

               (unless (setf R (myunion R i) )(return nil))
       )
)
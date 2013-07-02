;(diff '(a b c) '(x y z b c))
;-> (A)

(defun diff (X Y)

       (cond ((null X) nil)

             ((member (car X) Y) (diff (cdr X) Y))

             (T (cons (car X) (diff (cdr X) Y) )) 
       )
)

;(diff* '(a b c) '(1 2 3) '(x y z))
;-> (A B C)

;solution 1 using iteration
(defun diff* (&REST L &AUX (R (car L)))

             (dolist (I (cdr L) R)

                     (unless (setf R (diff R I) ) (return nil)) 

             )       
)
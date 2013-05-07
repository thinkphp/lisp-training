;to count off a list

;using mapcar
(defun countoff (L &aux (c 0))
       (mapcar #'(lambda (x)(list (setf c (+ c 1)) x) ) L) 
)

;using the iterative structure do
(defun countoff2 (L)
       (do (()) (())
               
       )
)

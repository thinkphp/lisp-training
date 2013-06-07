; Takes each element of a list and applies a function and returns the results in a list
; MAPCAR simulation
; If we want to apply the function  f(x) = 2x+1 for each element in a list:
; (mapcar2 '(1 2 3) (lambda(x)(+ 1 (* 2 x))) )
; (7 5 3)

(defun mapcar2 (L F)

       (let ((R))

            (dolist (i L (reverse R))

                 (setf R (cons (funcall F i) R))
            )
       )
)
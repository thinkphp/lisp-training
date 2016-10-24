(defun series(x)
   (reduce '+ (loop for x from 1 to x collect (expt x 1)))
)

(defun solution(x)
       (setf answer (series x))
)

(print (solution 1000))
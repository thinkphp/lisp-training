;Euler's Number Approximation with Taylor Series.
;e ~ 1 + 1/1! + 1/2! + 1/3! + 

(defun fact (N)

     (let ((p 1))

       (do ((i 1 (+ i 1))) ((= i (+ N 1)) P)

           (setf p (* p i))    
       )       

     )
)

(defun e (eps)

       (setf EPS eps)

       (setf v1 2)

       (setf v2 (+ v1 (float (/ 1 (fact 2))) ))

       (setf i 3)

       (do () ((< (if (> v1 v2) (- v1 v2) (- v2 v1)) EPS ) v2)
              
              (setf v1 v2)

              (setf v2 (+ v2 (float (/ 1 (fact i) ) ) ))

              (setf i (+ i 1))
       )  
)
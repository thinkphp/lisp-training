(defun fact (N)

     (let ((p 1))

       (do ((i 1 (+ i 1))) ((= i (+ N 1)) P)

           (setf p (* p i))    
       )       

     )
)

(DEFUN cosinus (X)

       (setf EPS 0.000001)
 
       (setf n 2)  

       (setf v1 1)

       (setf v2 (float (/ (- v1 (expt X 2)) (fact 2))) )

       (do () ((< (abs (- v1 v2)) EPS) v2)

           (setf v1 v2)  

           (setf a (* (expt -1 n) (expt X (* 2 n))) ) 

           (setf b (fact (* 2 n))) 

           (setf R (float (/ a b)) ) 

           (setf v2 (+ v2 R))

           (setf n (+ n 1))             
       )
)
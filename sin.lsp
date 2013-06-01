;Approximate the Function SIN with Series Taylor!
;sin(x) = x - x^3/3! + x^5/5! - x^7/7! + ....(-1)^n+1*x^(2n+1)/(2n+1)!;
;sin(x) = ?

(defun fact (N)

     (let ((p 1))

       (do ((i 1 (+ i 1))) ((= i (+ N 1)) P)

           (setf p (* p i))    
       )       

     )
)

(defun sinus (N)

       (setf EPS 0.0001)        

       (setf m 2)

       (setf v1 N) 

       (setf v2 (- N (float (/ (expt -1 3) (fact 3) ) ) )) 

       (do () ((< (abs (- v1 v2)) EPS) v2)

           (setf v1 v2)

           (setf numr (* (expt -1 m) (expt N (+ (* 2 M) 1)) ) )

           (setf num (fact (+ (* 2 m) 1) ))
  
           (setf v2 (+ v2 (float (/ numr num)) ))

           (setf m (+ m 1))  
       ) 
)
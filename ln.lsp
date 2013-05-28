;(ln 3)
;f->(0,R)->R
;f(x) = e^x-a
;->(e^li-a)*(e^((li+ls)/2)-a)<0

(defun ln (N)
  
   (labels ((rec (a li ls)

                (if (< (abs (- li ls)) 0.0001)

                    (float (/ (+ li ls) 2))

                 (if (< (* (- (exp li) a) (- (exp (float (/ (+ li ls) 2) ) ) a) ) 0)

                    (rec a li (float (/ (+ li ls) 2)))

                    (rec a (float (/ (+ li ls) 2)) ls) 
                  )
                )
           ))

       (cond ((< N 0) 'errorInput)
             ((= N 1) 0)
             ((= N 0) 'errorInput)
             ((< N 1) (rec N 0 (- N 10) ))
             (T (rec N 0 N))
       )
   )        
)
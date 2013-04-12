; Project Euler
; Multiple of 3 or 5
; Problem 1
; If we list all the natural numbers below 10 that are multiplier of 3 or 5, we get 3,5,6, and 9. The sum of these multiples is 23.
; Find the sum of all the multiples of 3 or 5 below 1000.

;iterative version with prog
(defun multiples(N)

      (prog ()

           (setf i 0) 

           (setf s 0) 
              
            again

            (setf i (+ i 1))

            (if (< i N) 

                (if (OR (= (REM i 3) 0) (= (REM i 5) 0) )
 
                     (setf s (+ s i))
                )

                (return s)
            )           

            (go again) 
      )
)

;iterative version with dotimes
(defun multiples2(N)
 
       (setf s 0)  

       (dotimes (I N)

          (if (OR (= (REM I 3) 0)  (= (REM I 5) 0) )

              (setf S (+ s i))
          )
       )

       S
)

;iterative version3 using loop
(defun multiples22 (N)

       (let((sum 0))
           
           (loop for i from 1 to (- N 1)     
           )  
       )    
)


;recursive version
(defun multiples3(N R)

       (if (< N 1) R

           (multiples3 (- N 1) (if (or (= (REM N 3) 0) (= (REM N 5) 0)) (+ R N) R ))
       )
)



;recursive version2
(defun multiples4(limit)
 
       (labels((rec (N S)
 
                (if (>= N limit)
                    S
                    (if (OR (zerop (REM N 3)) (zerop (REM N 5))) 
                        (rec (+ N 1) (+ S N)) 
                        (rec (+ N 1) S)
                    )  
                )  
           
              ))

         (rec 1 0)
       )    
)


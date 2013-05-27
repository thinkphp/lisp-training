;Multiplication of two numbers
;(multi 3 5)
;->15
(defun multi (a b)

       (cond ((= b 0) 0)

             (T (+ a (multi a (- b 1)) ))
       )
)

(defun multi2 (a b)

     (let ((r 0))

      (dotimes (i b r)

          (setf r (+ r a))
      ) 

     )
)


    
        
             
                  
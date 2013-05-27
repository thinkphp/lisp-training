;(sqrt 4)
;->2

(defun sqert (N)
    
     (let ((an 1))

       (dotimes (i 10 an)
 
            (setf fn (* (float (/ 1 2)) (+ an (float (/ N an) ) )))

            (setf an fn)

       )
     )
)
                  
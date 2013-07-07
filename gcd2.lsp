;Greatest common divisor

(defun gcommond (A B)

       (prog ()

             again  

             (if (equal A B)

                 (return A)                     
             )   

             (if (> A B)

                 (setf A (- A B))

                 (setf B (- B A))
             ) 

             (go again)
       )
)
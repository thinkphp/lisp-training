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

;an anlternate solution which uses COND instead of PROG
(defun gcommond2(A B)

       (cond ((equal A B) A)

             ((> A B) (gcommond2 (- A B) B))

             (T (gcommond2 A (- B A)))
       ) 
)

;recursive solution with IF
(defun gcommond3(A B)

       (if (= A B) A 

           (if (> A B) (gcommond3 (- A B) B) 

                       (gcommond3 A (- B A))
           ) 
       )
)


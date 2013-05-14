;Least Common Multiple
;using a*b = (a,b)*[a,b]

;iterative with do
(defun g-c-d(A B)

       (do ((x A) (y B)) ((equal y 0) x)

           (if (> x y) 

               (setf x (- x y))   

               (setf y (- y x))
           ) 
       )     
)

(defun l-c-m (A B)

       (setf aux (g-c-d A B))  

       (/ (* A B) aux)
)

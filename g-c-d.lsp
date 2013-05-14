;Greatest common Divisor

;iterative with do
(defun g-c-d(A B)

       (do ((x A) (y B)) ((equal y 0) x)

           (if (> x y) 

               (setf x (- x y))   

               (setf y (- y x))
           ) 
       )     
)

;recursive
(defun g-c-d-rec(A B)

       (cond ((equal B 0) A)

             ((> A B) (g-c-d-rec (- A B) B))

             (T (g-c-d-rec A (- B A)))
       )        
)


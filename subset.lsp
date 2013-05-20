;Subsets Of A Set

(defun fromN (N)

    (let ((S))

      (dotimes (i N S)

         (setf S (cons 0 S))
      ) 
    )
)

(defun summa (L)
     
     (let ((S 0))

       (dolist (i L S)

               (if (equal i 1)

                    (setf s (+ s 1))
               )
       )
     )
)

(defun writeL (L)
   
     (let ((k 0)(R))

     (dolist (i L (reverse R))

         (if (equal i 1)

         (setf R (cons (+ k 1) R))

         )

         (setf k (+ k 1))
     )
     )
)

(defun rep (L X P &aux (k 0))

       (mapcar #'(lambda(z)(setf k (+ k 1) ) (if (equal p k) x z) ) L)
)

(defun sub (N)

       (setf aux (fromN (floor N)))
       ;(setf aux '(1 0 1))

       ;(print aux)

       (prog ()
 
       again
 
       (setf prim (nth 0 aux))
       (setf prim (+ prim 1))
       (setf aux (rep aux prim 1))

       ;(print aux)


       (dolist (j aux)

       (let ((k 1))
        
        (dolist (i aux)

             (if (> i 1) (and (setf aux (rep aux 0 k)) (setf aux (rep aux (+ (nth k aux) 1) (+ k 1))) ) 

             )

             (setf k (+ k 1))
        )

       );endlet

       )


       ;aux
       
       (print (writeL (reverse aux)) )

       (if (= (summa aux) N) (return T) (go again))
       )
) 

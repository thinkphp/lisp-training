;Greatest Common Divisor

;(gcommond 10 3)
;1
;solution 1 iteratively
(defun gcommond (A B)

       (do ((i A)(j B)) ((= j 0) i)

           (if (> i j)

               (setf i (- i j))

               (setf j (- j i))
           ) 
       )      
)


;(gcommond 10 3)
;1
;solution 2 recursively with IF
(defun gcommond2 (A B)

       (if (= B 0) 

           A 
 
       (if (> A B)

           (gcommond2 (- A B) B) 

           (gcommond2 A (- B A)) 
       )

       )
)

;(gcommond 10 3)
;1
;solution 3 recursively with COND
(defun gcommond3 (A B)


        (cond ((= B 0) A)

              ((> A B) (gcommond2 (- A B) B)) 

              ((< A B) (gcommond2 A (- B A))) 
        )
)



;
;(gcommond* 10 4 2)
;->2

;solution 1 written recursively
(defun gcommond* (&REST L)

       (cond ((null L) 'Error)

             ((null (cdr L)) (car L))

             (T (gcommond (car L) (apply #'gcommond* (cdr L) ) )) 
       ) 
)


;(gcommond** 10 4 2)
;->2

;solution 2 written iteratively
(defun gcommond** (&REST L &AUX (R (car L)))

       (dolist (i (cdr L) R)

               (unless (setf R (gcommond i R)) (return nil))
       )
)


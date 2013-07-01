;solution 1 written recursively with COND
;(euclid 10 3)
;->1
(defun euclid (A B)

       (cond ((zerop B) A)

             (T (euclid B (REM A B) )) 
       )
)


;solution 2 written recursively with IF
;(euclid2 10 3)
;->1
(defun euclid2 (A B)

      (if (= B 0)

          A

          (euclid2 B (REM A B))
      )       
)


;solution 3 written iteratively
;(euclid2 10 3)
;->1
(defun euclid3 (A B)

       (do () ((zerop B) A)

           (setf R (REM A B))
      
           (setf A B)

           (setf B R) 
       )
)

;solution 4 written recursively
;(euclid* 10 4 100)
;->2

(defun euclid* (&REST L)
 
       (cond ((null (cdr L)) (car L))

             (T (euclid2 (car L) (apply #' euclid* (cdr L) ) ))
       ) 
)

;solution 5 written iteratively with unless
(defun euclid** (&REST L &AUX (R (car L)))

       (dolist (i (cdr L) R)

               (unless (setf R (euclid i R) ) (return nil))
       ) 
)




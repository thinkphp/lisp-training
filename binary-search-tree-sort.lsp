;
;    9
;   3 
;  1 7
;     8
;
;L->(9 3 1 7 8)
;
;(inordine (arbore '(9 3 1 7 8) '<))
;
;->(1 3 7 8 9)

(defun arbore (L P)

   (labels (( arb (L TREE)

             (if (null L) TREE (arb (cdr L) (insereaza (car l) TREE P)) )

           ))

       (arb L nil)
   )
)

(defun insereaza(A X P) 

       (cond ((null X) (list A nil nil))

             ((funcall p A (car X)) (list (car X) (insereaza A (cadr X) P) (caddr X)  ) )

             (T (list (car X) (cadr X) (insereaza A (caddr X) P) ))
       ) 
)

(defun inordine (TREE)

       (if (null TREE) nil (append (inordine (cadr TREE)) (list (car TREE) ) (inordine (caddr TREE)) ) ) 
)

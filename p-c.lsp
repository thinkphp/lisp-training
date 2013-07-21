;Produit Cartesien
;(cartesien '(a b c) '(1 2))
;->((a 1)(a 2)(b 1)(b 2)(c 1)(c 2))

(defun cartesien (X Y)

    (let ((R)) 
 
       (dolist (i X (reverse R))

               (dolist (j Y)

                       (setf R (cons (list i j) R))
               )
       ) 

     )
)

(defun cartesien* (&REST L &AUX (R (car L)))
       
     (dolist (i (cdr L) R)

             (unless (setf R (cartesien R i) )(return nil))
     )


     (dolist (j R)

             (princ (getAtoms j))
     )
)

(defun getAtoms(L)

       (cond ((null L) nil)
       
             ((atom L) (list L))

             (T (mapcan #'getAtoms L))
       )       
)
;Produit Cartesien of two ensembles
;AxB
;(cartesien '(a b c) '(1 2))
;->((a 1)(a 2)(b 1)(b 2)(c 1)(c 2))

;iterative solution with do
(defun cartesien (A B &aux (R nil))

       (do ((i A (cdr i))) ((null i) (reverse R))

           (do ((j B (cdr j))) ((null j))
               
                (setf R (cons (list (car i) (car j) ) R))                   
           )
       )          
)



;iterative solution with dolist
(defun cartesien2 (A B &aux R)

       (dolist (i A (reverse R))

          (dolist (j B)

               (setf R (cons (list i j) R))
          )   
       )
         
)

;(cartesien_rec '(a b c) '(1 2))
;((a 1)(a 2)(b 1)(b 2)(c 1)(c 2))
;recursive solution
(defun cartesien_rec (A B)

     (if (null A) nil   

       (append (mapcar #'(lambda(z)(list (car A) Z)) B) 

               (cartesien_rec (cdr A) B)
       ) 
     )
)

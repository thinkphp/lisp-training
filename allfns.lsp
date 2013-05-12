;(allfns '(a b) '(0 1))

(defun allfns (A B)

       (if (null (cdr A))

           (mapcar #'(lambda(z)(list (list (car A) z) ) ) B)

           (mapcan #'(lambda(x)(mapcar #'(lambda(y)(cons (list (car A) y) x) ) B))

                     (allfns (cdr A) B)
           ) 
       ) 
)

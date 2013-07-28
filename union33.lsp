;Union Function Defined and from time to time i find myself addicted to set theory
(defun union33 (X Y)

       (cond ((null X) Y)

             ((member (car X) Y) (union33 (cdr X) Y))

             (T (cons (car X) (union33 (cdr X) Y)))
       )
)

;for two elements
(defun union34 (X Y)

       (duplicates (append X Y))
)

;eliminate duplicates
(defun duplicates (L)
      
       (cond ((null L) nil)

             ((member (car L) (cdr L)) (duplicates (cdr L)))

             (T (cons (car L) (duplicates (cdr L))))
       )   
)

;for more elements
(defun union* (&REST L)

       (cond ((null L) 'ERROR)

             ((null (cdr L)) (car L))

             (T (union34 (car L) (apply #'union* (cdr L)))) 
       ) 
)
;(list2 '(a b c) '(x y z))
;->((a b c) (x y z))

;(list2* '(a b c) '(x y z) '(1 2 3))
;->((a b c) (x y z) (1 2 3))


(defun list2 (A B)

       (cons A (cons B NIL))
)

(defun list2* (&REST L) 

       (cond ((null L) nil)

             ((null (cdr L)) L)

             (T (cons (car L) (apply 'list2* (cdr L) ) )) 
       ) 
)
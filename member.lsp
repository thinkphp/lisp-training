;same the function member
;(member2 'a '(d c a b a c)
;->(A B A C)
(defun member2 (E L)
       (cond ((atom L) nil) 
             ((eq E (car L)) L)
             (T (member2 E (cdr L)))
       )
)
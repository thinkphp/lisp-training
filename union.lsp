;(union '(a b c) '(d a b))
;(c d a b)
;(union '(a b c) '(x y z))
;(a b c x y z)

(defun union2 (A B)

       (cond ((null A) B)

             ((member (car A) B) (union (cdr A) B))

             (T (cons (car A) (union (cdr A) B) ))
       )
)
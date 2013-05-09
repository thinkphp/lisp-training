;(diff '(a b c) '(x y z))
(a b c)
;(diff '(a b c d e f) '(c d))
;(a b e f)

(defun diff (A B)

       (cond ((null A) nil)

             ((member (car A) B) (diff (cdr A) B) )

             (T (cons (car A) (diff (cdr A) B) ))
       )
)
;(next 'a '(a b c d e f))
;->B

(defun next (E L)
       (cond ((atom L) nil)
             ((eq E (car L)) (cadr L))
             (T (next E (cdr L)))
       )
)
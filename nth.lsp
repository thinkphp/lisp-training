;This function returns the Nth element of the list and is non-destructive, does not change the original list.
;(nth 2 '(one two three four five)
;=> THREE
;(nteh 2 '(one two three four five)
;=> THREE

(defun nteh(n l)
 (cond ((= n 0)(car l))
    (t (nteh(- n 1)(cdr l)))
 ) 
)
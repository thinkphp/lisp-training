;Function that removes from L the element with the position P
;i.e. (myremove 2 '(a b c d e))
;->(a b d e)

(defun myremove (P L)

       (cond ((null L) nil)

             ((zerop P) (cdr L))

             (T (cons (car L) (myremove (- P 1) (cdr L) ) ))
       )
)
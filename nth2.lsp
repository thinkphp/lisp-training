;(nth2 2 '(a b c))
;->B

(defun nth2(p L)

       (cond ((equal p 0)(car L))
       
             (T (nth2 (- p 1) (cdr L)))
       ) 
)

(defun nth3(p L)

       (if (equal p 0) 
                       (car L)
       
                       (nth2 (- p 1) (cdr L))
       ) 
)
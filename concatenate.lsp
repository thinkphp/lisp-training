;concatenate List
;(concatenate 'string "karl" " " "Marx")
;(concat '(a b c))
;->"abc"

(defun concat (L)

       (if (null L)

           (concatenate 'string (car L) )

           (concat (cdr L))
       )    
)
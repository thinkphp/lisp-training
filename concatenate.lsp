;concatenate List
;(concatenate 'string "karl" " " "Marx")

(defun concat (L)

       (if (null L)

           (concatenate 'string (car L)

                                (concat (cdr L))

           )
       )    
)
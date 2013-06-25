;concatenation List

(defun concat (L)

       (if (null L)

           (concatenate 'string (car L)

                                (concat (cdr L))

           )
       )    
)
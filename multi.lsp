;(multi* 1 2 3 4)
; 24

(defun multi (A B)

       (let ((Result 0))

            (dotimes (i B Result)

                 (setf Result (+ A Result))
            )
       )
)

(defun multi* (&REST L)

       (cond ((null (cdr L)) (car L))

             (T (multi (car L) (apply 'multi* (cdr L) )))
       )  
)
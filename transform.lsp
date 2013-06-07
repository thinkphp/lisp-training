; Takes each element of a list and applies a function and returns the results in a list
; (transform '(1 2 3 4 5) '10)
; -> (11 12 13 14 15)

'written with the structure DOLIST
(defun transform (L A)

       (let ((R))

            (dolist (i L (reverse R))

                  (setf R (cons (+ i A) R))
            )  
       )        
)
; Takes each element of a list and applies a function and returns the results in a list
; (transform '(1 2 3 4 5) '10)
; -> (11 12 13 14 15)

;written recursively
(defun transform (L A)

       (cond ((null L) nil)

             (T (cons (+ A (car L)) (transform (cdr L) A) ))
       )
)
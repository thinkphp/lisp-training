; MAPCAR
; Takes each element of a list and  applies a function that returns the results in a list.
; Let's apply f(x) = 2x+1 to each element in the list.
; (mapcar2 '(1 2 3) (lambda(x)(+ (* 2 x) 1)))
; => (3 5 7)

;MAPCAR written recursively
(defun mapcar2 (L P)

       (cond ((null L) nil)

             (T (cons (funcall P (car L)) (mapcar2 (cdr L) P) ))
       )           
)
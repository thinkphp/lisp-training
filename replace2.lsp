;Replace an element in the list with mapcar and lambda
;(rep '(1 2 3 4 5) 101 2)
;->(1 101 3 4 5)
;(rep '(1 2 3 4 5) 101 1)
;->(101 2 3 4 5)
;(rep '(1 2 3 4 5) 101 5)
;->(1 2 3 4 101)


(defun rep (L X P &aux (k 0))

       (mapcar #'(lambda(z)(setf k (+ k 1) ) (if (equal p k) x z) ) L)
)
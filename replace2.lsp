;Replace an element in the list with mapcar and lambda

(defun rep (L X P &aux (k 0))

       (mapcar #'(lambda(z)(setf k (+ k 1) ) (if (equal p k) x z) ) L)
)
(defun fill2 (L X P &aux (k 0))

       (mapcar #'(lambda(z)(setf k (+ k 1) ) (if (equal p k) x z) ) L)
)
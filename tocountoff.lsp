;to count off a list

;solution using mapcar
(defun countoff (L &aux (c 0))

       (mapcar #'(lambda (x)(list (setf c (+ c 1)) x) ) L) 
)

;solution using do
(defun countoff2 (L &aux Result)

       (do ((n 1 (+ n 1))(I L (cdr I))) ((null I) (reverse Result))

            (setf Result (cons (list n (car I)) Result))
       )
)

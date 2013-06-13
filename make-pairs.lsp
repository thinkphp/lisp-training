;Make Pairs
;(make-pairs '(a b c))
;((a 1)(b 2)(c 3))


;using MAPCAR
(defun make-pairs (L)

    (let ((k 0))
       (mapcar #'(lambda(z)(list z (setf k (+ k 1)) )) L)
    )
)

;using DOLIST

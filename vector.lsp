;Operations with vectors
;1.addition
;2.multiplication

(defun add-vector (v1 v2)

       (mapcar #'(lambda(x y)(+ X Y)) v1 v2)
)

(defun add-vector2 (v1 v2)

       (mapcar #'+ v1 v2)
)

(defun mult-vector (v1 v2)

       (mapcar #'(lambda(x y)(* X Y)) v1 v2)
)

(defun mult-vector2 (v1 v2)

       (mapcar #'* v1 v2)
)
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
(defun make-pairs2 (L)

    (let ((R)(k 0))

         (dolist (i L (reverse R))

                  (setf R (cons (list i (setf k (+ k 1))) R))
         )
    )
)

(defun make-pairs3 (L)

       (labels (( rec (L k)

                       (cond ((null L) nil)

                             (T (cons (+ k 1) (rec (cdr L) (+ k 1)) ))
                       )   
               ))

          (rec L 0)
       )
)
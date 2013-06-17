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


;using auxiliar function 'mycount'
;(make_pairs4 '(a b c))
;->(1 2 3)

(defun make_pairs4 (L)

       (mycount L 0)
)

(defun mycount (L k)

       (cond ((null L) nil) 

             (T (cons (+ k 1) (mycount (cdr L) (+ k 1) ) ))
       )
)

;(associate '(a b c) '(1 2 3))
;->((a 1)(b 2)(c 3))

(defun associate (L1 L2)

       (cond ((null L1) nil) 

             (T (cons (list (car L1) (car L2)) (associate (cdr L1) (cdr L2) ) ))
       ) 
)
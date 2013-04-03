;Finding the minimum element in the list
;[1]>(min2 10 9 1 7 8) => 1

;solution 1 with if
(defun min1(x y) ;arg1 x and arg2 y
 (if (< x y) x y)
)

;solution 2 with cond
(defun min2(x y)
 (cond ((< x y) x)
       (t y)
 )
)

;solution3 function with n arguments
(defun min3(&rest L)
   (cond ((null L) "ERROR")

         ((null (cdr L))(car L))

         (t (min1 (car L)(apply 'min (cdr L)) ))
   )
)

;Finding the maximum element in the list
;[1]>(max 1 2 3 55 7 8 9)
;=>55

; solution 1 with if
(defun max1(x y)

 (if (> x y)
     x
     y
  ) 
)

; solution 2 with cond
(defun max2(x y)
 (cond ((> x y) x)
       (T y)
 )
)

; solution 3 (max3 1 2 7 3 5) -> 7

(defun max3(&rest L)
 (cond ((null L) "E R R O R")
       ((null (cdr L)) (car L)) 
       (T (max (car L) (apply 'max3 (cdr L) ) ))
 )
)
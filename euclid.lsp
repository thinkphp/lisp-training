;Greatest Common Divisor 
;(euclid 10 3)
;=>1

(defun euclid (A B) 
 (cond ((zerop B) A) 
       (T (euclid B (REM A B))) 
 )
)

;(euclid 10 3 5 7 20 100)

(defun euclids (&rest L)
  (cond ((NULL L) "E R R O R")
        ((NULL (cdr L)) (CAR L))
        (T (euclid (CAR L) (apply 'euclids (cdr L)) ))
  )
)
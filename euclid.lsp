;Greatest Common Divisor 
;(euclid 10 3) -> 1
;(euclid 10 20 100) -> 10



; iteratively using do
; using setf or psetf
; setf pair => pair (place newplace)
; (setf place newplace) - expands into an update that stores the result of evaluating newvalue 
;                         into the location referred to by place.
(defun euclid1(a b)
  (do ()
      ((zerop b) a)
      (psetf a b b (mod a b));
  )
)


; recursively with cond
(defun euclid (A B) 
 (cond ((zerop B) A) 
       (T (euclid B (REM A B))) 
 )
)

; recursively with if

(defun euclid2(A B)
   (if (zerop B) 
       A
       (euclid2 B (MOD A B))
   ) 
)


; Bonus
; recursively for n elements
; (euclid 10 3 5 7 20 100)
(defun euclids (&rest L)
  (cond ((NULL L) "E R R O R")
        ((NULL (cdr L)) (CAR L))
        (T (euclid (CAR L) (apply 'euclids (cdr L)) ))
  )
)

; with prog
(defun gcd2(X Y)
 (prog ()
       again
       (if (= Y 0) (return X))
       (psetf X Y Y (REM X Y))
       (go again)
 )  
)
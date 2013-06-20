;How much is the fish
;(deep '(a b))
;-> 1

;(deep '(a b (x y (1 2 3)) ))
;-> 3


(defun deep (L)

            (cond ((atom L) 0)

                  (T (max (+ 1 (deep (car L)) ) (deep (cdr L) )))
            )         
)
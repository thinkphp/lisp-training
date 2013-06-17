;(myreverse '(1 2 3))
;->(3 2 1)

;reverse only superficial level
(defun myreverse (L)

       (if (null L) nil 

           (append (myreverse (cdr L) ) (cons (car L) nil))
       )
)

;(reverseall '(1 2 (a b c) 3))
;(3 (c b a) 2 1)

;reverse all levels, not only superficial level
(defun reverseall (L)

       (mapcar #'(lambda(E)(if (atom E) E (reverseall E) )) (myreverse L))         
)
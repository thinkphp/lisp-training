;(reverseall '(1 2 (a b c) 3))
;(3 (c b a) 2 1)

;reverse all levels, not only superficial level
(defun reverseall (L)

       (mapcar #'(lambda(E)(if (atom E) E (reverseall E) )) (reverse L))         
)
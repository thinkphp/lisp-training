;Implode function
;Probably the best approximations of these are
;(implode '(a d r i a n))
;->ADRIAN

(defun implode (L)

     (read-from-string (coerce (mapcar #'character L) 'string))
)
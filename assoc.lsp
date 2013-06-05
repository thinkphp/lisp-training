;Association Lists
;An association list, or a-list, is a data strucure used very frequently in Lisp. 
;An a-list is a list of pairs; each pair is an association.

;(asssoc 'a '((b 1)(a 2)(c 3)(d 9)(o 2)))
;->(a 2)

(defun asssoc (E L)

       (cond ((atom L) nil)

             ((equal (caar L) E) (car L))

             (T (asssoc E (cdr L)) )
       )
)
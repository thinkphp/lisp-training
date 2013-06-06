;Association Lists
;An association list, or a-list, is a data strucure used very frequently in Lisp. 
;An a-list is a list of pairs; each pair is an association.

;(asssoc 'd '((1 a)(2 b)(3 c)(9 d)(5 e)))
;->(9 d) 

(defun rasssoc (E L)

       (cond ((atom L) nil)

             ((equal (cadr L) E) (car L))

             (T (rasssoc E (cdr L)) )
       )
)
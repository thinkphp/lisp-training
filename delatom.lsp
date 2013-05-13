;Remove all occurences in the list for a given atom.
;(delatom a '(a b c (d a e) a m n)
;(b c (d e) m n)

(defun delatom (X L)
       (cond ((atom L) L)
             ((equal X (car l)) (delatom X (cdr L)))
             (T (cons (delatom X (car L)) (delatom X (cdr L) ) ))
       ) 
)
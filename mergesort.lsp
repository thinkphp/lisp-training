;mergesort
;(merged '(2 4 6) '(3 5 7) -> 2 3 4 6 7
;(mergesort '(9 8 7 6 5 4 3 2 1 0) '<) -> 0 1 2 3 4 5 6 7 8 9 
(defun merged (X Y P)
       (cond ((NULL X) Y)
             ((NULL Y) X)
             ((funcall P (car X) (car Y) ) (cons (car X) (merged (cdr X) Y P) ) )
             (T (cons (car Y)(merged (cdr Y) X P ) ))
       )  
)

(defun mergesort (L P)
       (cond ((null (cdr L)) L)
             (T (merged (mergesort (prima L) P) (mergesort (seconda L) P) P))
       )
)

(defun prima (L)
       (let ((N (/ (length L) 2)))
              (subseq L 0 (floor N))
       ) 
)

(defun secunda (L)
       (let ((N (/ (length L) 2)))
              (subseq L (floor N))
       ) 
)
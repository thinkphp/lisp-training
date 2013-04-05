;reverse a list with recursion on queue
(defun rev(L R)
   (cond ((null L) R)
         (T (rev (cdr L) (cons (car L) R) ) )
   )    
)
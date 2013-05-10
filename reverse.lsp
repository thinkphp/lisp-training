;reverse a list with recursion on queue

;recursive solution
(defun rev(L R)

   (cond ((null L) R)

         (T (rev (cdr L) (cons (car L) R) ) )
   )    
)
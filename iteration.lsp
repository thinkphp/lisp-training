; Introducing Iteration
; Lisp has several ways to do iteration. In this section
; we'll look at the most common looping constructs.

(let ((n 0))
     (loop (when (> n 10) (return) )
           (print n) (prin1 (* n n) )
           (incf n)
     )
)

(dotimes (n 11)
         (print n) (prin1 (* n n)) 
)

; syntax
; (do (var init pas) (test form) [body])
(defun doit()
 (do ((z '(a b c) (cdr z) ) ) ((null z) 'Over)
     (print (car z))
 )
)
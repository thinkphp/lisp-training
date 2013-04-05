;(length2 '(22 11 99 33 55) 0)
;[0]-> 5
;TEST
;[1]>(length '(22 11 99 33 55))
;[2]>->5
;solves it with recursion on queue
(defun length2(L R)
     (cond ((null L) R)
           (T (length2 (cdr L) (+ R 1)))  
     )
)

;solves it recursively
(defun length3(L)
   (cond ((ATOM L) 0)
         (T (+ 1 (length3 (cdr L) ) )) 
   )
)

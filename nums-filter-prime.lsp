; Problem 5
; Write an expression using nums, filter, and prime which 
; is the list of prime numbers in the range 1..100
; (filter (nums 1 100) #'prime)
; -> (2 3 5 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)

(defun forall (L P)

   (if (null L) 
        T 
       (and (funcall P (cAR L) ) (forall (CDR L) P))
   ) 
)

(defun nums(start stop)

       (setf L nil)
 
       (loop ( when(> start stop) (return (reverse L)) )

             (setf L (cons start L) )

             (incf start)
       )
)

(defun filter (L P)

  (if (null L) '()

       (let (
             (the-rest (filter (CDR L) P))
            )
 
          (if (funcall P (CAR L) ) (cons (CAR L) the-rest) the-rest ) 
       )
   )
)



;Determines if a number is prime or not!
;Run (prime 223) -> (PRIME)
;Run (prime 20) -> (NOT-PRIME)

(defun prime(N)
   ;body function
   (setf flag T) 
   (dotimes(i (/ N 2))
       (if (> I 1) ( if (zerop (REM N I) ) (setf flag nil)  ) )
   ) 
   (if (null flag) (format t "NOT-PRIME") (format t "PRIME") )
)


(defun sample(str)
    (with-open-file (outfile "foo" :direction :output)
    (prin1 str outfile))
)
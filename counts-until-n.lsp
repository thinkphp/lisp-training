;Counts until N

(defun start ()

       (princ "Enter a number, n = ") 

       (setq N (read))

       (counts-until-N N)
)

(defun counts-until-N (N)

       (dotimes (i N 'end)

            (print (+ i 1))
       ) 
)
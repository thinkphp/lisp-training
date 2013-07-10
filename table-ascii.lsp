(defun table-ascii ()

       (setf ALPH "abcdefghijklmnopqrstuwxyz")

       (setf ALPH2 "ABCDEFGHIJKLMNOPQRSTUWXTZ")

       (setf len (length ALPH))

       (dotimes (i len)

          (print (string (char alph i)))

          (princ " --> (code = ") 

          (princ (char-code (char alph i)))

          (princ ")")
   
       )

       (print "---")

       (setf len2 (length ALPH2))

       (dotimes (i len2)

          (print (string (char alph2 i)))

          (princ " --> (code = ") 

          (princ (char-code (char alph2 i)))

          (princ ")")
   
       )

)
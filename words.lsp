;Random generation of words
;(gen 5)
->"mbxtd"
;(random-letter)
;->"y"
;(random-letter)
;->"p"
;(random-letter)
;->"b"

(defun gen (N)

     (let ((R ""))

       (dotimes (i N R)

           (setf R (concatenate 'string R (random-letter) ))     
       )
    )
)

(defun random-letter()

       (string (code-char (+ 97 (random 26))))
)
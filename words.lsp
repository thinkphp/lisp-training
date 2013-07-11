;Random generation of words
;(gen 5)
->"mbxtd"
;(random-letter)
;->"y"
;(random-letter)
;->"p"
;(random-letter)
;->"b"

;function generate using dotimes and concatenate
(defun gen (N)

     (let ((R ""))

       (dotimes (i N R)

           (setf R (concatenate 'string R (random-letter) ))     
       )
    )
)

;English alphabet has 26 letters
;get a random letter
(defun random-letter()

       (string (code-char (+ 97 (random 26))))
)
(defun makesum (n &aux (s 0))
(dotimes(i (+ n 1) s)
     (setf s (+ i s))
))
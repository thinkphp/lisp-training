(defun makesum (n &aux (s 0))
(dotimes(i (+ n 1) s)
     (setf s (+ i s))
))

(defun summa(N)
   (prog ((S 0)(i 0))
          AGAIN
          (if (= i N) (return S))
          (setf i (+ i 1) s (+ i S))
          (go AGAIN)
   )
)
;(pow 2 3)
(defun pow(a b)
       (setf p 1)
       (prog() 
            again
            (if (<= b 0) (return p)) 
            (setf p (* a p))
            (setf b (- b 1))
            (go again)  
       )        
)

;(pow2 2 10)
;->1024
(defun pow2 (x y)

       (let ((p 1))

            (do ((i 1 (+ i 1))) ((> i y) p)

                (setf p (* p x))
            ) 
       ) 
)
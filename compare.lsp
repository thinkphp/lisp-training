;compare factorial written recursively with factorial written iteratively with prog
;i.e. 52!

;recursive
(defun factorial (n) 
       (if (= n 1) 
           1 
           (* n (factorial (- n 1)))
       )
)

;iterative
(defun factorial2 (n)
       (prog ((p 1)(i 1))
             again  
             (setf p (* p i))
             (setf i (+ i 1))
             (if (> i n) (return p))
             (go again)
       ) 
)

;define a list and invoke factorial for each element
(defun allfact (L)
       (mapcar #'(lambda (x)(factorial2 x)) L)
)
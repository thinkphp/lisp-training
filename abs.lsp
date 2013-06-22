;ABS
;(abs2 -2)
;2
;(abs2 0)
;->0
;(abs2 2)
;->2

(defun abs2 (N)

       (cond ((= N 0) 0)
             ((< N 0) (- N))
             ((> N 0) N) 
       )
)
;fibonacci 0 1 1 2 3 5 8 ...
(defun fib(N)
  (cond ((= N 1) 1)
        ((= N 2) 1) 
        (t (+ (fib (- N 1)) (fib (- N 2) ) )) 
  )
)
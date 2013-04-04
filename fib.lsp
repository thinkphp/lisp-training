; Compute the N'th Fibonacci number
; Fibonacci 1 1 2 3 5 8 ...

;recursive using if

(defun fib(N)
 (if (OR (zerop N) (= N 1)) 
      1 
     (+ (fib (- N 1)) (fib (- N 2)) )
 )
)

;recursive using cond

(defun fib2(N)
 (cond ((= N 0) 1)
       ((= N 1) 1) 
       (T (+ (fib (- N 1)) (fib (- N 2))) )
 )
)

;Iterative Construcs


; Project Euler
; Power digit sum
; Problem 16
; 2^15 = 32768 and the sum of its digits is 3+2+7+6+8=26
; What is the sum of the digits of the number 2^1000?
; Answer: 1366


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

(defun sumdigits(N R)
       (if (zerop N)(print R)
           (rec (truncate N 10) (+ (MOD N 10) R))
       )
)
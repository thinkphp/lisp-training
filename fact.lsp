;iterative
(defun factorial (n &aux (res 1))

(dotimes (i n res)

         (setf res (* res (+ 1 i)))
)) 

;recursive
(defun fact (n)

(cond ((= n 0) 1)
     
      (t (* n (fact (- n 1))))
))

(defun fact2 (n)
     (if (< n 2)
         1
      (* n (fact2 (- n 1)))
))

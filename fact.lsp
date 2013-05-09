;iterative using dotimes
(defun factorial (n &aux (res 1))

(dotimes (i n res)

         (setf res (* res (+ 1 i)))
)) 

;recursive using cond
(defun fact (n)

(cond ((= n 0) 1)
     
      (t (* n (fact (- n 1))))
))

;recursive using if
(defun fact2 (n)

     (if (< n 2)

         1

      (* n (fact2 (- n 1)))
))

;using R collector variable
(defun factorial(N R)

    (cond ((= N 0) R)

          (T (factorial (- N 1) (* N R)))
    )
)

;iterative using prog with go, label and return
(defun f(n)

  (prog ((i 0)(f 1))

       hello

       (setf i (+ i 1) f (* f i))

       (if (<= n i) (return f))

       (go hello)
  )
)
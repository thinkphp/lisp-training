; Compute the N'th Fibonacci number
; Fibonacci 1 1 2 3 5 8 ...
            0 1 2 3 4 5


;recursive using if
(defun fib0(N)
 (if (OR (zerop N) (= N 1)) 
      1 
     (+ (fib0 (- N 1)) (fib0 (- N 2)) )
 )
)


;recursive using cond
(defun fib1(N)
 (cond ((= N 0) 1)
       ((= N 1) 1) 
       (T (+ (fib1 (- N 1)) (fib1 (- N 2))) )
 )
)

;Iteratively with loop
(defun fib2(N)
    
    (let ((f1 0)(f2 1)(i 0))

         (loop (if (= N i) (return-from fib2 f2) )
        
               (psetf f1 f2 f2 (+ f1 f2) i (+ i 1))                                        
         ) 
    )
)

; Iteratively with do
; do is tricky, but powerful
(defun fib3 (N)
  (do ((f1 0 f2) (f2 1 (+ f2 f1)) (i 0 (+ i 1))) ((= i n) f2)
  ) 
)

; 1 2 3 5 8 13 21
(defun fibonacci (limit)

  (labels ((rec (st nd s)

           (if (= s limit) st (rec nd (+ st nd) (+ s 1) ) ))
  )

  (rec 1 2 0)
))
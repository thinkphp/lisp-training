;Algorithm Sorting BubbleSort
;N=3 
;<<Bubble Sort for 3 numbers>>
;Enter the numbers
;3
;2
;1
;Output:
;1
;2
;3

(defun bubble (n)

       (format t "<<Bubble Sort for ~D numbers>> -> ~&" n)

       (bubbleread n) 

       (do ((i 0 (+ i 1))) ((= i (- n 1)))

         (do ((j 0 (+ j 1))) ((= j (- (- n i) 1)))
              
             (if (> (aref arr j) (aref arr (+ j 1) ) )

                 (swap j (+ j 1)) 
             )
                           
         )
       ) 
      
       (bubblewrite n)
)

(defun bubbleread(n)

       (setf arr (make-array n))

       (format t "Enter the numbers ~&")

       (dotimes (x n t)

           (setf (aref arr x) (read))
       ) 
)

(defun bubblewrite(n)

       (dotimes (x n t)

           (print (aref arr x))
       ) 
)

(defun swap(x y)

       (setf temp (aref arr x)) 

       (setf (aref arr x) (aref arr y)) 

       (setf (aref arr y) temp) 
)
(defun subseq2 (L S &optional S2)

  (let ((R));R => result
        
       (if S2

       (do ((I L (cdr I)) (k 0 (+ k 1) )) ((or (null I) (>= k S2)) (reverse R))

            (if (>= k S) (setf R (cons (car I) R)) )
       )

       (do ((I L (cdr I)) (k 0 (+ k 1) )) ((null I) (reverse R))

            (if (>= k S) (setf R (cons (car I) R)) )
       )

       )
  )   
)
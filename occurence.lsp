;The number of occurences in the list!
;(counter 1 '(1 1 2 1 2 2 3 5 7 8)) 
;->3

;solution 1 recursive
(defun counter(E L)

       (cond ((null L) 0)

             ((equal E (car L)) (+ 1 (counter E (cdr L) ) )) 

             (T (counter E (cdr L)))
       )
)

;solution 2 iterative with dolist
(defun counter2(E L &aux (s 0))

       (dolist (i L s)

            (if (equal i E) (setf s (+ 1 s) ))   
       )
)

;solution 3 iterative with do
(defun counter3(E L &aux (s 0))

       (do ((I L (cdr I))) ((null I) s)
   
               (if (equal E (car I)) (setf s (+ 1 s)) ) 
       )   
)

;solution 4 with prog
(defun counter4 (E L)

       (prog((s 0))

             again

             (cond ((null L) (return s))

                   ((equal E (car L)) (setf s (+ 1 s))) 
             )  

             (setf L (cdr L))

             (go again)
       )  
)

;solution 5 with mapcar and dolist
(defun counter5 (E L)

       (let ((s 0)) 

       (dolist (i (MAPCAR #'(lambda (X) (equal E X)) L) s)

               (if (equal T i) (setf s (+ 1 s)) )
       )
       )
)

;solution 6 with mapcar and length

(defun len(L)
       (let ((s 0))
            (dolist (i L s)
                    (if (equal i T) (setf s (+ 1 s)))
            ) 
       )
)
(defun occurence (E L)
       (len (MAPCAR #'(lambda (X) (equal E X)) L))
)
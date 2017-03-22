(defun gdcommon1(a b)

       (if (= a b) a

           (if (> a b) (gdcommon1 (- a b) b)

                       (gdcommon1 a (- b a))  
           )
       )
 
)

(defun gdcommon2(a b)

       (if (equal a b) a

           (if (> a b) (gdcommon2 (- a b) b)

                       (gdcommon2 a (- b a))  
           )
       )
 
)

(defun gdcommon3(a b)

       (cond ((equal a b) a)

             ((> a b) (gdcommon3 (- a b) b) )

             ((< a b) (gdcommon3 a (- b a)) )

       ) 
)

(defun gdcommon4(a b)

       (if (= b 0) a

            (gdcommon4 b (mod a b))

       ) 
)


(defun gdcommon5(a b)

       (cond ((equal a b) a)

             ((> a b) (gdcommon5 (- a b) b) )

             (T (gdcommon5 a (- b a)) )

       ) 
)

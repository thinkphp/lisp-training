;Tree Traversal
;     ---------> Depth-first   traversal
;     ---------> Breadth-first traversal
;    
;       R
;    U V Y W
;   S   X Z
;       

;Graph Representation
(setf R '(U V Y W))
(setf U '(S))
(setf Y '(X Z))
(setf V nil)
(setf W nil)
(setf S nil)
(setf X nil)
(setf Z nil)

;Depth-first Traversal
(defun depth-first (root)
       (cond ((equal (eval root) nil) (list root))
             (T (cons root (mapcan #'depth-first (eval root) ) ))
       )
)


;Breadth-first Traversal
(defun breadth-first (root)

)
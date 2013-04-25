;Binary Tree Traversal Inorder
;
;L -> (A (B (C nil nil) (D nil nil)) (E nil nil))
;
;(inorder L)
;->(C B D A E)

;traversal inorder
(defun inorder(L)
       (if (null L) nil
           (append (inorder (cadr L) ) (cons (car L) (inorder (caddr L) )))
       )         
)
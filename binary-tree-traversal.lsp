;Binary Tree Traversal
;            A
;           / \
;          B   E
;         / \
;        C   D 
;
;L -> (A (B (C nil nil) (D nil nil)) (E nil nil))
;
;(inorder L)
;->(C B D A E)
;
;(preorder L)
;->(A B C D E)
;
;(postorder L)
;->(C D B E A)

;traversal inorder
(defun inorder(L)
       (if (null L) nil
           (append (inorder (cadr L) ) (cons (car L) (inorder (caddr L) )))
       )
)

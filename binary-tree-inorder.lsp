;Binary Tree Traversal
;            A
;           / \
;          B   G
;         / \  /
;        C   D H
;             
;
;L ->(A (B (c nil nil) (D nil nil)) (G (H nil nil) nil) )
;(inorder L)
;->(C B D A H G)

;solution with cons
(defun inorder (L)
       (if (null L) nil (append (inorder (CADR L)) (cons (CAR L) (inorder (CADDR L)) ) ) )
)

;solution with list
(defun inorder2 (L)
       (if (null L) nil (append (inorder (CADR L) ) (list (CAR L)) (inorder (CADDR L)) ))
)


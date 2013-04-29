;Binary Tree Traversal Preorder
;            A
;           / \
;          B   G
;         / \  /
;        C   D H
;             
;
;L ->(A (B (c nil nil) (D nil nil)) (G (H nil nil) nil) )



;solution 1 with cons
;(preorder '(A (B (c nil nil) (D nil nil)) (G (H nil nil) nil) ) )
;->(A B C D G H)
(defun preorder (L)

       (if (null L) nil (append (cons (car L) (preorder (cadr L)) ) (preorder (caddr L) ) ) )
)


;solution 2 with list
;(preorder2 '(A (B (c nil nil) (D nil nil)) (G (H nil nil) nil) ) )
;->(A B C D G H)
(defun preorder2 (L)

       (if (null L) nil (append (list (car L)) (preorder2 (cadr L)) (preorder2 (caddr L)) ) )
)

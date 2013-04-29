;Binary Tree Traversal Postorder
;            A
;           / \
;          B   G
;         / \  /
;        C   D H
             



;solution with list
;L ->(A (B (c nil nil) (D nil nil)) (G (H nil nil) nil) )
;(postorder L)
;->(C D B H G A)

(defun postorder (L)

       (if (null L) nil (append (postorder (CADR L) ) (postorder (CADDR L) ) (list (car L)) ))
)

;Swapping two elements in the list
;(swap '(1 2 3 4 5 6 7 8) 0 2) -> (3 2 1 4 5 6 7 8)
(defun swap(L a b)
 (rotatef (elt L a) (elt L b)) L
) 
;(load "bubble.lsp")
;(bubble '(5 4 3 2 1) '<)
;->(1 2 3 4 5)
;(bubble '("statescu","adrian","dumitru") 'String<)
;->("adrian","dumitru","statescu")

(defun bubble(L P)

   (prog (flag (i 0) X Y (LUNG (- (LENGTH L) 1) ) )

        start
        (setf i 0)
        (setf flag T)

        one
        (princ L)(princ i)(princ flag) ;i = 3 ; 3 2 1 4 5

        (setf X (nth i L) )

        (setf Y (nth (+ i 1) L) )

        (cond ((OR (equal x y) (funcall p x y)) (setf i (+ i 1)) (if (< I LUNG) (go one) (if flag (go fine) (go start) ) ) ) 

              (t (rotatef (elt L i) (elt L (+ i 1) ) ) (and (setf i (+ i 1)) (setf flag nil) ) (if (< i LUNG) (go one) (go fine) ) )
        )

        fine
        (if flag (return L) (go start))
   )
)

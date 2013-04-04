;Solves an ecuation of degree 2
;ax + b = 0

(defun start()
 (princ "Ecuation of degree 1") (terpri)
 (princ "Input a, b: ") (terpri)
 (princ "a=") (setq a (read))
 (princ "b=") (setq b (read))
 (princ "x=")
 (calcul)
)

(defun calcul()
 (if (<= a 0) "no root: a<0" (list (x)) ) 
)

(defun x()
(- (/ b a) )
)

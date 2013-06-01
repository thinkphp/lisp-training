;(load "pi.lsp")
;(p 0.00001)
;3.141596
;1 - 1/3 + 1/5 - 1/7 + 1/9 - ...

(defun p (EPS)

    (setf eps EPS)

    (setf v1 1)

    (setf v2 (- 1 (float (/ 1 3)) ))

    (setf i 5)

    (setf sign 1)

    (do () ((< (* 4 (if(> v1 v2)(- v1 v2)(- v2 v1)) ) eps) (* 4 v2))

        (setf v1 v2)

        (setf f (* sign (float (/ 1 i) ) ))

        (setf v2 (+ v2 f))

        (setf sign (* (- 1) sign))
 
        (setf i (+ i 2)) 
    )   
)
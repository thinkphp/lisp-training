;EQUAL
;(equal2 '(a b c) '(a b c))
;->T

;(equal2 '(a b c) '(a b d))
;->nil

(defun equal2 (X Y)

       (cond ((AND (atom X) (atom Y)) (eq X Y))

             ((OR (atom X) (atom Y)) nil)

             ((equal2 (car X) (car Y)) (equal2 (cdr X) (cdr Y) ))
            
       )
)
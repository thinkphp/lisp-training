;Explode a String
;This function transforms a symbolic atom in a List!
;(explode 'adrian)
;->(A D R I A N)

(defun explode (L)

       (let* ((S (STRING L)) (N (- (LENGTH S) 1)) R)
 
             (do ((i N (- i 1)))((<= i -1) R)
       
                 (setf R (cons (intern (string (char S i)) ) R) )
              )
       )
)
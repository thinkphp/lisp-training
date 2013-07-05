;Explode a String
;This function transforms a symbolic atom in a List!
;(explode 'adrian)
;->(A D R I A N)

;a definition that uses the structure DO and LET
(defun explode (obj)

       (let* ((S (STRING obj)) (N (- (LENGTH obj) 1)) R)
 
             (do ((i N (- i 1)))((<= i -1) R)
       
                 (setf R (cons (intern (string (char S i)) ) R) )
              )
       )
)

;an alternate definition of Explode which uses MAP instead of DO LET

(defun explode (obj)

       (map 'list #'(lambda(ch)(intern (string ch))) 

            (prin1-to-string obj)
       )   
)

;reference http://www.cs.cmu.edu/Groups/AI/html/faqs/lang/lisp/part2/faq-doc-3.html
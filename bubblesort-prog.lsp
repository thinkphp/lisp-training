(defun bubble(L P)
   (prog (NOU I AMTRECUT (LUNG (- (LENGTH L) 1)) X Y)

        again
        (setf I 0 AMTRECUT nil NOU NIL)

        good
        (setf X (NTH I L))

        bad
        (setf Y (NTH (+ I 1) L))

        (cond ((OR (EQUAL X Y) (FUNCALL P X Y)) (setf NOU (CONS X NOU) I (+ I 1) ) (if (< I LUNG) (go good) ( and (setf NOU (CONS Y NOU)) (GO finish) ) ) )
              (T (setf NOU (CONS Y NOU) AMTRECUT T I (+ I 1)) (if(< I LUNG) (go bad) (and (setf NOU (CONS X NOU))(go finish)  ) ) )
        )

        finish
        (if AMTRECUT (and (setf L (REVERSE NOU)) (go again) ) (return (REVERSE NOU)))         
   )
)
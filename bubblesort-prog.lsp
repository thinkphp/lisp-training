(defun bubble(L P)
   (prog (NOU I AMTRECUT (LUNG (- (LENGTH L) 1)) X Y)

        again
        (setf I 0 AMTRECUT nil NOU NIL)

        bine
        (setf X (NTH I L))

        rau     
        (setf Y (NTH (+ I 1) L))

        (cond ((OR (EQUAL X Y) (FUNCALL P X Y)) (setf NOU (CONS X NOU) I (+ I 1) ) (if (< I LUNG) (go bine) ( and (setf NOU (CONS Y NOU)) (GO FINAL) ) ) )
              (T (setf NOU (CONS Y NOU) AMTRECUT T I (+ I 1)) (if(< I LUNG) (go rau) (and (setf NOU (CONS X NOU))(go FINAL)  ) ) )
        )

        final
        (if AMTRECUT (and (setf L (REVERSE NOU)) (go again) ) (return (REVERSE NOU)))         
   )
)
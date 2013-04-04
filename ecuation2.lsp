;Solves an ecuation of degree 2
;ax^2 + bx + c = 0
;check it out: x^2+2x-10 => a=1; b=-3; c=-10
;=> (-2 5)

(defun start ()
(princ "Ecuation of degree 2") (terpri)
(princ "Input a, b, c: ") (terpri);a, b, c - global variables
(princ "a = ") (setq a (read))
(princ "b = ") (setq b (read))
(princ "c = ") (setq c (read))
(princ "Results:")
(solves)
)

(defun square(x) (* x x))

(defun delta() (- (* b b) (* 4 a c) ))

(defun checkDelta()

    (if (> (delta) 0) T nil)
)

(defun solves()
   (if (checkDelta) (list (x1) (x2)) "DELTA is less than ZERO - no roots")
)

;Finds x1 the first root of the ecuation
(defun x1()
 (/ (- (- b) (sqrt (delta))) (* 2 a)) 
)

;Finds x2 the second root of the ecuation
(defun x2()
 (/ (+ (- b) (sqrt (delta))) (* 2 a)) 
)

;Check Palindrom
(defun palindrome()
 (format t "Enter the string")
 (setf x (read) y (reverse x))
 (if (equal x y) (format t "Palindrom") (format t "Not Palindrom"))  
)
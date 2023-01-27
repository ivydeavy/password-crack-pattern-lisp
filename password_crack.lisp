(defvar *characters* '(#\A #\B #\C #\D #\E #\F #\G #\H #\I #\J #\K #\L #\M #\N #\O #\P #\Q #\R #\S #\T #\U #\V #\W #\X #\Y #\Z #\space #\\ #\` #\~ #\! #\@ #\# #\$ #\% #\^ #\& #\* #\( #\) #\- #\_ #\+ #\* #\/ #\{ #\} #\[ #\] #\: #\; #\" #\' #\< #\, #\. #\> #\? #\/ ))

(defparameter string-found "")

(defun loop-through(string)
(setq string-length (length string))
(dotimes (i string-length)
(dolist (j *characters*) 
(progn
(sleep (* 0.025))
(print (format nil "~{~a~}" (list string-found j)))
(if (equal j (aref string i))
(progn 
(setq string-found (format nil "~{~a~}" 
(list string-found j)))
(print string-found)
(return))))))
(setq string-found "")
(main))


(defun main()
(print "Annyeong! Welcome to LISP Crack Password Pattern!")
(print "Made by Deepraj")
(print "Enter string: ")
(loop-through (string-upcase (read))))

(main)
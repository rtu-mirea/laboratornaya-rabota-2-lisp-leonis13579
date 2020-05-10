(defun read-file (fileName)
    (let ((in (open fileName :if-does-not-exist nil)))
    (when in
        (loop for line = (read-line in nil)
            while line do (format t "~a~%" line))
        (close in)))
)


(print (read-file "test.txt"))
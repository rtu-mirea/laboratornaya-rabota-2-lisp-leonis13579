(defun compress (seq &optional (c 1))
  (cond
    ((null seq) nil)
    ((eq (car seq) (cadr seq)) (compress (cdr seq) (1+ c)))
    ((> c 1) (cons (cons (car seq) (list c)) (compress (cdr seq))))
    (t (cons (car seq) (compress (cdr seq))))))
 

(defun decompress (lst &optional (c 0))
  (cond
    ((null lst) nil)
    ((atom (car lst)) (cons (car lst) (decompress (cdr lst))))
    ((if (< c (cadar lst))
         (cons (caar lst) (decompress lst (1+ c)))
         (decompress (cdr lst))))))
 
(print (compress '(1 1 1 2 2 2 2 2 3 4 4 5 2 2 2 1 1 a a a b b c c c c c d e e e e)))
(print (decompress '((1 5) 1 3 4 (4 2) (a 2) (b 4) c d (e 6))))
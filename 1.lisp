(defconstant MyList (list 5 16 72 45 35 44 80 15 3 85 13))

(defun insert 
    (X N LST)   
    (cond 
        (
            (NULL LST) 
            (cons X LST))      
        (
            (eq N 1) 
            (cons X LST))      
        (T 
            (cons 
                (car LST)            
                (insert X 
                    (- N 1)               
                    (CDR LST)            
                )         
            )      
        )   
    )
)
(defun delete (N LST)   
    (COND ((EQ N 1) (CDR LST))      
        (T (CONS (CAR LST)            
            (DELETE (- N 1) (CDR LST))
            )
        )
    )
)
(defun search (N list)
   (cond ((eq list nil) "НЕ НАЙДЕН!")
        ((eq (car list) N) "НАЙДЕН!")
        (t (search N (cdr list)))   
    )
)

(print (insert 152 5 MyList))

(print (delete 6 MyList))

(print (search 213 MyList))

(print (search 6 MyList))
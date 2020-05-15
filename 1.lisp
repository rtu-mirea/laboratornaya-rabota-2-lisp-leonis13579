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
(defun del (N LST)   
    (COND ((EQ N 1) (CDR LST))      
        (T (CONS (CAR LST)            
            (DEL (- N 1) (CDR LST))
            )
        )
    )
)
(defun sch (N obj)
   (cond ((eq obj nil) "НЕ НАЙДЕН!")
        ((eq (car obj) N) "НАЙДЕН!")
        (t (sch N (cdr obj)))   
    )
)

(print (insert 152 5 MyList))

(print (del 6 MyList))

(print (sch 213 MyList))

(print (sch 6 MyList))
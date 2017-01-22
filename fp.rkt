

;program to reverse given list

;define the function to reverse the list named reverse_general
;parameter: L (a list)
(DEFINE (reverse_general L)
         (COND
            ;check when L is empty then just return L  
            ((NULL? L)
                L
            )
            ;if the first value in the list is a list then apply reverse to that list as well
            ((LIST? (CAR L))
              

                (append (reverse_general (CDR L)) (list (reverse_general (CAR L))))
            )
        )  
)
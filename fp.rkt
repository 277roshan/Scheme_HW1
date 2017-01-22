

;program to reverse given list

;define the function to reverse the list named reverse-general
;parameter: L (a list)
(DEFINE (reverse-general L)
         (COND
            ;check when L is empty then just return L  
            ((NULL? L)
                L
            )
            ;if the first value in the list is a list then apply reverse to that list as well
            ((LIST? (CAR L))
                (append (reverse-general (CDR L)) (list (reverse-general (CAR L))))
            )
            ;if the CAR value is not list then we can append it and recurse on remaining list
            (ELSE
                 (append  (reverse-general (CDR L)) (list (CAR L)))
            )
        )  
)

;program to perform addition of elements inside list
;we ignore non numeric values
;we ignore the list inside list

;define the function sum-up-numbers-simple
(DEFINE(sum-up-numbers-simple L)

       (COND
           ;if list is null then just return ) to be added to the sum 
           ((NULL? L)
                0
            )

         
       )



)

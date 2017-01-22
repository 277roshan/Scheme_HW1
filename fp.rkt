

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
           ;if list is null then just return 0 to be added to the sum 
           ((NULL? L)
                0
            )
           ;if value we get from car is a list then we just add 0 and recurse on rest of the list
           ((LIST? (CAR L))
               (+ 0 (sum-up-numbers-simple (CDR L)))
           )

           ;if value we get from car is a number then add that value and recurse on rest of the list
           ((NUMBER? (CAR L))
               (+ (CAR L) (sum-up-numbers-simple (CDR L)))
           )
           ;in other cases just add 0 and recurse on rest of the list
           (ELSE
               (+ 0 (sum-up-numbers-simple (CDR L)))
           )

         
       )



)

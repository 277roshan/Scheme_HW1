;author: Roshan Thapaliya
;email: roshanthapalia@gmail.com

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

;program to perform addition of elements inside list
;we ignore non numeric values
;we add up the values in list inside of list(nested lists)

;define the function sum-up-numbers-general
(DEFINE(sum-up-numbers-general L)
       (COND
           ;if list is null then just return 0 to be added to the sum 
           ((NULL? L)
                0
            )
           ;if value we get from car is a list then we recurse on the inner list and also recurse on rest of the list
           ((LIST? (CAR L))
               (+ (sum-up-numbers-general (CAR L)) (sum-up-numbers-general (CDR L)))
           )
           ;if value we get from car is a number then add that value and recurse on rest of the list
           ((NUMBER? (CAR L))
               (+ (CAR L) (sum-up-numbers-general (CDR L)))
           )
           ;in other cases just add 0 and recurse on rest of the list
           (ELSE
               (+ 0 (sum-up-numbers-general (CDR L)))
           )
       )
)

;helper function find minimum in a list
(DEFINE(minimum L)
       (COND
           ;if the list is null just return False to indicate absence of minimum
           ((NULL? L)
                #F
            )

           ;if CDR list is null then just return #F 
           ((NULL? (CDR L))
                (COND
                    ((NUMBER? (CAR L))
                
                         (CAR L)
                     )
                    (ELSE
                        #F
                    )
                ) 
            )

           ;if the first element is number and the second is not a number but letter
           ((AND (NUMBER? (CAR L)) (NOT(NUMBER? (CAR(CDR L)))))
               
               (COND
                   ;check_until_number to see if there is a number afterwards
                   ; not found then just return CAR L
                   ((NOT (check_until_number (CDR L)))
                       (CAR L)
                       
                   )
                   ;in else case call min on car L and recursive call on rest of list
                   (ELSE
                        
                        (MIN (CAR L) (minimum (CDR L))) 
       
                   )
               )

           )
       )
)


;helper function to find until we find the first number in the list
(DEFINE(check_until_number L)
       (COND
            ((NULL? L)
               #F
             )
            ((NUMBER? (CAR L))
               #T
            )
            (ELSE
            (check_until_number(CDR L))
            )
        )

)


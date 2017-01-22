

;program to reverse given list

;define the function to reverse the list named reverse_general
;parameter: L (a list)
(DEFINE (reverse_general L)
         (COND
            ;check when L is empty then just return L  
            ((NULL? L)
                L
            )
        )  
)
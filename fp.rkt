

;program to reverse given list

;define the function to reverse the list named reverse_general
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


;testing the cases
(reverse-general '())
(reverse-general '(a b c))
(reverse-general '(a b ()))
(reverse-general '((a b c)))
(reverse-general '((a b c) (d e f)))
(reverse-general '(a (b c) ((d e) f) g))
(reverse-general '(1 (2 3) (4 (a (b (c d))))))


;()
;(c b a)
;(() b a)
;((c b a))
;((f e d) (c b a))
;(g (f (e d)) (c b) a)
;(((((d c) b) a) 4) (3 2) 1)


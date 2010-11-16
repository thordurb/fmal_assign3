;fmal Forritnarverkefni 3

;1.a
(define (lessthan list y)
  (cond
    ((null? list)
        '())
    ((< (car list) y)
     (cons(car list)(lessthan(cdr list) y)))
    (else
     (lessthan(cdr list) y))
  )
)

(lessthan '(1 5 3 2 4) 3)

;1.b
(define (duplicate x)
  (cond
     ((null? x)
      '())
     (else
      (cons(car x)
           (cons(car x)
                (duplicate(CDR x))
                )
           
           )
     )
  )
)

(duplicate '(1 2 3 4))


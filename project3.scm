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

(define (duplicate x)
  (if(null? list)
     '()
     (cons(CAR x)
          (cons(CAR x)
               (duplicate(CDR x))
          )
     )
  )
)

(duplicate '(1 2 3 4))



(define (delete list i)
  (COND ((< (length list) i)
         (cons (CAR list) (CDR list)))
        ((equal? 1 i)
         (CDR list))
        (else
         (cons (CAR list)(delete (CDR list)(- i 1))))
  )
)

  (delete '(1 2) 3)
  (delete '(1 2 3 4 5) 3)
;fmal Forritnarverkefni 3
;Nemendur: Arnor Barkarson & Thordur B. Arnarson
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

;1.c
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

;1.d
(define (comp f g)(lambda(x)(f(g x))))

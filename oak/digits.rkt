#lang racket

(provide integer->chars integer->string integer->digits
         digits->integer)

(define DIGITS
  '(#\0 #\1 #\2 #\3 #\4 #\5 #\6 #\7 #\8 #\9
    #\a #\b #\c #\d #\e #\f #\g
    #\h #\i #\j #\k #\l #\m #\n
    #\o #\p #\q #\r #\s #\t
    #\u #\v #\w #\x #\y #\z))

(define DIGITS-MAP
  (let ([map (make-hash)])
    (for ([c DIGITS]
          [i (in-naturals)])
      (hash-set! map c i))
    map))

(define (integer->chars num [radix 10])
  (let run ([s '()] [q num])
    (cond
     [(= q 0) (if (empty? s) '(#\0) s)]
     [else (let-values ([(x y) (quotient/remainder q radix)])
             (run (cons (list-ref DIGITS y) s) x))])))

(define (integer->string num [radix 10])
  (list->string (integer->chars num radix)))

(define (integer->digits num [radix 10])
  (map (lambda (x) (hash-ref DIGITS-MAP x))
       (integer->chars num radix)))

(define (digits->integer digits [radix 10])
  (foldl (lambda (x y) (+ x (* radix y))) 0 digits))
